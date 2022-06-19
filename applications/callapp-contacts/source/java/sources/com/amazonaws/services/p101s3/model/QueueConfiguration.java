package com.amazonaws.services.p101s3.model;

import com.google.gson.C15965f;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.Serializable;
import java.util.EnumSet;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
/* renamed from: com.amazonaws.services.s3.model.QueueConfiguration */
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

    public /* synthetic */ void fromJson$20(C15965f c15965f, JsonReader jsonReader, _OptimizedJsonReader _optimizedjsonreader) {
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            fromJsonField$20(c15965f, jsonReader, _optimizedjsonreader.mo123b(jsonReader));
        }
        jsonReader.endObject();
    }

    protected /* synthetic */ void fromJsonField$20(C15965f c15965f, JsonReader jsonReader, int i) {
        boolean z = jsonReader.peek() != JsonToken.NULL;
        if (i != 9) {
            fromJsonField$10(c15965f, jsonReader, i);
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

    public /* synthetic */ void toJson$20(C15965f c15965f, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
        jsonWriter.beginObject();
        toJsonBody$20(c15965f, jsonWriter, _optimizedjsonwriter);
        jsonWriter.endObject();
    }

    protected /* synthetic */ void toJsonBody$20(C15965f c15965f, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
        if (this != this.queueARN) {
            _optimizedjsonwriter.mo120b(jsonWriter, 9);
            jsonWriter.value(this.queueARN);
        }
        toJsonBody$10(c15965f, jsonWriter, _optimizedjsonwriter);
    }

    public QueueConfiguration withQueueARN(String str) {
        setQueueARN(str);
        return this;
    }
}
