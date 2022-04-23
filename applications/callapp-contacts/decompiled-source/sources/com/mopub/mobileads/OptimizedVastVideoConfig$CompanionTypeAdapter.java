package com.mopub.mobileads;

import com.google.gson.f;
import com.google.gson.j;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import com.mopub.mobileads.VastVideoConfig;
import java.io.IOException;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
import proguard.optimize.gson.b;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/OptimizedVastVideoConfig$CompanionTypeAdapter.class */
public class OptimizedVastVideoConfig$CompanionTypeAdapter extends j implements b {

    /* renamed from: a  reason: collision with root package name */
    private f f34199a;

    /* renamed from: b  reason: collision with root package name */
    private _OptimizedJsonReader f34200b;

    /* renamed from: c  reason: collision with root package name */
    private _OptimizedJsonWriter f34201c;

    public OptimizedVastVideoConfig$CompanionTypeAdapter(f fVar, _OptimizedJsonReader _optimizedjsonreader, _OptimizedJsonWriter _optimizedjsonwriter) {
        this.f34199a = fVar;
        this.f34200b = _optimizedjsonreader;
        this.f34201c = _optimizedjsonwriter;
    }

    @Override // com.google.gson.j
    public Object read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.skipValue();
            return null;
        }
        VastVideoConfig.Companion companion = new VastVideoConfig.Companion();
        companion.fromJson$16(this.f34199a, jsonReader, this.f34200b);
        return companion;
    }

    @Override // com.google.gson.j
    public void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
        } else {
            ((VastVideoConfig.Companion) obj).toJson$16(this.f34199a, jsonWriter, this.f34201c);
        }
    }
}
