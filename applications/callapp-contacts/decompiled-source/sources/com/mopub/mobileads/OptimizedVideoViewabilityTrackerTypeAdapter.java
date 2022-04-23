package com.mopub.mobileads;

import com.google.gson.f;
import com.google.gson.j;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
import proguard.optimize.gson.b;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/OptimizedVideoViewabilityTrackerTypeAdapter.class */
public class OptimizedVideoViewabilityTrackerTypeAdapter extends j implements b {

    /* renamed from: a  reason: collision with root package name */
    private f f34208a;

    /* renamed from: b  reason: collision with root package name */
    private _OptimizedJsonReader f34209b;

    /* renamed from: c  reason: collision with root package name */
    private _OptimizedJsonWriter f34210c;

    public OptimizedVideoViewabilityTrackerTypeAdapter(f fVar, _OptimizedJsonReader _optimizedjsonreader, _OptimizedJsonWriter _optimizedjsonwriter) {
        this.f34208a = fVar;
        this.f34209b = _optimizedjsonreader;
        this.f34210c = _optimizedjsonwriter;
    }

    @Override // com.google.gson.j
    public Object read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.skipValue();
            return null;
        }
        VideoViewabilityTracker videoViewabilityTracker = new VideoViewabilityTracker();
        videoViewabilityTracker.fromJson$12(this.f34208a, jsonReader, this.f34209b);
        return videoViewabilityTracker;
    }

    @Override // com.google.gson.j
    public void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
        } else {
            ((VideoViewabilityTracker) obj).toJson$12(this.f34208a, jsonWriter, this.f34210c);
        }
    }
}
