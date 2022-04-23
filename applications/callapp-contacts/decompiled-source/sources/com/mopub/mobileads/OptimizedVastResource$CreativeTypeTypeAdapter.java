package com.mopub.mobileads;

import com.google.gson.f;
import com.google.gson.j;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import com.mopub.mobileads.VastResource;
import java.io.IOException;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
import proguard.optimize.gson.b;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/OptimizedVastResource$CreativeTypeTypeAdapter.class */
public class OptimizedVastResource$CreativeTypeTypeAdapter extends j implements b {

    /* renamed from: a  reason: collision with root package name */
    private f f34181a;

    /* renamed from: b  reason: collision with root package name */
    private _OptimizedJsonReader f34182b;

    /* renamed from: c  reason: collision with root package name */
    private _OptimizedJsonWriter f34183c;

    public OptimizedVastResource$CreativeTypeTypeAdapter(f fVar, _OptimizedJsonReader _optimizedjsonreader, _OptimizedJsonWriter _optimizedjsonwriter) {
        this.f34181a = fVar;
        this.f34182b = _optimizedjsonreader;
        this.f34183c = _optimizedjsonwriter;
    }

    @Override // com.google.gson.j
    public Object read(JsonReader jsonReader) throws IOException {
        int c2 = this.f34182b.c(jsonReader);
        if (c2 == 4) {
            return VastResource.CreativeType.IMAGE;
        }
        if (c2 == 11) {
            return VastResource.CreativeType.NONE;
        }
        if (c2 != 28) {
            return null;
        }
        return VastResource.CreativeType.JAVASCRIPT;
    }

    @Override // com.google.gson.j
    public void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
        } else {
            this.f34183c.c(jsonWriter, obj == VastResource.CreativeType.JAVASCRIPT ? 28 : obj == VastResource.CreativeType.IMAGE ? 4 : obj == VastResource.CreativeType.NONE ? 11 : -1);
        }
    }
}
