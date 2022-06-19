package com.amazonaws.services.p101s3.model;

import com.google.gson.C15965f;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.Serializable;
import java.util.EnumSet;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
/* renamed from: com.amazonaws.services.s3.model.LambdaConfiguration */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/LambdaConfiguration.class */
public class LambdaConfiguration extends NotificationConfiguration implements Serializable {
    private String functionARN;

    public /* synthetic */ LambdaConfiguration() {
    }

    public LambdaConfiguration(String str, EnumSet<S3Event> enumSet) {
        super(enumSet);
        this.functionARN = str;
    }

    public LambdaConfiguration(String str, String... strArr) {
        super(strArr);
        this.functionARN = str;
    }

    public /* synthetic */ void fromJson$37(C15965f c15965f, JsonReader jsonReader, _OptimizedJsonReader _optimizedjsonreader) {
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            fromJsonField$37(c15965f, jsonReader, _optimizedjsonreader.mo123b(jsonReader));
        }
        jsonReader.endObject();
    }

    protected /* synthetic */ void fromJsonField$37(C15965f c15965f, JsonReader jsonReader, int i) {
        boolean z = jsonReader.peek() != JsonToken.NULL;
        if (i != 58) {
            fromJsonField$10(c15965f, jsonReader, i);
        } else if (!z) {
            this.functionARN = null;
            jsonReader.nextNull();
        } else if (jsonReader.peek() != JsonToken.BOOLEAN) {
            this.functionARN = jsonReader.nextString();
        } else {
            this.functionARN = Boolean.toString(jsonReader.nextBoolean());
        }
    }

    public String getFunctionARN() {
        return this.functionARN;
    }

    public /* synthetic */ void toJson$37(C15965f c15965f, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
        jsonWriter.beginObject();
        toJsonBody$37(c15965f, jsonWriter, _optimizedjsonwriter);
        jsonWriter.endObject();
    }

    protected /* synthetic */ void toJsonBody$37(C15965f c15965f, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
        if (this != this.functionARN) {
            _optimizedjsonwriter.mo120b(jsonWriter, 58);
            jsonWriter.value(this.functionARN);
        }
        toJsonBody$10(c15965f, jsonWriter, _optimizedjsonwriter);
    }
}
