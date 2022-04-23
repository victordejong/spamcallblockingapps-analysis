package com.amazonaws.services.s3.model;

import com.google.gson.a.a;
import com.google.gson.f;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/NotificationConfiguration.class */
public abstract class NotificationConfiguration {
    private Filter filter;
    private Set<String> events = new HashSet();
    @Deprecated
    private List<String> objectPrefixes = new ArrayList();

    public NotificationConfiguration() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public NotificationConfiguration(EnumSet<S3Event> enumSet) {
        if (enumSet != null) {
            Iterator it2 = enumSet.iterator();
            while (it2.hasNext()) {
                this.events.add(((S3Event) it2.next()).toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public NotificationConfiguration(String... strArr) {
        if (strArr != null) {
            for (String str : strArr) {
                this.events.add(str);
            }
        }
    }

    public void addEvent(S3Event s3Event) {
        this.events.add(s3Event.toString());
    }

    public void addEvent(String str) {
        this.events.add(str);
    }

    @Deprecated
    public void addObjectPrefix(String str) {
        this.objectPrefixes.add(str);
    }

    public /* synthetic */ void fromJson$10(f fVar, JsonReader jsonReader, _OptimizedJsonReader _optimizedjsonreader) {
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            fromJsonField$10(fVar, jsonReader, _optimizedjsonreader.b(jsonReader));
        }
        jsonReader.endObject();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public /* synthetic */ void fromJsonField$10(f fVar, JsonReader jsonReader, int i) {
        boolean z = jsonReader.peek() != JsonToken.NULL;
        if (i != 13) {
            if (i != 44) {
                if (i != 54) {
                    jsonReader.skipValue();
                } else if (z) {
                    this.objectPrefixes = (List) fVar.a((a) new NotificationConfigurationobjectPrefixesTypeToken()).read(jsonReader);
                } else {
                    this.objectPrefixes = null;
                    jsonReader.nextNull();
                }
            } else if (z) {
                this.filter = (Filter) fVar.a(Filter.class).read(jsonReader);
            } else {
                this.filter = null;
                jsonReader.nextNull();
            }
        } else if (z) {
            this.events = (Set) fVar.a((a) new NotificationConfigurationeventsTypeToken()).read(jsonReader);
        } else {
            this.events = null;
            jsonReader.nextNull();
        }
    }

    public Set<String> getEvents() {
        return this.events;
    }

    public Filter getFilter() {
        return this.filter;
    }

    @Deprecated
    public List<String> getObjectPrefixes() {
        return this.objectPrefixes;
    }

    public void setEvents(Set<String> set) {
        this.events = set;
    }

    public void setFilter(Filter filter) {
        this.filter = filter;
    }

    @Deprecated
    public void setObjectPrefixes(List<String> list) {
        this.objectPrefixes = list;
    }

    public /* synthetic */ void toJson$10(f fVar, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
        jsonWriter.beginObject();
        toJsonBody$10(fVar, jsonWriter, _optimizedjsonwriter);
        jsonWriter.endObject();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public /* synthetic */ void toJsonBody$10(f fVar, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
        if (this != this.events) {
            _optimizedjsonwriter.b(jsonWriter, 13);
            NotificationConfigurationeventsTypeToken notificationConfigurationeventsTypeToken = new NotificationConfigurationeventsTypeToken();
            Set<String> set = this.events;
            proguard.optimize.gson.a.a(fVar, notificationConfigurationeventsTypeToken, set).write(jsonWriter, set);
        }
        if (this != this.objectPrefixes) {
            _optimizedjsonwriter.b(jsonWriter, 54);
            NotificationConfigurationobjectPrefixesTypeToken notificationConfigurationobjectPrefixesTypeToken = new NotificationConfigurationobjectPrefixesTypeToken();
            List<String> list = this.objectPrefixes;
            proguard.optimize.gson.a.a(fVar, notificationConfigurationobjectPrefixesTypeToken, list).write(jsonWriter, list);
        }
        if (this != this.filter) {
            _optimizedjsonwriter.b(jsonWriter, 44);
            Filter filter = this.filter;
            proguard.optimize.gson.a.a(fVar, Filter.class, filter).write(jsonWriter, filter);
        }
    }

    public NotificationConfiguration withEvents(Set<String> set) {
        this.events.clear();
        this.events.addAll(set);
        return this;
    }

    public NotificationConfiguration withFilter(Filter filter) {
        setFilter(filter);
        return this;
    }

    @Deprecated
    public NotificationConfiguration withObjectPrefixes(String... strArr) {
        this.objectPrefixes.clear();
        if (strArr != null && strArr.length > 0) {
            this.objectPrefixes.addAll(Arrays.asList(strArr));
        }
        return this;
    }
}
