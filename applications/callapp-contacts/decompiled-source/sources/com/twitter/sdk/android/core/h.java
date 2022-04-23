package com.twitter.sdk.android.core;

import com.google.gson.f;
import com.google.gson.j;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
import proguard.optimize.gson.b;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/h.class */
public final class h extends j implements b {

    /* renamed from: a  reason: collision with root package name */
    private f f35099a;

    /* renamed from: b  reason: collision with root package name */
    private _OptimizedJsonReader f35100b;

    /* renamed from: c  reason: collision with root package name */
    private _OptimizedJsonWriter f35101c;

    public h(f fVar, _OptimizedJsonReader _optimizedjsonreader, _OptimizedJsonWriter _optimizedjsonwriter) {
        this.f35099a = fVar;
        this.f35100b = _optimizedjsonreader;
        this.f35101c = _optimizedjsonwriter;
    }

    @Override // com.google.gson.j
    public final Object read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.skipValue();
            return null;
        }
        TwitterAuthToken twitterAuthToken = new TwitterAuthToken();
        twitterAuthToken.fromJson$23(this.f35099a, jsonReader, this.f35100b);
        return twitterAuthToken;
    }

    @Override // com.google.gson.j
    public final void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
        } else {
            ((TwitterAuthToken) obj).toJson$23(this.f35099a, jsonWriter, this.f35101c);
        }
    }
}
