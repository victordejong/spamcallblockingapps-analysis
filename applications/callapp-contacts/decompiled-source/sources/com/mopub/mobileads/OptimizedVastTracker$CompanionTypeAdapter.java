package com.mopub.mobileads;

import com.google.gson.f;
import com.google.gson.j;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import com.mopub.mobileads.VastTracker;
import java.io.IOException;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
import proguard.optimize.gson.b;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/OptimizedVastTracker$CompanionTypeAdapter.class */
public class OptimizedVastTracker$CompanionTypeAdapter extends j implements b {

    /* renamed from: a  reason: collision with root package name */
    private f f34190a;

    /* renamed from: b  reason: collision with root package name */
    private _OptimizedJsonReader f34191b;

    /* renamed from: c  reason: collision with root package name */
    private _OptimizedJsonWriter f34192c;

    public OptimizedVastTracker$CompanionTypeAdapter(f fVar, _OptimizedJsonReader _optimizedjsonreader, _OptimizedJsonWriter _optimizedjsonwriter) {
        this.f34190a = fVar;
        this.f34191b = _optimizedjsonreader;
        this.f34192c = _optimizedjsonwriter;
    }

    @Override // com.google.gson.j
    public Object read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.skipValue();
            return null;
        }
        VastTracker.Companion companion = new VastTracker.Companion();
        companion.fromJson$26(this.f34190a, jsonReader, this.f34191b);
        return companion;
    }

    @Override // com.google.gson.j
    public void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
        } else {
            ((VastTracker.Companion) obj).toJson$26(this.f34190a, jsonWriter, this.f34192c);
        }
    }
}
