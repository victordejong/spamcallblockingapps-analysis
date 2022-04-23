package com.mopub.mobileads;

import com.google.gson.f;
import com.google.gson.j;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import com.mopub.mobileads.VastCompanionAdConfig;
import java.io.IOException;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
import proguard.optimize.gson.b;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/OptimizedVastCompanionAdConfig$CompanionTypeAdapter.class */
public class OptimizedVastCompanionAdConfig$CompanionTypeAdapter extends j implements b {

    /* renamed from: a  reason: collision with root package name */
    private f f34160a;

    /* renamed from: b  reason: collision with root package name */
    private _OptimizedJsonReader f34161b;

    /* renamed from: c  reason: collision with root package name */
    private _OptimizedJsonWriter f34162c;

    public OptimizedVastCompanionAdConfig$CompanionTypeAdapter(f fVar, _OptimizedJsonReader _optimizedjsonreader, _OptimizedJsonWriter _optimizedjsonwriter) {
        this.f34160a = fVar;
        this.f34161b = _optimizedjsonreader;
        this.f34162c = _optimizedjsonwriter;
    }

    @Override // com.google.gson.j
    public Object read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.skipValue();
            return null;
        }
        VastCompanionAdConfig.Companion companion = new VastCompanionAdConfig.Companion();
        companion.fromJson$17(this.f34160a, jsonReader, this.f34161b);
        return companion;
    }

    @Override // com.google.gson.j
    public void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
        } else {
            ((VastCompanionAdConfig.Companion) obj).toJson$17(this.f34160a, jsonWriter, this.f34162c);
        }
    }
}
