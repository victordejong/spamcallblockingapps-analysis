package com.twitter.sdk.android.core.models;

import com.google.gson.C15965f;
import com.google.gson.JsonSyntaxException;
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

    public /* synthetic */ void fromJson$8(C15965f c15965f, JsonReader jsonReader, _OptimizedJsonReader _optimizedjsonreader) {
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            fromJsonField$8(c15965f, jsonReader, _optimizedjsonreader.mo123b(jsonReader));
        }
        jsonReader.endObject();
    }

    protected /* synthetic */ void fromJsonField$8(C15965f c15965f, JsonReader jsonReader, int i) {
        boolean z = jsonReader.peek() != JsonToken.NULL;
        if (i == 75) {
            if (!z) {
                jsonReader.nextNull();
                return;
            }
            try {
                this.code = jsonReader.nextInt();
            } catch (NumberFormatException e) {
                throw new JsonSyntaxException(e);
            }
        } else if (i != 91) {
            jsonReader.skipValue();
        } else if (!z) {
            this.message = null;
            jsonReader.nextNull();
        } else if (jsonReader.peek() != JsonToken.BOOLEAN) {
            this.message = jsonReader.nextString();
        } else {
            this.message = Boolean.toString(jsonReader.nextBoolean());
        }
    }

    public /* synthetic */ void toJson$8(C15965f c15965f, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
        jsonWriter.beginObject();
        toJsonBody$8(c15965f, jsonWriter, _optimizedjsonwriter);
        jsonWriter.endObject();
    }

    protected /* synthetic */ void toJsonBody$8(C15965f c15965f, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
        if (this != this.message) {
            _optimizedjsonwriter.mo120b(jsonWriter, 91);
            jsonWriter.value(this.message);
        }
        _optimizedjsonwriter.mo120b(jsonWriter, 75);
        jsonWriter.value(Integer.valueOf(this.code));
    }
}
