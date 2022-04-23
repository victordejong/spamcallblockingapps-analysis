package com.amazonaws.services.s3.model;

import com.google.gson.f;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.Serializable;
import java.util.EnumSet;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/CloudFunctionConfiguration.class */
public class CloudFunctionConfiguration extends NotificationConfiguration implements Serializable {
    private String cloudFunctionARN;
    private String invocationRoleARN;

    public /* synthetic */ CloudFunctionConfiguration() {
    }

    public CloudFunctionConfiguration(String str, String str2, EnumSet<S3Event> enumSet) {
        super(enumSet);
        this.invocationRoleARN = str;
        this.cloudFunctionARN = str2;
    }

    public CloudFunctionConfiguration(String str, String str2, String... strArr) {
        super(strArr);
        this.invocationRoleARN = str;
        this.cloudFunctionARN = str2;
    }

    public /* synthetic */ void fromJson$9(f fVar, JsonReader jsonReader, _OptimizedJsonReader _optimizedjsonreader) {
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            fromJsonField$9(fVar, jsonReader, _optimizedjsonreader.b(jsonReader));
        }
        jsonReader.endObject();
    }

    protected /* synthetic */ void fromJsonField$9(f fVar, JsonReader jsonReader, int i) {
        boolean z = jsonReader.peek() != JsonToken.NULL;
        if (i != 26) {
            if (i != 34) {
                fromJsonField$10(fVar, jsonReader, i);
            } else if (!z) {
                this.invocationRoleARN = null;
                jsonReader.nextNull();
            } else if (jsonReader.peek() != JsonToken.BOOLEAN) {
                this.invocationRoleARN = jsonReader.nextString();
            } else {
                this.invocationRoleARN = Boolean.toString(jsonReader.nextBoolean());
            }
        } else if (!z) {
            this.cloudFunctionARN = null;
            jsonReader.nextNull();
        } else if (jsonReader.peek() != JsonToken.BOOLEAN) {
            this.cloudFunctionARN = jsonReader.nextString();
        } else {
            this.cloudFunctionARN = Boolean.toString(jsonReader.nextBoolean());
        }
    }

    public String getCloudFunctionARN() {
        return this.cloudFunctionARN;
    }

    public String getInvocationRoleARN() {
        return this.invocationRoleARN;
    }

    public /* synthetic */ void toJson$9(f fVar, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
        jsonWriter.beginObject();
        toJsonBody$9(fVar, jsonWriter, _optimizedjsonwriter);
        jsonWriter.endObject();
    }

    protected /* synthetic */ void toJsonBody$9(f fVar, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
        if (this != this.invocationRoleARN) {
            _optimizedjsonwriter.b(jsonWriter, 34);
            jsonWriter.value(this.invocationRoleARN);
        }
        if (this != this.cloudFunctionARN) {
            _optimizedjsonwriter.b(jsonWriter, 26);
            jsonWriter.value(this.cloudFunctionARN);
        }
        toJsonBody$10(fVar, jsonWriter, _optimizedjsonwriter);
    }
}
