package com.mopub.mobileads;

import com.google.gson.AbstractC16088j;
import com.google.gson.C15965f;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import com.mopub.mobileads.VastAbsoluteProgressTracker;
import java.io.IOException;
import proguard.optimize.gson.AbstractC21026b;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/OptimizedVastAbsoluteProgressTracker$CompanionTypeAdapter.class */
public class OptimizedVastAbsoluteProgressTracker$CompanionTypeAdapter extends AbstractC16088j implements AbstractC21026b {

    /* renamed from: a */
    private C15965f f59340a;

    /* renamed from: b */
    private _OptimizedJsonReader f59341b;

    /* renamed from: c */
    private _OptimizedJsonWriter f59342c;

    public OptimizedVastAbsoluteProgressTracker$CompanionTypeAdapter(C15965f c15965f, _OptimizedJsonReader _optimizedjsonreader, _OptimizedJsonWriter _optimizedjsonwriter) {
        this.f59340a = c15965f;
        this.f59341b = _optimizedjsonreader;
        this.f59342c = _optimizedjsonwriter;
    }

    @Override // com.google.gson.AbstractC16088j
    public Object read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.skipValue();
            return null;
        }
        VastAbsoluteProgressTracker.Companion companion = new VastAbsoluteProgressTracker.Companion();
        companion.fromJson$0(this.f59340a, jsonReader, this.f59341b);
        return companion;
    }

    @Override // com.google.gson.AbstractC16088j
    public void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
        } else {
            ((VastAbsoluteProgressTracker.Companion) obj).toJson$0(this.f59340a, jsonWriter, this.f59342c);
        }
    }
}
