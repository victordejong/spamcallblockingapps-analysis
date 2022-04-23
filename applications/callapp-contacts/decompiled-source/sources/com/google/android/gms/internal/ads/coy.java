package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/coy.class */
public final class coy {

    /* renamed from: a  reason: collision with root package name */
    public final int f26193a;

    /* renamed from: b  reason: collision with root package name */
    public final int f26194b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f26195c;

    public coy(int i, int i2, boolean z) {
        this.f26193a = i;
        this.f26194b = i2;
        this.f26195c = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<coy> a(JsonReader jsonReader) throws IllegalStateException, IOException, NumberFormatException {
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
