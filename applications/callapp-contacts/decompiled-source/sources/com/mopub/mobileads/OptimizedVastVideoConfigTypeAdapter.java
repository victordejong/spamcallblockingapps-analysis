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
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/OptimizedVastVideoConfigTypeAdapter.class */
public class OptimizedVastVideoConfigTypeAdapter extends j implements b {

    /* renamed from: a  reason: collision with root package name */
    private f f34202a;

    /* renamed from: b  reason: collision with root package name */
    private _OptimizedJsonReader f34203b;

    /* renamed from: c  reason: collision with root package name */
    private _OptimizedJsonWriter f34204c;

    public OptimizedVastVideoConfigTypeAdapter(f fVar, _OptimizedJsonReader _optimizedjsonreader, _OptimizedJsonWriter _optimizedjsonwriter) {
        this.f34202a = fVar;
        this.f34203b = _optimizedjsonreader;
        this.f34204c = _optimizedjsonwriter;
    }

    @Override // com.google.gson.j
    public Object read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.skipValue();
            return null;
        }
        VastVideoConfig vastVideoConfig = new VastVideoConfig();
        vastVideoConfig.fromJson$28(this.f34202a, jsonReader, this.f34203b);
        return vastVideoConfig;
    }

    @Override // com.google.gson.j
    public void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
        } else {
            ((VastVideoConfig) obj).toJson$28(this.f34202a, jsonWriter, this.f34204c);
        }
    }
}
