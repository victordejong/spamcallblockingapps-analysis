package com.mopub.mobileads;

import com.google.gson.f;
import com.google.gson.j;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import com.mopub.mobileads.VastTracker;
import java.io.IOException;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
import proguard.optimize.gson.b;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/OptimizedVastTracker$MessageTypeTypeAdapter.class */
public class OptimizedVastTracker$MessageTypeTypeAdapter extends j implements b {

    /* renamed from: a  reason: collision with root package name */
    private f f34193a;

    /* renamed from: b  reason: collision with root package name */
    private _OptimizedJsonReader f34194b;

    /* renamed from: c  reason: collision with root package name */
    private _OptimizedJsonWriter f34195c;

    public OptimizedVastTracker$MessageTypeTypeAdapter(f fVar, _OptimizedJsonReader _optimizedjsonreader, _OptimizedJsonWriter _optimizedjsonwriter) {
        this.f34193a = fVar;
        this.f34194b = _optimizedjsonreader;
        this.f34195c = _optimizedjsonwriter;
    }

    @Override // com.google.gson.j
    public Object read(JsonReader jsonReader) throws IOException {
        int c2 = this.f34194b.c(jsonReader);
        if (c2 == 16) {
            return VastTracker.MessageType.QUARTILE_EVENT;
        }
        if (c2 != 21) {
            return null;
        }
        return VastTracker.MessageType.TRACKING_URL;
    }

    @Override // com.google.gson.j
    public void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
        } else {
            this.f34195c.c(jsonWriter, obj == VastTracker.MessageType.QUARTILE_EVENT ? 16 : obj == VastTracker.MessageType.TRACKING_URL ? 21 : -1);
        }
    }
}
