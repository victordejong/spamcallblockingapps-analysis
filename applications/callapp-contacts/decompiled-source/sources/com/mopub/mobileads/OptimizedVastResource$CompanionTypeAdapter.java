package com.mopub.mobileads;

import com.google.gson.f;
import com.google.gson.j;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import com.mopub.mobileads.VastResource;
import java.io.IOException;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
import proguard.optimize.gson.b;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/OptimizedVastResource$CompanionTypeAdapter.class */
public class OptimizedVastResource$CompanionTypeAdapter extends j implements b {

    /* renamed from: a  reason: collision with root package name */
    private f f34178a;

    /* renamed from: b  reason: collision with root package name */
    private _OptimizedJsonReader f34179b;

    /* renamed from: c  reason: collision with root package name */
    private _OptimizedJsonWriter f34180c;

    public OptimizedVastResource$CompanionTypeAdapter(f fVar, _OptimizedJsonReader _optimizedjsonreader, _OptimizedJsonWriter _optimizedjsonwriter) {
        this.f34178a = fVar;
        this.f34179b = _optimizedjsonreader;
        this.f34180c = _optimizedjsonwriter;
    }

    @Override // com.google.gson.j
    public Object read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.skipValue();
            return null;
        }
        VastResource.Companion companion = new VastResource.Companion();
        companion.fromJson$19(this.f34178a, jsonReader, this.f34179b);
        return companion;
    }

    @Override // com.google.gson.j
    public void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
        } else {
            ((VastResource.Companion) obj).toJson$19(this.f34178a, jsonWriter, this.f34180c);
        }
    }
}
