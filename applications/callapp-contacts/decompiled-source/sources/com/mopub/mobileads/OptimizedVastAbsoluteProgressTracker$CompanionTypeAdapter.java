package com.mopub.mobileads;

import com.google.gson.f;
import com.google.gson.j;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import com.mopub.mobileads.VastAbsoluteProgressTracker;
import java.io.IOException;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
import proguard.optimize.gson.b;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/OptimizedVastAbsoluteProgressTracker$CompanionTypeAdapter.class */
public class OptimizedVastAbsoluteProgressTracker$CompanionTypeAdapter extends j implements b {

    /* renamed from: a  reason: collision with root package name */
    private f f34154a;

    /* renamed from: b  reason: collision with root package name */
    private _OptimizedJsonReader f34155b;

    /* renamed from: c  reason: collision with root package name */
    private _OptimizedJsonWriter f34156c;

    public OptimizedVastAbsoluteProgressTracker$CompanionTypeAdapter(f fVar, _OptimizedJsonReader _optimizedjsonreader, _OptimizedJsonWriter _optimizedjsonwriter) {
        this.f34154a = fVar;
        this.f34155b = _optimizedjsonreader;
        this.f34156c = _optimizedjsonwriter;
    }

    @Override // com.google.gson.j
    public Object read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.skipValue();
            return null;
        }
        VastAbsoluteProgressTracker.Companion companion = new VastAbsoluteProgressTracker.Companion();
        companion.fromJson$0(this.f34154a, jsonReader, this.f34155b);
        return companion;
    }

    @Override // com.google.gson.j
    public void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
        } else {
            ((VastAbsoluteProgressTracker.Companion) obj).toJson$0(this.f34154a, jsonWriter, this.f34156c);
        }
    }
}
