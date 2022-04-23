package com.amazonaws.services.s3.model;

import com.google.gson.f;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.Serializable;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/FilterRule.class */
public class FilterRule implements Serializable {
    private String name;
    private String value;

    public /* synthetic */ void fromJson$32(f fVar, JsonReader jsonReader, _OptimizedJsonReader _optimizedjsonreader) {
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            fromJsonField$32(fVar, jsonReader, _optimizedjsonreader.b(jsonReader));
        }
        jsonReader.endObject();
    }

    protected /* synthetic */ void fromJsonField$32(f fVar, JsonReader jsonReader, int i) {
        boolean z = jsonReader.peek() != JsonToken.NULL;
        if (i != 72) {
            if (i != 88) {
                jsonReader.skipValue();
            } else if (!z) {
                this.value = null;
                jsonReader.nextNull();
            } else if (jsonReader.peek() != JsonToken.BOOLEAN) {
                this.value = jsonReader.nextString();
            } else {
                this.value = Boolean.toString(jsonReader.nextBoolean());
            }
        } else if (!z) {
            this.name = null;
            jsonReader.nextNull();
        } else if (jsonReader.peek() != JsonToken.BOOLEAN) {
            this.name = jsonReader.nextString();
        } else {
            this.name = Boolean.toString(jsonReader.nextBoolean());
        }
    }

    public String getName() {
        return this.name;
    }

    public String getValue() {
        return this.value;
    }

    public void setName(String str) {
        if (str != null) {
            this.name = str;
            return;
        }
        throw new IllegalArgumentException("FilterRule Name is a required argument");
    }

    public void setValue(String str) {
        this.value = str;
    }

    public /* synthetic */ void toJson$32(f fVar, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
        jsonWriter.beginObject();
        toJsonBody$32(fVar, jsonWriter, _optimizedjsonwriter);
        jsonWriter.endObject();
    }

    protected /* synthetic */ void toJsonBody$32(f fVar, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
        if (this != this.name) {
            _optimizedjsonwriter.b(jsonWriter, 72);
            jsonWriter.value(this.name);
        }
        if (this != this.value) {
            _optimizedjsonwriter.b(jsonWriter, 88);
            jsonWriter.value(this.value);
        }
    }

    public FilterRule withName(String str) {
        setName(str);
        return this;
    }

    public FilterRule withValue(String str) {
        setValue(str);
        return this;
    }
}
