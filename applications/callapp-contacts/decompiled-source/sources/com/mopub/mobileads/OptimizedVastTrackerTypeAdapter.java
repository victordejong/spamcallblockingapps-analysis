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
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/OptimizedVastTrackerTypeAdapter.class */
public class OptimizedVastTrackerTypeAdapter extends j implements b {

    /* renamed from: a  reason: collision with root package name */
    private f f34196a;

    /* renamed from: b  reason: collision with root package name */
    private _OptimizedJsonReader f34197b;

    /* renamed from: c  reason: collision with root package name */
    private _OptimizedJsonWriter f34198c;

    public OptimizedVastTrackerTypeAdapter(f fVar, _OptimizedJsonReader _optimizedjsonreader, _OptimizedJsonWriter _optimizedjsonwriter) {
        this.f34196a = fVar;
        this.f34197b = _optimizedjsonreader;
        this.f34198c = _optimizedjsonwriter;
    }

    @Override // com.google.gson.j
    public Object read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.skipValue();
            return null;
        }
        VastTracker vastTracker = new VastTracker();
        vastTracker.fromJson$29(this.f34196a, jsonReader, this.f34197b);
        return vastTracker;
    }

    @Override // com.google.gson.j
    public void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
        } else {
            ((VastTracker) obj).toJson$29(this.f34196a, jsonWriter, this.f34198c);
        }
    }
}
