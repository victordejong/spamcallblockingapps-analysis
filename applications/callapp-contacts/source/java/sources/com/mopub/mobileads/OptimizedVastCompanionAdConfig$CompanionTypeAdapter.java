package com.mopub.mobileads;

import com.google.gson.AbstractC16088j;
import com.google.gson.C15965f;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import com.mopub.mobileads.VastCompanionAdConfig;
import java.io.IOException;
import proguard.optimize.gson.AbstractC21026b;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/OptimizedVastCompanionAdConfig$CompanionTypeAdapter.class */
public class OptimizedVastCompanionAdConfig$CompanionTypeAdapter extends AbstractC16088j implements AbstractC21026b {

    /* renamed from: a */
    private C15965f f59346a;

    /* renamed from: b */
    private _OptimizedJsonReader f59347b;

    /* renamed from: c */
    private _OptimizedJsonWriter f59348c;

    public OptimizedVastCompanionAdConfig$CompanionTypeAdapter(C15965f c15965f, _OptimizedJsonReader _optimizedjsonreader, _OptimizedJsonWriter _optimizedjsonwriter) {
        this.f59346a = c15965f;
        this.f59347b = _optimizedjsonreader;
        this.f59348c = _optimizedjsonwriter;
    }

    @Override // com.google.gson.AbstractC16088j
    public Object read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.skipValue();
            return null;
        }
        VastCompanionAdConfig.Companion companion = new VastCompanionAdConfig.Companion();
        companion.fromJson$17(this.f59346a, jsonReader, this.f59347b);
        return companion;
    }

    @Override // com.google.gson.AbstractC16088j
    public void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
        } else {
            ((VastCompanionAdConfig.Companion) obj).toJson$17(this.f59346a, jsonWriter, this.f59348c);
        }
    }
}
