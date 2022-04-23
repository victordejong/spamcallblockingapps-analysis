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
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/g.class */
public final class g extends j implements b {

    /* renamed from: a  reason: collision with root package name */
    private f f35096a;

    /* renamed from: b  reason: collision with root package name */
    private _OptimizedJsonReader f35097b;

    /* renamed from: c  reason: collision with root package name */
    private _OptimizedJsonWriter f35098c;

    public g(f fVar, _OptimizedJsonReader _optimizedjsonreader, _OptimizedJsonWriter _optimizedjsonwriter) {
        this.f35096a = fVar;
        this.f35097b = _optimizedjsonreader;
        this.f35098c = _optimizedjsonwriter;
    }

    @Override // com.google.gson.j
    public final Object read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.skipValue();
            return null;
        }
        a aVar = new a();
        aVar.fromJson$34(this.f35096a, jsonReader, this.f35097b);
        return aVar;
    }

    @Override // com.google.gson.j
    public final void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
        } else {
            ((a) obj).toJson$34(this.f35096a, jsonWriter, this.f35098c);
        }
    }
}
