package com.mopub.mobileads;

import com.google.gson.AbstractC16088j;
import com.google.gson.C15965f;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import com.mopub.mobileads.VideoViewabilityTracker;
import java.io.IOException;
import proguard.optimize.gson.AbstractC21026b;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/OptimizedVideoViewabilityTracker$CompanionTypeAdapter.class */
public class OptimizedVideoViewabilityTracker$CompanionTypeAdapter extends AbstractC16088j implements AbstractC21026b {

    /* renamed from: a */
    private C15965f f59391a;

    /* renamed from: b */
    private _OptimizedJsonReader f59392b;

    /* renamed from: c */
    private _OptimizedJsonWriter f59393c;

    public OptimizedVideoViewabilityTracker$CompanionTypeAdapter(C15965f c15965f, _OptimizedJsonReader _optimizedjsonreader, _OptimizedJsonWriter _optimizedjsonwriter) {
        this.f59391a = c15965f;
        this.f59392b = _optimizedjsonreader;
        this.f59393c = _optimizedjsonwriter;
    }

    @Override // com.google.gson.AbstractC16088j
    public Object read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.skipValue();
            return null;
        }
        VideoViewabilityTracker.Companion companion = new VideoViewabilityTracker.Companion();
        companion.fromJson$7(this.f59391a, jsonReader, this.f59392b);
        return companion;
    }

    @Override // com.google.gson.AbstractC16088j
    public void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
        } else {
            ((VideoViewabilityTracker.Companion) obj).toJson$7(this.f59391a, jsonWriter, this.f59393c);
        }
    }
}
