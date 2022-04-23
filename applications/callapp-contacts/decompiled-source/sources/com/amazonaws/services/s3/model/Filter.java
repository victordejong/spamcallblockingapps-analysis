package com.amazonaws.services.s3.model;

import com.google.gson.f;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.Serializable;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
import proguard.optimize.gson.a;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/Filter.class */
public class Filter implements Serializable {
    private S3KeyFilter s3KeyFilter;

    public /* synthetic */ void fromJson$13(f fVar, JsonReader jsonReader, _OptimizedJsonReader _optimizedjsonreader) {
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            fromJsonField$13(fVar, jsonReader, _optimizedjsonreader.b(jsonReader));
        }
        jsonReader.endObject();
    }

    protected /* synthetic */ void fromJsonField$13(f fVar, JsonReader jsonReader, int i) {
        boolean z = jsonReader.peek() != JsonToken.NULL;
        if (i != 93) {
            jsonReader.skipValue();
        } else if (z) {
            this.s3KeyFilter = (S3KeyFilter) fVar.a(S3KeyFilter.class).read(jsonReader);
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

    public /* synthetic */ void toJson$13(f fVar, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
        jsonWriter.beginObject();
        toJsonBody$13(fVar, jsonWriter, _optimizedjsonwriter);
        jsonWriter.endObject();
    }

    protected /* synthetic */ void toJsonBody$13(f fVar, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
        if (this != this.s3KeyFilter) {
            _optimizedjsonwriter.b(jsonWriter, 93);
            S3KeyFilter s3KeyFilter = this.s3KeyFilter;
            a.a(fVar, S3KeyFilter.class, s3KeyFilter).write(jsonWriter, s3KeyFilter);
        }
    }

    public Filter withS3KeyFilter(S3KeyFilter s3KeyFilter) {
        setS3KeyFilter(s3KeyFilter);
        return this;
    }
}
