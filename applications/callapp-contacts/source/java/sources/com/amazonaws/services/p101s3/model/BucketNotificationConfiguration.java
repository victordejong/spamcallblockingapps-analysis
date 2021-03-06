package com.amazonaws.services.p101s3.model;

import com.google.gson.C15965f;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
/* renamed from: com.amazonaws.services.s3.model.BucketNotificationConfiguration */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/BucketNotificationConfiguration.class */
public class BucketNotificationConfiguration implements Serializable {
    private Map<String, NotificationConfiguration> configurations;

    @Deprecated
    /* renamed from: com.amazonaws.services.s3.model.BucketNotificationConfiguration$TopicConfiguration */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/BucketNotificationConfiguration$TopicConfiguration.class */
    public static class TopicConfiguration extends com.amazonaws.services.p101s3.model.TopicConfiguration {
        public /* synthetic */ TopicConfiguration() {
        }

        public TopicConfiguration(String str, String str2) {
            super(str, str2);
        }

        public /* synthetic */ void fromJson$27(C15965f c15965f, JsonReader jsonReader, _OptimizedJsonReader _optimizedjsonreader) {
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                fromJsonField$27(c15965f, jsonReader, _optimizedjsonreader.mo123b(jsonReader));
            }
            jsonReader.endObject();
        }

        protected /* synthetic */ void fromJsonField$27(C15965f c15965f, JsonReader jsonReader, int i) {
            fromJsonField$24(c15965f, jsonReader, i);
        }

        @Deprecated
        public String getEvent() {
            Set<String> events = getEvents();
            return ((String[]) events.toArray(new String[events.size()]))[0];
        }

        public String getTopic() {
            return getTopicARN();
        }

        public /* synthetic */ void toJson$27(C15965f c15965f, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
            jsonWriter.beginObject();
            toJsonBody$27(c15965f, jsonWriter, _optimizedjsonwriter);
            jsonWriter.endObject();
        }

        protected /* synthetic */ void toJsonBody$27(C15965f c15965f, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
            toJsonBody$24(c15965f, jsonWriter, _optimizedjsonwriter);
        }

        public String toString() {
            return new C15965f().m7962b(this);
        }
    }

    public BucketNotificationConfiguration() {
        this.configurations = null;
        this.configurations = new HashMap();
    }

    public BucketNotificationConfiguration(String str, NotificationConfiguration notificationConfiguration) {
        this.configurations = null;
        this.configurations = new HashMap();
        addConfiguration(str, notificationConfiguration);
    }

    @Deprecated
    public BucketNotificationConfiguration(Collection<TopicConfiguration> collection) {
        this.configurations = null;
        this.configurations = new HashMap();
        if (collection != null) {
            for (TopicConfiguration topicConfiguration : collection) {
                addConfiguration(UUID.randomUUID().toString(), topicConfiguration);
            }
        }
    }

    public BucketNotificationConfiguration addConfiguration(String str, NotificationConfiguration notificationConfiguration) {
        this.configurations.put(str, notificationConfiguration);
        return this;
    }

    public NotificationConfiguration getConfigurationByName(String str) {
        return this.configurations.get(str);
    }

    public Map<String, NotificationConfiguration> getConfigurations() {
        return this.configurations;
    }

    @Deprecated
    public List<TopicConfiguration> getTopicConfigurations() {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, NotificationConfiguration> entry : this.configurations.entrySet()) {
            if (entry.getValue() instanceof TopicConfiguration) {
                arrayList.add((TopicConfiguration) entry.getValue());
            }
        }
        return arrayList;
    }

    public NotificationConfiguration removeConfiguration(String str) {
        return this.configurations.remove(str);
    }

    public void setConfigurations(Map<String, NotificationConfiguration> map) {
        this.configurations = map;
    }

    @Deprecated
    public void setTopicConfigurations(Collection<TopicConfiguration> collection) {
        this.configurations.clear();
        if (collection != null) {
            for (TopicConfiguration topicConfiguration : collection) {
                addConfiguration(UUID.randomUUID().toString(), topicConfiguration);
            }
        }
    }

    public String toString() {
        return new C15965f().m7962b(getConfigurations());
    }

    public BucketNotificationConfiguration withNotificationConfiguration(Map<String, NotificationConfiguration> map) {
        this.configurations.clear();
        this.configurations.putAll(map);
        return this;
    }

    @Deprecated
    public BucketNotificationConfiguration withTopicConfigurations(TopicConfiguration... topicConfigurationArr) {
        setTopicConfigurations(Arrays.asList(topicConfigurationArr));
        return this;
    }
}
