package com.mopub.mobileads;

import com.google.gson.f;
import com.google.gson.j;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import com.mopub.mobileads.VideoViewabilityTracker;
import java.io.IOException;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
import proguard.optimize.gson.b;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/OptimizedVideoViewabilityTracker$CompanionTypeAdapter.class */
public class OptimizedVideoViewabilityTracker$CompanionTypeAdapter extends j implements b {

    /* renamed from: a  reason: collision with root package name */
    private f f34205a;

    /* renamed from: b  reason: collision with root package name */
    private _OptimizedJsonReader f34206b;

    /* renamed from: c  reason: collision with root package name */
    private _OptimizedJsonWriter f34207c;

    public OptimizedVideoViewabilityTracker$CompanionTypeAdapter(f fVar, _OptimizedJsonReader _optimizedjsonreader, _OptimizedJsonWriter _optimizedjsonwriter) {
        this.f34205a = fVar;
        this.f34206b = _optimizedjsonreader;
        this.f34207c = _optimizedjsonwriter;
    }

    @Override // com.google.gson.j
    public Object read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.skipValue();
            return null;
        }
        VideoViewabilityTracker.Companion companion = new VideoViewabilityTracker.Companion();
        companion.fromJson$7(this.f34205a, jsonReader, this.f34206b);
        return companion;
    }

    @Override // com.google.gson.j
    public void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
        } else {
            ((VideoViewabilityTracker.Companion) obj).toJson$7(this.f34205a, jsonWriter, this.f34207c);
        }
    }
}
