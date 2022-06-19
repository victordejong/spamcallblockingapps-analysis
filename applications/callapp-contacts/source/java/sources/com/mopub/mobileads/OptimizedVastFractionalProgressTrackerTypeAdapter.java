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
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/OptimizedVastFractionalProgressTrackerTypeAdapter.class */
public class OptimizedVastFractionalProgressTrackerTypeAdapter extends AbstractC16088j implements AbstractC21026b {

    /* renamed from: a */
    private C15965f f59355a;

    /* renamed from: b */
    private _OptimizedJsonReader f59356b;

    /* renamed from: c */
    private _OptimizedJsonWriter f59357c;

    public OptimizedVastFractionalProgressTrackerTypeAdapter(C15965f c15965f, _OptimizedJsonReader _optimizedjsonreader, _OptimizedJsonWriter _optimizedjsonwriter) {
        this.f59355a = c15965f;
        this.f59356b = _optimizedjsonreader;
        this.f59357c = _optimizedjsonwriter;
    }

    @Override // com.google.gson.AbstractC16088j
    public Object read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.skipValue();
            return null;
        }
        VastFractionalProgressTracker vastFractionalProgressTracker = new VastFractionalProgressTracker();
        vastFractionalProgressTracker.fromJson$15(this.f59355a, jsonReader, this.f59356b);
        return vastFractionalProgressTracker;
    }

    @Override // com.google.gson.AbstractC16088j
    public void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
        } else {
            ((VastFractionalProgressTracker) obj).toJson$15(this.f59355a, jsonWriter, this.f59357c);
        }
    }
}
