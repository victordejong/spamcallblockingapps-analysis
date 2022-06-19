package com.twitter.sdk.android.core;

import com.google.gson.C15965f;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import proguard.optimize.gson.C21025a;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
/* renamed from: com.twitter.sdk.android.core.a */
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/a.class */
public abstract class AbstractC17205a {
    protected long createdAt;

    public AbstractC17205a() {
        this(System.currentTimeMillis());
    }

    public AbstractC17205a(long j) {
        this.createdAt = j;
    }

    public /* synthetic */ void fromJson$34(C15965f c15965f, JsonReader jsonReader, _OptimizedJsonReader _optimizedjsonreader) {
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            fromJsonField$34(c15965f, jsonReader, _optimizedjsonreader.mo123b(jsonReader));
        }
        jsonReader.endObject();
    }

    public /* synthetic */ void fromJsonField$34(C15965f c15965f, JsonReader jsonReader, int i) {
        boolean z = jsonReader.peek() != JsonToken.NULL;
        if (i != 31) {
            jsonReader.skipValue();
        } else if (z) {
            this.createdAt = ((Long) c15965f.m7971a(Long.class).read(jsonReader)).longValue();
        } else {
            jsonReader.nextNull();
        }
    }

    public abstract boolean isExpired();

    public /* synthetic */ void toJson$34(C15965f c15965f, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
        jsonWriter.beginObject();
        toJsonBody$34(c15965f, jsonWriter, _optimizedjsonwriter);
        jsonWriter.endObject();
    }

    public /* synthetic */ void toJsonBody$34(C15965f c15965f, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
        _optimizedjsonwriter.mo120b(jsonWriter, 31);
        Class cls = Long.TYPE;
        Long valueOf = Long.valueOf(this.createdAt);
        C21025a.m117a(c15965f, cls, valueOf).write(jsonWriter, valueOf);
    }
}
