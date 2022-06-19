package com.mopub.mobileads;

import com.google.gson.AbstractC16088j;
import com.google.gson.C15965f;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import com.mopub.mobileads.VastVideoConfig;
import java.io.IOException;
import proguard.optimize.gson.AbstractC21026b;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/OptimizedVastVideoConfig$CompanionTypeAdapter.class */
public class OptimizedVastVideoConfig$CompanionTypeAdapter extends AbstractC16088j implements AbstractC21026b {

    /* renamed from: a */
    private C15965f f59385a;

    /* renamed from: b */
    private _OptimizedJsonReader f59386b;

    /* renamed from: c */
    private _OptimizedJsonWriter f59387c;

    public OptimizedVastVideoConfig$CompanionTypeAdapter(C15965f c15965f, _OptimizedJsonReader _optimizedjsonreader, _OptimizedJsonWriter _optimizedjsonwriter) {
        this.f59385a = c15965f;
        this.f59386b = _optimizedjsonreader;
        this.f59387c = _optimizedjsonwriter;
    }

    @Override // com.google.gson.AbstractC16088j
    public Object read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.skipValue();
            return null;
        }
        VastVideoConfig.Companion companion = new VastVideoConfig.Companion();
        companion.fromJson$16(this.f59385a, jsonReader, this.f59386b);
        return companion;
    }

    @Override // com.google.gson.AbstractC16088j
    public void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
        } else {
            ((VastVideoConfig.Companion) obj).toJson$16(this.f59385a, jsonWriter, this.f59387c);
        }
    }
}
