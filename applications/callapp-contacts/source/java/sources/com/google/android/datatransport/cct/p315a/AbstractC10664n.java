package com.google.android.datatransport.cct.p315a;

import android.util.JsonReader;
import android.util.JsonToken;
import java.io.IOException;
import java.io.Reader;
/* renamed from: com.google.android.datatransport.cct.a.n */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/a/n.class */
public abstract class AbstractC10664n {
    /* renamed from: a */
    private static AbstractC10664n m22536a(long j) {
        return new C10652h(j);
    }

    /* renamed from: a */
    public static AbstractC10664n m22535a(Reader reader) throws IOException {
        JsonReader jsonReader = new JsonReader(reader);
        try {
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                if (jsonReader.nextName().equals("nextRequestWaitMillis")) {
                    return jsonReader.peek() == JsonToken.STRING ? m22536a(Long.parseLong(jsonReader.nextString())) : m22536a(jsonReader.nextLong());
                }
                jsonReader.skipValue();
            }
            throw new IOException("Response is missing nextRequestWaitMillis field.");
        } finally {
            jsonReader.close();
        }
    }

    /* renamed from: a */
    public abstract long mo22537a();
}
