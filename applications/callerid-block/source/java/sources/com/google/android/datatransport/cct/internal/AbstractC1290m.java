package com.google.android.datatransport.cct.internal;

import android.util.JsonReader;
import android.util.JsonToken;
import com.google.auto.value.AutoValue;
import java.io.IOException;
import java.io.Reader;
@AutoValue
/* renamed from: com.google.android.datatransport.cct.internal.m */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/internal/m.class */
public abstract class AbstractC1290m {
    /* renamed from: a */
    static AbstractC1290m m9257a(long j) {
        return new h(j);
    }

    /* renamed from: b */
    public static AbstractC1290m m9256b(Reader reader) {
        JsonReader jsonReader = new JsonReader(reader);
        try {
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                if (jsonReader.nextName().equals("nextRequestWaitMillis")) {
                    if (jsonReader.peek() == JsonToken.STRING) {
                        AbstractC1290m m9257a = m9257a(Long.parseLong(jsonReader.nextString()));
                        jsonReader.close();
                        return m9257a;
                    }
                    AbstractC1290m m9257a2 = m9257a(jsonReader.nextLong());
                    jsonReader.close();
                    return m9257a2;
                }
                jsonReader.skipValue();
            }
            throw new IOException("Response is missing nextRequestWaitMillis field.");
        } catch (Throwable th) {
            jsonReader.close();
            throw th;
        }
    }

    /* renamed from: c */
    public abstract long m9255c();
}
