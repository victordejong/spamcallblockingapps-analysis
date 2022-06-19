package com.mopub.mobileads;

import com.google.gson.AbstractC16088j;
import com.google.gson.C15965f;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import com.mopub.mobileads.VastFractionalProgressTracker;
import java.io.IOException;
import proguard.optimize.gson.AbstractC21026b;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/OptimizedVastFractionalProgressTracker$CompanionTypeAdapter.class */
public class OptimizedVastFractionalProgressTracker$CompanionTypeAdapter extends AbstractC16088j implements AbstractC21026b {

    /* renamed from: a */
    private C15965f f59352a;

    /* renamed from: b */
    private _OptimizedJsonReader f59353b;

    /* renamed from: c */
    private _OptimizedJsonWriter f59354c;

    public OptimizedVastFractionalProgressTracker$CompanionTypeAdapter(C15965f c15965f, _OptimizedJsonReader _optimizedjsonreader, _OptimizedJsonWriter _optimizedjsonwriter) {
        this.f59352a = c15965f;
        this.f59353b = _optimizedjsonreader;
        this.f59354c = _optimizedjsonwriter;
    }

    @Override // com.google.gson.AbstractC16088j
    public Object read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.skipValue();
            return null;
        }
        VastFractionalProgressTracker.Companion companion = new VastFractionalProgressTracker.Companion();
        companion.fromJson$14(this.f59352a, jsonReader, this.f59353b);
        return companion;
    }

    @Override // com.google.gson.AbstractC16088j
    public void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
        } else {
            ((VastFractionalProgressTracker.Companion) obj).toJson$14(this.f59352a, jsonWriter, this.f59354c);
        }
    }
}
