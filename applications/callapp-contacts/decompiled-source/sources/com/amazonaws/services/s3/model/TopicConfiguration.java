package com.amazonaws.services.s3.model;

import com.google.gson.f;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.Serializable;
import java.util.EnumSet;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
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

    public /* synthetic */ void fromJson$24(f fVar, JsonReader jsonReader, _OptimizedJsonReader _optimizedjsonreader) {
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            fromJsonField$24(fVar, jsonReader, _optimizedjsonreader.b(jsonReader));
        }
        jsonReader.endObject();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public /* synthetic */ void fromJsonField$24(f fVar, JsonReader jsonReader, int i) {
        boolean z = jsonReader.peek() != JsonToken.NULL;
        if (i != 36) {
            fromJsonField$10(fVar, jsonReader, i);
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

    public /* synthetic */ void toJson$24(f fVar, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
        jsonWriter.beginObject();
        toJsonBody$24(fVar, jsonWriter, _optimizedjsonwriter);
        jsonWriter.endObject();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public /* synthetic */ void toJsonBody$24(f fVar, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
        if (this != this.topicARN) {
            _optimizedjsonwriter.b(jsonWriter, 36);
            jsonWriter.value(this.topicARN);
        }
        toJsonBody$10(fVar, jsonWriter, _optimizedjsonwriter);
    }

    public TopicConfiguration withTopicARN(String str) {
        setTopicARN(str);
        return this;
    }
}
