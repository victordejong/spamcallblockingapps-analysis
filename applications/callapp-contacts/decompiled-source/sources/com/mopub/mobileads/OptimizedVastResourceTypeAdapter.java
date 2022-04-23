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
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/OptimizedVastResourceTypeAdapter.class */
public class OptimizedVastResourceTypeAdapter extends j implements b {

    /* renamed from: a  reason: collision with root package name */
    private f f34187a;

    /* renamed from: b  reason: collision with root package name */
    private _OptimizedJsonReader f34188b;

    /* renamed from: c  reason: collision with root package name */
    private _OptimizedJsonWriter f34189c;

    public OptimizedVastResourceTypeAdapter(f fVar, _OptimizedJsonReader _optimizedjsonreader, _OptimizedJsonWriter _optimizedjsonwriter) {
        this.f34187a = fVar;
        this.f34188b = _optimizedjsonreader;
        this.f34189c = _optimizedjsonwriter;
    }

    @Override // com.google.gson.j
    public Object read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.skipValue();
            return null;
        }
        VastResource vastResource = new VastResource();
        vastResource.fromJson$2(this.f34187a, jsonReader, this.f34188b);
        return vastResource;
    }

    @Override // com.google.gson.j
    public void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
        } else {
            ((VastResource) obj).toJson$2(this.f34187a, jsonWriter, this.f34189c);
        }
    }
}
