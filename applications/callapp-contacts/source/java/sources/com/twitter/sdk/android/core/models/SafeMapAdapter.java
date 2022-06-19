package com.twitter.sdk.android.core.models;

import com.google.gson.AbstractC16088j;
import com.google.gson.AbstractC16090k;
import com.google.gson.C15965f;
import com.google.gson.p399a.C15950a;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.Collections;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/models/SafeMapAdapter.class */
public class SafeMapAdapter implements AbstractC16090k {
    @Override // com.google.gson.AbstractC16090k
    public <T> AbstractC16088j<T> create(C15965f c15965f, final C15950a<T> c15950a) {
        final AbstractC16088j<T> m7976a = c15965f.m7976a(this, c15950a);
        return new AbstractC16088j<T>() { // from class: com.twitter.sdk.android.core.models.SafeMapAdapter.1
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v11, types: [T, java.util.Map] */
            @Override // com.google.gson.AbstractC16088j
            public T read(JsonReader jsonReader) throws IOException {
                Object read = m7976a.read(jsonReader);
                Map map = read;
                if (Map.class.isAssignableFrom(c15950a.getRawType())) {
                    if (read == null) {
                        return Collections.EMPTY_MAP;
                    }
                    map = Collections.unmodifiableMap((Map) read);
                }
                return map;
            }

            @Override // com.google.gson.AbstractC16088j
            public void write(JsonWriter jsonWriter, T t) throws IOException {
                m7976a.write(jsonWriter, t);
            }
        };
    }
}
