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
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/OptimizedVastIconConfigTypeAdapter.class */
public class OptimizedVastIconConfigTypeAdapter extends j implements b {

    /* renamed from: a  reason: collision with root package name */
    private f f34175a;

    /* renamed from: b  reason: collision with root package name */
    private _OptimizedJsonReader f34176b;

    /* renamed from: c  reason: collision with root package name */
    private _OptimizedJsonWriter f34177c;

    public OptimizedVastIconConfigTypeAdapter(f fVar, _OptimizedJsonReader _optimizedjsonreader, _OptimizedJsonWriter _optimizedjsonwriter) {
        this.f34175a = fVar;
        this.f34176b = _optimizedjsonreader;
        this.f34177c = _optimizedjsonwriter;
    }

    @Override // com.google.gson.j
    public Object read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.skipValue();
            return null;
        }
        VastIconConfig vastIconConfig = new VastIconConfig();
        vastIconConfig.fromJson$1(this.f34175a, jsonReader, this.f34176b);
        return vastIconConfig;
    }

    @Override // com.google.gson.j
    public void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
        } else {
            ((VastIconConfig) obj).toJson$1(this.f34175a, jsonWriter, this.f34177c);
        }
    }
}
