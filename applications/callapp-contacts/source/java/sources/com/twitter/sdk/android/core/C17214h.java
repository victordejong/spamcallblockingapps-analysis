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
/* renamed from: com.twitter.sdk.android.core.h */
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/h.class */
public final class C17214h extends AbstractC16088j implements AbstractC21026b {

    /* renamed from: a */
    private C15965f f60940a;

    /* renamed from: b */
    private _OptimizedJsonReader f60941b;

    /* renamed from: c */
    private _OptimizedJsonWriter f60942c;

    public C17214h(C15965f c15965f, _OptimizedJsonReader _optimizedjsonreader, _OptimizedJsonWriter _optimizedjsonwriter) {
        this.f60940a = c15965f;
        this.f60941b = _optimizedjsonreader;
        this.f60942c = _optimizedjsonwriter;
    }

    @Override // com.google.gson.AbstractC16088j
    public final Object read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.skipValue();
            return null;
        }
        TwitterAuthToken twitterAuthToken = new TwitterAuthToken();
        twitterAuthToken.fromJson$23(this.f60940a, jsonReader, this.f60941b);
        return twitterAuthToken;
    }

    @Override // com.google.gson.AbstractC16088j
    public final void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
        } else {
            ((TwitterAuthToken) obj).toJson$23(this.f60940a, jsonWriter, this.f60942c);
        }
    }
}
