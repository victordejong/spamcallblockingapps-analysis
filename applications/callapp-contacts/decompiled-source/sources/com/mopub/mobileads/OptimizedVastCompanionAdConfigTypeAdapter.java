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
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/OptimizedVastCompanionAdConfigTypeAdapter.class */
public class OptimizedVastCompanionAdConfigTypeAdapter extends j implements b {

    /* renamed from: a  reason: collision with root package name */
    private f f34163a;

    /* renamed from: b  reason: collision with root package name */
    private _OptimizedJsonReader f34164b;

    /* renamed from: c  reason: collision with root package name */
    private _OptimizedJsonWriter f34165c;

    public OptimizedVastCompanionAdConfigTypeAdapter(f fVar, _OptimizedJsonReader _optimizedjsonreader, _OptimizedJsonWriter _optimizedjsonwriter) {
        this.f34163a = fVar;
        this.f34164b = _optimizedjsonreader;
        this.f34165c = _optimizedjsonwriter;
    }

    @Override // com.google.gson.j
    public Object read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.skipValue();
            return null;
        }
        VastCompanionAdConfig vastCompanionAdConfig = new VastCompanionAdConfig();
        vastCompanionAdConfig.fromJson$4(this.f34163a, jsonReader, this.f34164b);
        return vastCompanionAdConfig;
    }

    @Override // com.google.gson.j
    public void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
        } else {
            ((VastCompanionAdConfig) obj).toJson$4(this.f34163a, jsonWriter, this.f34165c);
        }
    }
}
