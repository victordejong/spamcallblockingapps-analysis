package com.twitter.sdk.android.core.models;

import com.google.gson.JsonSyntaxException;
import com.google.gson.f;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/models/ApiError.class */
public class ApiError {
    public int code;
    public String message;

    public /* synthetic */ ApiError() {
    }

    public ApiError(String str, int i) {
        this.message = str;
        this.code = i;
    }

    public /* synthetic */ void fromJson$8(f fVar, JsonReader jsonReader, _OptimizedJsonReader _optimizedjsonreader) {
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            fromJsonField$8(fVar, jsonReader, _optimizedjsonreader.b(jsonReader));
        }
        jsonReader.endObject();
    }

    protected /* synthetic */ void fromJsonField$8(f fVar, JsonReader jsonReader, int i) {
        boolean z = jsonReader.peek() != JsonToken.NULL;
        if (i != 75) {
            if (i != 91) {
                jsonReader.skipValue();
            } else if (!z) {
                this.message = null;
                jsonReader.nextNull();
            } else if (jsonReader.peek() != JsonToken.BOOLEAN) {
                this.message = jsonReader.nextString();
            } else {
                this.message = Boolean.toString(jsonReader.nextBoolean());
            }
        } else if (z) {
            try {
                this.code = jsonReader.nextInt();
            } catch (NumberFormatException e) {
                throw new JsonSyntaxException(e);
            }
        } else {
            jsonReader.nextNull();
        }
    }

    public /* synthetic */ void toJson$8(f fVar, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
        jsonWriter.beginObject();
        toJsonBody$8(fVar, jsonWriter, _optimizedjsonwriter);
        jsonWriter.endObject();
    }

    protected /* synthetic */ void toJsonBody$8(f fVar, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
        if (this != this.message) {
            _optimizedjsonwriter.b(jsonWriter, 91);
            jsonWriter.value(this.message);
        }
        _optimizedjsonwriter.b(jsonWriter, 75);
        jsonWriter.value(Integer.valueOf(this.code));
    }
}
