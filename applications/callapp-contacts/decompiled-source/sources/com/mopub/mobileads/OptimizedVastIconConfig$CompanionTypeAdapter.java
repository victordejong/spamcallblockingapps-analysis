package com.mopub.mobileads;

import com.google.gson.f;
import com.google.gson.j;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import com.mopub.mobileads.VastIconConfig;
import java.io.IOException;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
import proguard.optimize.gson.b;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/OptimizedVastIconConfig$CompanionTypeAdapter.class */
public class OptimizedVastIconConfig$CompanionTypeAdapter extends j implements b {

    /* renamed from: a  reason: collision with root package name */
    private f f34172a;

    /* renamed from: b  reason: collision with root package name */
    private _OptimizedJsonReader f34173b;

    /* renamed from: c  reason: collision with root package name */
    private _OptimizedJsonWriter f34174c;

    public OptimizedVastIconConfig$CompanionTypeAdapter(f fVar, _OptimizedJsonReader _optimizedjsonreader, _OptimizedJsonWriter _optimizedjsonwriter) {
        this.f34172a = fVar;
        this.f34173b = _optimizedjsonreader;
        this.f34174c = _optimizedjsonwriter;
    }

    @Override // com.google.gson.j
    public Object read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.skipValue();
            return null;
        }
        VastIconConfig.Companion companion = new VastIconConfig.Companion();
        companion.fromJson$18(this.f34172a, jsonReader, this.f34173b);
        return companion;
    }

    @Override // com.google.gson.j
    public void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
        } else {
            ((VastIconConfig.Companion) obj).toJson$18(this.f34172a, jsonWriter, this.f34174c);
        }
    }
}
