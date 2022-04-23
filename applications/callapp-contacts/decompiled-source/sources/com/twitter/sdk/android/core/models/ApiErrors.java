package com.twitter.sdk.android.core.models;

import com.google.gson.a.a;
import com.google.gson.f;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.util.List;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/models/ApiErrors.class */
public class ApiErrors {
    public List<ApiError> errors;

    public ApiErrors() {
        this(null);
    }

    public ApiErrors(List<ApiError> list) {
        this.errors = ModelUtils.getSafeList(list);
    }

    public /* synthetic */ void fromJson$36(f fVar, JsonReader jsonReader, _OptimizedJsonReader _optimizedjsonreader) {
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            fromJsonField$36(fVar, jsonReader, _optimizedjsonreader.b(jsonReader));
        }
        jsonReader.endObject();
    }

    protected /* synthetic */ void fromJsonField$36(f fVar, JsonReader jsonReader, int i) {
        boolean z = jsonReader.peek() != JsonToken.NULL;
        if (i != 74) {
            jsonReader.skipValue();
        } else if (z) {
            this.errors = (List) fVar.a((a) new ApiErrorserrorsTypeToken()).read(jsonReader);
        } else {
            this.errors = null;
            jsonReader.nextNull();
        }
    }

    public /* synthetic */ void toJson$36(f fVar, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
        jsonWriter.beginObject();
        toJsonBody$36(fVar, jsonWriter, _optimizedjsonwriter);
        jsonWriter.endObject();
    }

    protected /* synthetic */ void toJsonBody$36(f fVar, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
        if (this != this.errors) {
            _optimizedjsonwriter.b(jsonWriter, 74);
            ApiErrorserrorsTypeToken apiErrorserrorsTypeToken = new ApiErrorserrorsTypeToken();
            List<ApiError> list = this.errors;
            proguard.optimize.gson.a.a(fVar, apiErrorserrorsTypeToken, list).write(jsonWriter, list);
        }
    }
}
