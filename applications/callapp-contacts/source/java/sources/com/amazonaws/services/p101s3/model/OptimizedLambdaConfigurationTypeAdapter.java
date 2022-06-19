package com.amazonaws.services.p101s3.model;

import com.google.gson.AbstractC16088j;
import com.google.gson.C15965f;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import proguard.optimize.gson.AbstractC21026b;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
/* renamed from: com.amazonaws.services.s3.model.OptimizedLambdaConfigurationTypeAdapter */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/OptimizedLambdaConfigurationTypeAdapter.class */
public class OptimizedLambdaConfigurationTypeAdapter extends AbstractC16088j implements AbstractC21026b {
    private C15965f gson;
    private _OptimizedJsonReader optimizedJsonReader;
    private _OptimizedJsonWriter optimizedJsonWriter;

    public OptimizedLambdaConfigurationTypeAdapter(C15965f c15965f, _OptimizedJsonReader _optimizedjsonreader, _OptimizedJsonWriter _optimizedjsonwriter) {
        this.gson = c15965f;
        this.optimizedJsonReader = _optimizedjsonreader;
        this.optimizedJsonWriter = _optimizedjsonwriter;
    }

    @Override // com.google.gson.AbstractC16088j
    public Object read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.skipValue();
            return null;
        }
        LambdaConfiguration lambdaConfiguration = new LambdaConfiguration();
        lambdaConfiguration.fromJson$37(this.gson, jsonReader, this.optimizedJsonReader);
        return lambdaConfiguration;
    }

    @Override // com.google.gson.AbstractC16088j
    public void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
        } else {
            ((LambdaConfiguration) obj).toJson$37(this.gson, jsonWriter, this.optimizedJsonWriter);
        }
    }
}
