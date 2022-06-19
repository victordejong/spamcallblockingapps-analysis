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
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/OptimizedVastAbsoluteProgressTrackerTypeAdapter.class */
public class OptimizedVastAbsoluteProgressTrackerTypeAdapter extends AbstractC16088j implements AbstractC21026b {

    /* renamed from: a */
    private C15965f f59343a;

    /* renamed from: b */
    private _OptimizedJsonReader f59344b;

    /* renamed from: c */
    private _OptimizedJsonWriter f59345c;

    public OptimizedVastAbsoluteProgressTrackerTypeAdapter(C15965f c15965f, _OptimizedJsonReader _optimizedjsonreader, _OptimizedJsonWriter _optimizedjsonwriter) {
        this.f59343a = c15965f;
        this.f59344b = _optimizedjsonreader;
        this.f59345c = _optimizedjsonwriter;
    }

    @Override // com.google.gson.AbstractC16088j
    public Object read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.skipValue();
            return null;
        }
        VastAbsoluteProgressTracker vastAbsoluteProgressTracker = new VastAbsoluteProgressTracker();
        vastAbsoluteProgressTracker.fromJson$31(this.f59343a, jsonReader, this.f59344b);
        return vastAbsoluteProgressTracker;
    }

    @Override // com.google.gson.AbstractC16088j
    public void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
        } else {
            ((VastAbsoluteProgressTracker) obj).toJson$31(this.f59343a, jsonWriter, this.f59345c);
        }
    }
}
