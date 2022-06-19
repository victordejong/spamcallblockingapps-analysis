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
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/OptimizedVastIconConfigTypeAdapter.class */
public class OptimizedVastIconConfigTypeAdapter extends AbstractC16088j implements AbstractC21026b {

    /* renamed from: a */
    private C15965f f59361a;

    /* renamed from: b */
    private _OptimizedJsonReader f59362b;

    /* renamed from: c */
    private _OptimizedJsonWriter f59363c;

    public OptimizedVastIconConfigTypeAdapter(C15965f c15965f, _OptimizedJsonReader _optimizedjsonreader, _OptimizedJsonWriter _optimizedjsonwriter) {
        this.f59361a = c15965f;
        this.f59362b = _optimizedjsonreader;
        this.f59363c = _optimizedjsonwriter;
    }

    @Override // com.google.gson.AbstractC16088j
    public Object read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.skipValue();
            return null;
        }
        VastIconConfig vastIconConfig = new VastIconConfig();
        vastIconConfig.fromJson$1(this.f59361a, jsonReader, this.f59362b);
        return vastIconConfig;
    }

    @Override // com.google.gson.AbstractC16088j
    public void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
        } else {
            ((VastIconConfig) obj).toJson$1(this.f59361a, jsonWriter, this.f59363c);
        }
    }
}
