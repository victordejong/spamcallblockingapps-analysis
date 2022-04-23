package com.twitter.sdk.android.core.internal.oauth;

import com.google.gson.f;
import com.google.gson.j;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
import proguard.optimize.gson.b;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/internal/oauth/e.class */
public final class e extends j implements b {

    /* renamed from: a  reason: collision with root package name */
    private f f35179a;

    /* renamed from: b  reason: collision with root package name */
    private _OptimizedJsonReader f35180b;

    /* renamed from: c  reason: collision with root package name */
    private _OptimizedJsonWriter f35181c;

    public e(f fVar, _OptimizedJsonReader _optimizedjsonreader, _OptimizedJsonWriter _optimizedjsonwriter) {
        this.f35179a = fVar;
        this.f35180b = _optimizedjsonreader;
        this.f35181c = _optimizedjsonwriter;
    }

    @Override // com.google.gson.j
    public final Object read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.skipValue();
            return null;
        }
        OAuth2Token oAuth2Token = new OAuth2Token();
        oAuth2Token.fromJson$5(this.f35179a, jsonReader, this.f35180b);
        return oAuth2Token;
    }

    @Override // com.google.gson.j
    public final void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
        } else {
            ((OAuth2Token) obj).toJson$5(this.f35179a, jsonWriter, this.f35181c);
        }
    }
}
