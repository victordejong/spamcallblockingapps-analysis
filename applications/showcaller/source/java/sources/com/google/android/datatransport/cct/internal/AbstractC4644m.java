package com.google.android.datatransport.cct.internal;

import android.util.JsonReader;
import android.util.JsonToken;
import com.google.auto.value.AutoValue;
import java.io.IOException;
import java.io.Reader;
@AutoValue
/* renamed from: com.google.android.datatransport.cct.internal.m */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/internal/m.class */
public abstract class AbstractC4644m {
    /* renamed from: a */
    static AbstractC4644m m22075a(long j) {
        return new C4635h(j);
    }

    /* renamed from: b */
    public static AbstractC4644m m22074b(Reader reader) {
        JsonReader jsonReader = new JsonReader(reader);
        try {
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                if (jsonReader.nextName().equals("nextRequestWaitMillis")) {
                    return jsonReader.peek() == JsonToken.STRING ? m22075a(Long.parseLong(jsonReader.nextString())) : m22075a(jsonReader.nextLong());
                }
                jsonReader.skipValue();
            }
            throw new IOException("Response is missing nextRequestWaitMillis field.");
        } finally {
            jsonReader.close();
        }
    }

    /* renamed from: c */
    public abstract long mo22073c();
}
