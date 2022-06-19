package com.amazonaws.services.p101s3.model;

import com.google.gson.C15965f;
import com.google.gson.p399a.C15950a;
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
import proguard.optimize.gson.C21025a;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
/* renamed from: com.amazonaws.services.s3.model.NotificationConfiguration */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/NotificationConfiguration.class */
public abstract class NotificationConfiguration {
    private Filter filter;
    private Set<String> events = new HashSet();
    @Deprecated
    private List<String> objectPrefixes = new ArrayList();

    public NotificationConfiguration() {
    }

    public NotificationConfiguration(EnumSet<S3Event> enumSet) {
        if (enumSet != null) {
            Iterator it2 = enumSet.iterator();
            while (it2.hasNext()) {
                this.events.add(((S3Event) it2.next()).toString());
            }
        }
    }

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

    public /* synthetic */ void fromJson$10(C15965f c15965f, JsonReader jsonReader, _OptimizedJsonReader _optimizedjsonreader) {
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            fromJsonField$10(c15965f, jsonReader, _optimizedjsonreader.mo123b(jsonReader));
        }
        jsonReader.endObject();
    }

    public /* synthetic */ void fromJsonField$10(C15965f c15965f, JsonReader jsonReader, int i) {
        boolean z = jsonReader.peek() != JsonToken.NULL;
        if (i == 13) {
            if (z) {
                this.events = (Set) c15965f.m7977a((C15950a) new NotificationConfigurationeventsTypeToken()).read(jsonReader);
                return;
            }
            this.events = null;
            jsonReader.nextNull();
        } else if (i == 44) {
            if (z) {
                this.filter = (Filter) c15965f.m7971a(Filter.class).read(jsonReader);
                return;
            }
            this.filter = null;
            jsonReader.nextNull();
        } else if (i != 54) {
            jsonReader.skipValue();
        } else if (z) {
            this.objectPrefixes = (List) c15965f.m7977a((C15950a) new NotificationConfigurationobjectPrefixesTypeToken()).read(jsonReader);
        } else {
            this.objectPrefixes = null;
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

    public /* synthetic */ void toJson$10(C15965f c15965f, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
        jsonWriter.beginObject();
        toJsonBody$10(c15965f, jsonWriter, _optimizedjsonwriter);
        jsonWriter.endObject();
    }

    public /* synthetic */ void toJsonBody$10(C15965f c15965f, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
        if (this != this.events) {
            _optimizedjsonwriter.mo120b(jsonWriter, 13);
            NotificationConfigurationeventsTypeToken notificationConfigurationeventsTypeToken = new NotificationConfigurationeventsTypeToken();
            Set<String> set = this.events;
            C21025a.m118a(c15965f, notificationConfigurationeventsTypeToken, set).write(jsonWriter, set);
        }
        if (this != this.objectPrefixes) {
            _optimizedjsonwriter.mo120b(jsonWriter, 54);
            NotificationConfigurationobjectPrefixesTypeToken notificationConfigurationobjectPrefixesTypeToken = new NotificationConfigurationobjectPrefixesTypeToken();
            List<String> list = this.objectPrefixes;
            C21025a.m118a(c15965f, notificationConfigurationobjectPrefixesTypeToken, list).write(jsonWriter, list);
        }
        if (this != this.filter) {
            _optimizedjsonwriter.mo120b(jsonWriter, 44);
            Filter filter = this.filter;
            C21025a.m117a(c15965f, Filter.class, filter).write(jsonWriter, filter);
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
