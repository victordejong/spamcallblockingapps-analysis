package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/hj2.class */
public final class hj2 {

    /* renamed from: a */
    public final int f23929a;

    /* renamed from: b */
    public final int f23930b;

    /* renamed from: c */
    public final boolean f23931c;

    public hj2(int i, int i2, boolean z) {
        this.f23929a = i;
        this.f23930b = i2;
        this.f23931c = z;
    }

    /* renamed from: a */
    public static List<hj2> m14612a(JsonReader jsonReader) {
        ArrayList arrayList = new ArrayList();
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            jsonReader.beginObject();
            int i = 0;
            int i2 = 0;
            boolean z = false;
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                if ("width".equals(nextName)) {
                    i = jsonReader.nextInt();
                } else if ("height".equals(nextName)) {
                    i2 = jsonReader.nextInt();
                } else if ("is_fluid_height".equals(nextName)) {
                    z = jsonReader.nextBoolean();
                } else {
                    jsonReader.skipValue();
                }
            }
            jsonReader.endObject();
            arrayList.add(new hj2(i, i2, z));
        }
        jsonReader.endArray();
        return arrayList;
    }
}
