package com.twitter.sdk.android.core.models;

import com.google.gson.C15965f;
import com.google.gson.p399a.C15950a;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.util.List;
import proguard.optimize.gson.C21025a;
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

    public /* synthetic */ void fromJson$36(C15965f c15965f, JsonReader jsonReader, _OptimizedJsonReader _optimizedjsonreader) {
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            fromJsonField$36(c15965f, jsonReader, _optimizedjsonreader.mo123b(jsonReader));
        }
        jsonReader.endObject();
    }

    protected /* synthetic */ void fromJsonField$36(C15965f c15965f, JsonReader jsonReader, int i) {
        boolean z = jsonReader.peek() != JsonToken.NULL;
        if (i != 74) {
            jsonReader.skipValue();
        } else if (z) {
            this.errors = (List) c15965f.m7977a((C15950a) new ApiErrorserrorsTypeToken()).read(jsonReader);
        } else {
            this.errors = null;
            jsonReader.nextNull();
        }
    }

    public /* synthetic */ void toJson$36(C15965f c15965f, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
        jsonWriter.beginObject();
        toJsonBody$36(c15965f, jsonWriter, _optimizedjsonwriter);
        jsonWriter.endObject();
    }

    protected /* synthetic */ void toJsonBody$36(C15965f c15965f, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
        if (this != this.errors) {
            _optimizedjsonwriter.mo120b(jsonWriter, 74);
            ApiErrorserrorsTypeToken apiErrorserrorsTypeToken = new ApiErrorserrorsTypeToken();
            List<ApiError> list = this.errors;
            C21025a.m118a(c15965f, apiErrorserrorsTypeToken, list).write(jsonWriter, list);
        }
    }
}
