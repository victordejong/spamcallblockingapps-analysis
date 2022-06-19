package com.twitter.sdk.android.core;

import com.google.gson.AbstractC16088j;
import com.google.gson.C15965f;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import proguard.optimize.gson.AbstractC21026b;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
/* renamed from: com.twitter.sdk.android.core.g */
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/g.class */
public final class C17213g extends AbstractC16088j implements AbstractC21026b {

    /* renamed from: a */
    private C15965f f60937a;

    /* renamed from: b */
    private _OptimizedJsonReader f60938b;

    /* renamed from: c */
    private _OptimizedJsonWriter f60939c;

    public C17213g(C15965f c15965f, _OptimizedJsonReader _optimizedjsonreader, _OptimizedJsonWriter _optimizedjsonwriter) {
        this.f60937a = c15965f;
        this.f60938b = _optimizedjsonreader;
        this.f60939c = _optimizedjsonwriter;
    }

    @Override // com.google.gson.AbstractC16088j
    public final Object read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.skipValue();
            return null;
        }
        AbstractC17205a abstractC17205a = new AbstractC17205a();
        abstractC17205a.fromJson$34(this.f60937a, jsonReader, this.f60938b);
        return abstractC17205a;
    }

    @Override // com.google.gson.AbstractC16088j
    public final void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
        } else {
            ((AbstractC17205a) obj).toJson$34(this.f60937a, jsonWriter, this.f60939c);
        }
    }
}
