package com.mopub.mobileads;

import com.google.gson.AbstractC16088j;
import com.google.gson.C15965f;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import proguard.optimize.gson.AbstractC21026b;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/OptimizedVastVideoConfigTypeAdapter.class */
public class OptimizedVastVideoConfigTypeAdapter extends AbstractC16088j implements AbstractC21026b {

    /* renamed from: a */
    private C15965f f59388a;

    /* renamed from: b */
    private _OptimizedJsonReader f59389b;

    /* renamed from: c */
    private _OptimizedJsonWriter f59390c;

    public OptimizedVastVideoConfigTypeAdapter(C15965f c15965f, _OptimizedJsonReader _optimizedjsonreader, _OptimizedJsonWriter _optimizedjsonwriter) {
        this.f59388a = c15965f;
        this.f59389b = _optimizedjsonreader;
        this.f59390c = _optimizedjsonwriter;
    }

    @Override // com.google.gson.AbstractC16088j
    public Object read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.skipValue();
            return null;
        }
        VastVideoConfig vastVideoConfig = new VastVideoConfig();
        vastVideoConfig.fromJson$28(this.f59388a, jsonReader, this.f59389b);
        return vastVideoConfig;
    }

    @Override // com.google.gson.AbstractC16088j
    public void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
        } else {
            ((VastVideoConfig) obj).toJson$28(this.f59388a, jsonWriter, this.f59390c);
        }
    }
}
