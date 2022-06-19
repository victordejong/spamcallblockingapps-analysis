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
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/OptimizedVideoViewabilityTrackerTypeAdapter.class */
public class OptimizedVideoViewabilityTrackerTypeAdapter extends AbstractC16088j implements AbstractC21026b {

    /* renamed from: a */
    private C15965f f59394a;

    /* renamed from: b */
    private _OptimizedJsonReader f59395b;

    /* renamed from: c */
    private _OptimizedJsonWriter f59396c;

    public OptimizedVideoViewabilityTrackerTypeAdapter(C15965f c15965f, _OptimizedJsonReader _optimizedjsonreader, _OptimizedJsonWriter _optimizedjsonwriter) {
        this.f59394a = c15965f;
        this.f59395b = _optimizedjsonreader;
        this.f59396c = _optimizedjsonwriter;
    }

    @Override // com.google.gson.AbstractC16088j
    public Object read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.skipValue();
            return null;
        }
        VideoViewabilityTracker videoViewabilityTracker = new VideoViewabilityTracker();
        videoViewabilityTracker.fromJson$12(this.f59394a, jsonReader, this.f59395b);
        return videoViewabilityTracker;
    }

    @Override // com.google.gson.AbstractC16088j
    public void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
        } else {
            ((VideoViewabilityTracker) obj).toJson$12(this.f59394a, jsonWriter, this.f59396c);
        }
    }
}
