package com.amazonaws.services.p101s3.model;

import com.google.gson.C15965f;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.Serializable;
import proguard.optimize.gson.C21025a;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
/* renamed from: com.amazonaws.services.s3.model.Filter */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/Filter.class */
public class Filter implements Serializable {
    private S3KeyFilter s3KeyFilter;

    public /* synthetic */ void fromJson$13(C15965f c15965f, JsonReader jsonReader, _OptimizedJsonReader _optimizedjsonreader) {
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            fromJsonField$13(c15965f, jsonReader, _optimizedjsonreader.mo123b(jsonReader));
        }
        jsonReader.endObject();
    }

    protected /* synthetic */ void fromJsonField$13(C15965f c15965f, JsonReader jsonReader, int i) {
        boolean z = jsonReader.peek() != JsonToken.NULL;
        if (i != 93) {
            jsonReader.skipValue();
        } else if (z) {
            this.s3KeyFilter = (S3KeyFilter) c15965f.m7971a(S3KeyFilter.class).read(jsonReader);
        } else {
            this.s3KeyFilter = null;
            jsonReader.nextNull();
        }
    }

    public S3KeyFilter getS3KeyFilter() {
        return this.s3KeyFilter;
    }

    public void setS3KeyFilter(S3KeyFilter s3KeyFilter) {
        this.s3KeyFilter = s3KeyFilter;
    }

    public /* synthetic */ void toJson$13(C15965f c15965f, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
        jsonWriter.beginObject();
        toJsonBody$13(c15965f, jsonWriter, _optimizedjsonwriter);
        jsonWriter.endObject();
    }

    protected /* synthetic */ void toJsonBody$13(C15965f c15965f, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
        if (this != this.s3KeyFilter) {
            _optimizedjsonwriter.mo120b(jsonWriter, 93);
            S3KeyFilter s3KeyFilter = this.s3KeyFilter;
            C21025a.m117a(c15965f, S3KeyFilter.class, s3KeyFilter).write(jsonWriter, s3KeyFilter);
        }
    }

    public Filter withS3KeyFilter(S3KeyFilter s3KeyFilter) {
        setS3KeyFilter(s3KeyFilter);
        return this;
    }
}
