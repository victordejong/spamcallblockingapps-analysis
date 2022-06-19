package com.twitter.sdk.android.core.internal.oauth;

import com.google.gson.AbstractC16088j;
import com.google.gson.C15965f;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import proguard.optimize.gson.AbstractC21026b;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
/* renamed from: com.twitter.sdk.android.core.internal.oauth.e */
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/internal/oauth/e.class */
public final class C17269e extends AbstractC16088j implements AbstractC21026b {

    /* renamed from: a */
    private C15965f f61030a;

    /* renamed from: b */
    private _OptimizedJsonReader f61031b;

    /* renamed from: c */
    private _OptimizedJsonWriter f61032c;

    public C17269e(C15965f c15965f, _OptimizedJsonReader _optimizedjsonreader, _OptimizedJsonWriter _optimizedjsonwriter) {
        this.f61030a = c15965f;
        this.f61031b = _optimizedjsonreader;
        this.f61032c = _optimizedjsonwriter;
    }

    @Override // com.google.gson.AbstractC16088j
    public final Object read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.skipValue();
            return null;
        }
        OAuth2Token oAuth2Token = new OAuth2Token();
        oAuth2Token.fromJson$5(this.f61030a, jsonReader, this.f61031b);
        return oAuth2Token;
    }

    @Override // com.google.gson.AbstractC16088j
    public final void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
        } else {
            ((OAuth2Token) obj).toJson$5(this.f61030a, jsonWriter, this.f61032c);
        }
    }
}
