package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/coy.class */
public final class coy {

    /* renamed from: a */
    public final int f46286a;

    /* renamed from: b */
    public final int f46287b;

    /* renamed from: c */
    public final boolean f46288c;

    public coy(int i, int i2, boolean z) {
        this.f46286a = i;
        this.f46287b = i2;
        this.f46288c = z;
    }

    /* renamed from: a */
    public static List<coy> m17367a(JsonReader jsonReader) throws IllegalStateException, IOException, NumberFormatException {
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
            arrayList.add(new coy(i, i2, z));
        }
        jsonReader.endArray();
        return arrayList;
    }
}
