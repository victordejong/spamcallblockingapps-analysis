package com.twitter.sdk.android.core.models;

import com.google.gson.a.a;
import com.google.gson.f;
import com.google.gson.j;
import com.google.gson.k;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.Collections;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/models/SafeMapAdapter.class */
public class SafeMapAdapter implements k {
    @Override // com.google.gson.k
    public <T> j<T> create(f fVar, final a<T> aVar) {
        final j<T> a2 = fVar.a(this, aVar);
        return new j<T>() { // from class: com.twitter.sdk.android.core.models.SafeMapAdapter.1
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v11, types: [T, java.util.Map] */
            @Override // com.google.gson.j
            public T read(JsonReader jsonReader) throws IOException {
                Object read = a2.read(jsonReader);
                T t = read;
                if (Map.class.isAssignableFrom(aVar.getRawType())) {
                    if (read == null) {
                        return Collections.EMPTY_MAP;
                    }
                    t = Collections.unmodifiableMap((Map) read);
                }
                return t;
            }

            @Override // com.google.gson.j
            public void write(JsonWriter jsonWriter, T t) throws IOException {
                a2.write(jsonWriter, t);
            }
        };
    }
}
