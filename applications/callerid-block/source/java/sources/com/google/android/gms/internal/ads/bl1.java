package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bl1.class */
public final class bl1 {

    /* renamed from: a */
    public final int f6157a;

    /* renamed from: b */
    public final int f6158b;

    /* renamed from: c */
    public final boolean f6159c;

    public bl1(int i, int i2, boolean z) {
        this.f6157a = i;
        this.f6158b = i2;
        this.f6159c = z;
    }

    /* renamed from: a */
    public static List<bl1> m7963a(JsonReader jsonReader) {
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
            arrayList.add(new bl1(i, i2, z));
        }
        jsonReader.endArray();
        return arrayList;
    }
}
