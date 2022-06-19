package com.amazonaws.services.p101s3.model;

import com.google.gson.C15965f;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.Serializable;
import java.util.EnumSet;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
/* renamed from: com.amazonaws.services.s3.model.TopicConfiguration */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/TopicConfiguration.class */
public class TopicConfiguration extends NotificationConfiguration implements Serializable {
    private String topicARN;

    public TopicConfiguration() {
    }

    public TopicConfiguration(String str, EnumSet<S3Event> enumSet) {
        super(enumSet);
        this.topicARN = str;
    }

    public TopicConfiguration(String str, String... strArr) {
        super(strArr);
        this.topicARN = str;
    }

    public /* synthetic */ void fromJson$24(C15965f c15965f, JsonReader jsonReader, _OptimizedJsonReader _optimizedjsonreader) {
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            fromJsonField$24(c15965f, jsonReader, _optimizedjsonreader.mo123b(jsonReader));
        }
        jsonReader.endObject();
    }

    public /* synthetic */ void fromJsonField$24(C15965f c15965f, JsonReader jsonReader, int i) {
        boolean z = jsonReader.peek() != JsonToken.NULL;
        if (i != 36) {
            fromJsonField$10(c15965f, jsonReader, i);
        } else if (!z) {
            this.topicARN = null;
            jsonReader.nextNull();
        } else if (jsonReader.peek() != JsonToken.BOOLEAN) {
            this.topicARN = jsonReader.nextString();
        } else {
            this.topicARN = Boolean.toString(jsonReader.nextBoolean());
        }
    }

    public String getTopicARN() {
        return this.topicARN;
    }

    public void setTopicARN(String str) {
        this.topicARN = str;
    }

    public /* synthetic */ void toJson$24(C15965f c15965f, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
        jsonWriter.beginObject();
        toJsonBody$24(c15965f, jsonWriter, _optimizedjsonwriter);
        jsonWriter.endObject();
    }

    public /* synthetic */ void toJsonBody$24(C15965f c15965f, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
        if (this != this.topicARN) {
            _optimizedjsonwriter.mo120b(jsonWriter, 36);
            jsonWriter.value(this.topicARN);
        }
        toJsonBody$10(c15965f, jsonWriter, _optimizedjsonwriter);
    }

    public TopicConfiguration withTopicARN(String str) {
        setTopicARN(str);
        return this;
    }
}
