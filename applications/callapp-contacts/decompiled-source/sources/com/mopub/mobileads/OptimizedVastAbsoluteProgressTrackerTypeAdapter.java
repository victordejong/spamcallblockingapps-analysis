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
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/OptimizedVastAbsoluteProgressTrackerTypeAdapter.class */
public class OptimizedVastAbsoluteProgressTrackerTypeAdapter extends j implements b {

    /* renamed from: a  reason: collision with root package name */
    private f f34157a;

    /* renamed from: b  reason: collision with root package name */
    private _OptimizedJsonReader f34158b;

    /* renamed from: c  reason: collision with root package name */
    private _OptimizedJsonWriter f34159c;

    public OptimizedVastAbsoluteProgressTrackerTypeAdapter(f fVar, _OptimizedJsonReader _optimizedjsonreader, _OptimizedJsonWriter _optimizedjsonwriter) {
        this.f34157a = fVar;
        this.f34158b = _optimizedjsonreader;
        this.f34159c = _optimizedjsonwriter;
    }

    @Override // com.google.gson.j
    public Object read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.skipValue();
            return null;
        }
        VastAbsoluteProgressTracker vastAbsoluteProgressTracker = new VastAbsoluteProgressTracker();
        vastAbsoluteProgressTracker.fromJson$31(this.f34157a, jsonReader, this.f34158b);
        return vastAbsoluteProgressTracker;
    }

    @Override // com.google.gson.j
    public void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
        } else {
            ((VastAbsoluteProgressTracker) obj).toJson$31(this.f34157a, jsonWriter, this.f34159c);
        }
    }
}
