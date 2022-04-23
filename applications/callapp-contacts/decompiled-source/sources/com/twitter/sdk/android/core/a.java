package com.twitter.sdk.android.core;

import com.google.gson.f;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/a.class */
public abstract class a {
    protected long createdAt;

    public a() {
        this(System.currentTimeMillis());
    }

    public a(long j) {
        this.createdAt = j;
    }

    public /* synthetic */ void fromJson$34(f fVar, JsonReader jsonReader, _OptimizedJsonReader _optimizedjsonreader) {
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            fromJsonField$34(fVar, jsonReader, _optimizedjsonreader.b(jsonReader));
        }
        jsonReader.endObject();
    }

    public /* synthetic */ void fromJsonField$34(f fVar, JsonReader jsonReader, int i) {
        boolean z = jsonReader.peek() != JsonToken.NULL;
        if (i != 31) {
            jsonReader.skipValue();
        } else if (z) {
            this.createdAt = ((Long) fVar.a(Long.class).read(jsonReader)).longValue();
        } else {
            jsonReader.nextNull();
        }
    }

    public abstract boolean isExpired();

    public /* synthetic */ void toJson$34(f fVar, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
        jsonWriter.beginObject();
        toJsonBody$34(fVar, jsonWriter, _optimizedjsonwriter);
        jsonWriter.endObject();
    }

    public /* synthetic */ void toJsonBody$34(f fVar, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
        _optimizedjsonwriter.b(jsonWriter, 31);
        Class cls = Long.TYPE;
        Long valueOf = Long.valueOf(this.createdAt);
        proguard.optimize.gson.a.a(fVar, cls, valueOf).write(jsonWriter, valueOf);
    }
}
