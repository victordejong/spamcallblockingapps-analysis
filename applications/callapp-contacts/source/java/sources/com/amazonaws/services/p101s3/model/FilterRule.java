package com.amazonaws.services.p101s3.model;

import com.google.gson.C15965f;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.Serializable;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
/* renamed from: com.amazonaws.services.s3.model.FilterRule */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/FilterRule.class */
public class FilterRule implements Serializable {
    private String name;
    private String value;

    public /* synthetic */ void fromJson$32(C15965f c15965f, JsonReader jsonReader, _OptimizedJsonReader _optimizedjsonreader) {
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            fromJsonField$32(c15965f, jsonReader, _optimizedjsonreader.mo123b(jsonReader));
        }
        jsonReader.endObject();
    }

    protected /* synthetic */ void fromJsonField$32(C15965f c15965f, JsonReader jsonReader, int i) {
        boolean z = jsonReader.peek() != JsonToken.NULL;
        if (i == 72) {
            if (!z) {
                this.name = null;
                jsonReader.nextNull();
            } else if (jsonReader.peek() != JsonToken.BOOLEAN) {
                this.name = jsonReader.nextString();
            } else {
                this.name = Boolean.toString(jsonReader.nextBoolean());
            }
        } else if (i != 88) {
            jsonReader.skipValue();
        } else if (!z) {
            this.value = null;
            jsonReader.nextNull();
        } else if (jsonReader.peek() != JsonToken.BOOLEAN) {
            this.value = jsonReader.nextString();
        } else {
            this.value = Boolean.toString(jsonReader.nextBoolean());
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

    public /* synthetic */ void toJson$32(C15965f c15965f, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
        jsonWriter.beginObject();
        toJsonBody$32(c15965f, jsonWriter, _optimizedjsonwriter);
        jsonWriter.endObject();
    }

    protected /* synthetic */ void toJsonBody$32(C15965f c15965f, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
        if (this != this.name) {
            _optimizedjsonwriter.mo120b(jsonWriter, 72);
            jsonWriter.value(this.name);
        }
        if (this != this.value) {
            _optimizedjsonwriter.mo120b(jsonWriter, 88);
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
