package com.mopub.mobileads;

import com.google.gson.f;
import com.google.gson.j;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import com.mopub.mobileads.VastFractionalProgressTracker;
import java.io.IOException;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
import proguard.optimize.gson.b;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/OptimizedVastFractionalProgressTracker$CompanionTypeAdapter.class */
public class OptimizedVastFractionalProgressTracker$CompanionTypeAdapter extends j implements b {

    /* renamed from: a  reason: collision with root package name */
    private f f34166a;

    /* renamed from: b  reason: collision with root package name */
    private _OptimizedJsonReader f34167b;

    /* renamed from: c  reason: collision with root package name */
    private _OptimizedJsonWriter f34168c;

    public OptimizedVastFractionalProgressTracker$CompanionTypeAdapter(f fVar, _OptimizedJsonReader _optimizedjsonreader, _OptimizedJsonWriter _optimizedjsonwriter) {
        this.f34166a = fVar;
        this.f34167b = _optimizedjsonreader;
        this.f34168c = _optimizedjsonwriter;
    }

    @Override // com.google.gson.j
    public Object read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.skipValue();
            return null;
        }
        VastFractionalProgressTracker.Companion companion = new VastFractionalProgressTracker.Companion();
        companion.fromJson$14(this.f34166a, jsonReader, this.f34167b);
        return companion;
    }

    @Override // com.google.gson.j
    public void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
        } else {
            ((VastFractionalProgressTracker.Companion) obj).toJson$14(this.f34166a, jsonWriter, this.f34168c);
        }
    }
}
