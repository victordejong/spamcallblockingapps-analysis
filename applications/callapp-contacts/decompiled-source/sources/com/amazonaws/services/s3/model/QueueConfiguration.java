package com.amazonaws.services.s3.model;

import com.google.gson.f;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.Serializable;
import java.util.EnumSet;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/QueueConfiguration.class */
public class QueueConfiguration extends NotificationConfiguration implements Serializable {
    private String queueARN;

    public QueueConfiguration() {
    }

    public QueueConfiguration(String str, EnumSet<S3Event> enumSet) {
        super(enumSet);
        this.queueARN = str;
    }

    public QueueConfiguration(String str, String... strArr) {
        super(strArr);
        this.queueARN = str;
    }

    public /* synthetic */ void fromJson$20(f fVar, JsonReader jsonReader, _OptimizedJsonReader _optimizedjsonreader) {
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            fromJsonField$20(fVar, jsonReader, _optimizedjsonreader.b(jsonReader));
        }
        jsonReader.endObject();
    }

    protected /* synthetic */ void fromJsonField$20(f fVar, JsonReader jsonReader, int i) {
        boolean z = jsonReader.peek() != JsonToken.NULL;
        if (i != 9) {
            fromJsonField$10(fVar, jsonReader, i);
        } else if (!z) {
            this.queueARN = null;
            jsonReader.nextNull();
        } else if (jsonReader.peek() != JsonToken.BOOLEAN) {
            this.queueARN = jsonReader.nextString();
        } else {
            this.queueARN = Boolean.toString(jsonReader.nextBoolean());
        }
    }

    public String getQueueARN() {
        return this.queueARN;
    }

    public void setQueueARN(String str) {
        this.queueARN = str;
    }

    public /* synthetic */ void toJson$20(f fVar, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
        jsonWriter.beginObject();
        toJsonBody$20(fVar, jsonWriter, _optimizedjsonwriter);
        jsonWriter.endObject();
    }

    protected /* synthetic */ void toJsonBody$20(f fVar, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
        if (this != this.queueARN) {
            _optimizedjsonwriter.b(jsonWriter, 9);
            jsonWriter.value(this.queueARN);
        }
        toJsonBody$10(fVar, jsonWriter, _optimizedjsonwriter);
    }

    public QueueConfiguration withQueueARN(String str) {
        setQueueARN(str);
        return this;
    }
}
