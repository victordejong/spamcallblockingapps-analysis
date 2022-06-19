package com.mopub.mobileads;

import com.google.gson.AbstractC16088j;
import com.google.gson.C15965f;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import com.mopub.mobileads.VastIconConfig;
import java.io.IOException;
import proguard.optimize.gson.AbstractC21026b;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/OptimizedVastIconConfig$CompanionTypeAdapter.class */
public class OptimizedVastIconConfig$CompanionTypeAdapter extends AbstractC16088j implements AbstractC21026b {

    /* renamed from: a */
    private C15965f f59358a;

    /* renamed from: b */
    private _OptimizedJsonReader f59359b;

    /* renamed from: c */
    private _OptimizedJsonWriter f59360c;

    public OptimizedVastIconConfig$CompanionTypeAdapter(C15965f c15965f, _OptimizedJsonReader _optimizedjsonreader, _OptimizedJsonWriter _optimizedjsonwriter) {
        this.f59358a = c15965f;
        this.f59359b = _optimizedjsonreader;
        this.f59360c = _optimizedjsonwriter;
    }

    @Override // com.google.gson.AbstractC16088j
    public Object read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.skipValue();
            return null;
        }
        VastIconConfig.Companion companion = new VastIconConfig.Companion();
        companion.fromJson$18(this.f59358a, jsonReader, this.f59359b);
        return companion;
    }

    @Override // com.google.gson.AbstractC16088j
    public void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
        } else {
            ((VastIconConfig.Companion) obj).toJson$18(this.f59358a, jsonWriter, this.f59360c);
        }
    }
}
