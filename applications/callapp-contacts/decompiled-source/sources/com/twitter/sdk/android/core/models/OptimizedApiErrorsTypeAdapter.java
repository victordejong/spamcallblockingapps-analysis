package com.twitter.sdk.android.core.models;

import com.google.gson.f;
import com.google.gson.j;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
import proguard.optimize.gson.b;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/models/OptimizedApiErrorsTypeAdapter.class */
public class OptimizedApiErrorsTypeAdapter extends j implements b {
    private f gson;
    private _OptimizedJsonReader optimizedJsonReader;
    private _OptimizedJsonWriter optimizedJsonWriter;

    public OptimizedApiErrorsTypeAdapter(f fVar, _OptimizedJsonReader _optimizedjsonreader, _OptimizedJsonWriter _optimizedjsonwriter) {
        this.gson = fVar;
        this.optimizedJsonReader = _optimizedjsonreader;
        this.optimizedJsonWriter = _optimizedjsonwriter;
    }

    @Override // com.google.gson.j
    public Object read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.skipValue();
            return null;
        }
        ApiErrors apiErrors = new ApiErrors();
        apiErrors.fromJson$36(this.gson, jsonReader, this.optimizedJsonReader);
        return apiErrors;
    }

    @Override // com.google.gson.j
    public void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
        } else {
            ((ApiErrors) obj).toJson$36(this.gson, jsonWriter, this.optimizedJsonWriter);
        }
    }
}
