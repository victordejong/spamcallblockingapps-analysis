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
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/OptimizedVastResource$TypeTypeAdapter.class */
public class OptimizedVastResource$TypeTypeAdapter extends j implements b {

    /* renamed from: a  reason: collision with root package name */
    private f f34184a;

    /* renamed from: b  reason: collision with root package name */
    private _OptimizedJsonReader f34185b;

    /* renamed from: c  reason: collision with root package name */
    private _OptimizedJsonWriter f34186c;

    public OptimizedVastResource$TypeTypeAdapter(f fVar, _OptimizedJsonReader _optimizedjsonreader, _OptimizedJsonWriter _optimizedjsonwriter) {
        this.f34184a = fVar;
        this.f34185b = _optimizedjsonreader;
        this.f34186c = _optimizedjsonwriter;
    }

    @Override // com.google.gson.j
    public Object read(JsonReader jsonReader) throws IOException {
        int c2 = this.f34185b.c(jsonReader);
        if (c2 == 10) {
            return VastResource.Type.BLURRED_LAST_FRAME;
        }
        if (c2 == 15) {
            return VastResource.Type.STATIC_RESOURCE;
        }
        if (c2 == 35) {
            return VastResource.Type.HTML_RESOURCE;
        }
        if (c2 != 87) {
            return null;
        }
        return VastResource.Type.IFRAME_RESOURCE;
    }

    @Override // com.google.gson.j
    public void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
        } else {
            this.f34186c.c(jsonWriter, obj == VastResource.Type.HTML_RESOURCE ? 35 : obj == VastResource.Type.STATIC_RESOURCE ? 15 : obj == VastResource.Type.BLURRED_LAST_FRAME ? 10 : obj == VastResource.Type.IFRAME_RESOURCE ? 87 : -1);
        }
    }
}
