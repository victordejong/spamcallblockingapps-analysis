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
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/OptimizedVastFractionalProgressTrackerTypeAdapter.class */
public class OptimizedVastFractionalProgressTrackerTypeAdapter extends j implements b {

    /* renamed from: a  reason: collision with root package name */
    private f f34169a;

    /* renamed from: b  reason: collision with root package name */
    private _OptimizedJsonReader f34170b;

    /* renamed from: c  reason: collision with root package name */
    private _OptimizedJsonWriter f34171c;

    public OptimizedVastFractionalProgressTrackerTypeAdapter(f fVar, _OptimizedJsonReader _optimizedjsonreader, _OptimizedJsonWriter _optimizedjsonwriter) {
        this.f34169a = fVar;
        this.f34170b = _optimizedjsonreader;
        this.f34171c = _optimizedjsonwriter;
    }

    @Override // com.google.gson.j
    public Object read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.skipValue();
            return null;
        }
        VastFractionalProgressTracker vastFractionalProgressTracker = new VastFractionalProgressTracker();
        vastFractionalProgressTracker.fromJson$15(this.f34169a, jsonReader, this.f34170b);
        return vastFractionalProgressTracker;
    }

    @Override // com.google.gson.j
    public void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
        } else {
            ((VastFractionalProgressTracker) obj).toJson$15(this.f34169a, jsonWriter, this.f34171c);
        }
    }
}
