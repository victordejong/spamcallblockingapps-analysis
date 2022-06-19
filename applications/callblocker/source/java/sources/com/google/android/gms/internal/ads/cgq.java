package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cgq.class */
public final class cgq {

    /* renamed from: a */
    public final int f12952a;

    /* renamed from: b */
    public final int f12953b;

    /* renamed from: c */
    public final boolean f12954c;

    public cgq(int i, int i2, boolean z) {
        this.f12952a = i;
        this.f12953b = i2;
        this.f12954c = z;
    }

    /* renamed from: a */
    public static List<cgq> m11365a(JsonReader jsonReader) {
        ArrayList arrayList = new ArrayList();
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            jsonReader.beginObject();
            boolean z = false;
            int i = 0;
            int i2 = 0;
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                if ("width".equals(nextName)) {
                    i2 = jsonReader.nextInt();
                } else if ("height".equals(nextName)) {
                    i = jsonReader.nextInt();
                } else if ("is_fluid_height".equals(nextName)) {
                    z = jsonReader.nextBoolean();
                } else {
                    jsonReader.skipValue();
                }
            }
            jsonReader.endObject();
            arrayList.add(new cgq(i2, i, z));
        }
        jsonReader.endArray();
        return arrayList;
    }
}
