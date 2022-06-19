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
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/OptimizedVastTrackerTypeAdapter.class */
public class OptimizedVastTrackerTypeAdapter extends AbstractC16088j implements AbstractC21026b {

    /* renamed from: a */
    private C15965f f59382a;

    /* renamed from: b */
    private _OptimizedJsonReader f59383b;

    /* renamed from: c */
    private _OptimizedJsonWriter f59384c;

    public OptimizedVastTrackerTypeAdapter(C15965f c15965f, _OptimizedJsonReader _optimizedjsonreader, _OptimizedJsonWriter _optimizedjsonwriter) {
        this.f59382a = c15965f;
        this.f59383b = _optimizedjsonreader;
        this.f59384c = _optimizedjsonwriter;
    }

    @Override // com.google.gson.AbstractC16088j
    public Object read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.skipValue();
            return null;
        }
        VastTracker vastTracker = new VastTracker();
        vastTracker.fromJson$29(this.f59382a, jsonReader, this.f59383b);
        return vastTracker;
    }

    @Override // com.google.gson.AbstractC16088j
    public void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
        } else {
            ((VastTracker) obj).toJson$29(this.f59382a, jsonWriter, this.f59384c);
        }
    }
}
