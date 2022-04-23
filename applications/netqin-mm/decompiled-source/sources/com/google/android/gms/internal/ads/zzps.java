package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzps.class */
public final class zzps {

    /* renamed from: a */
    public final List<byte[]> f28796a;

    /* renamed from: b */
    public final int f28797b;

    /* renamed from: c */
    public final float f28798c;

    public zzps(List<byte[]> list, int i, int i2, int i3, float f) {
        this.f28796a = list;
        this.f28797b = i;
        this.f28798c = f;
    }

    /* renamed from: a */
    public static zzps m11612a(zzpk zzpkVar) throws zzhv {
        float f;
        int i;
        int i2;
        try {
            zzpkVar.m11654d(4);
            int g = (zzpkVar.m11650g() & 3) + 1;
            if (g != 3) {
                ArrayList arrayList = new ArrayList();
                int g2 = zzpkVar.m11650g() & 31;
                for (int i3 = 0; i3 < g2; i3++) {
                    arrayList.add(m11611b(zzpkVar));
                }
                int g3 = zzpkVar.m11650g();
                for (int i4 = 0; i4 < g3; i4++) {
                    arrayList.add(m11611b(zzpkVar));
                }
                if (g2 > 0) {
                    zzpi a = zzpf.m11676a((byte[]) arrayList.get(0), g, ((byte[]) arrayList.get(0)).length);
                    i2 = a.f28772a;
                    i = a.f28773b;
                    f = a.f28774c;
                } else {
                    i2 = -1;
                    i = -1;
                    f = 1.0f;
                }
                return new zzps(arrayList, g, i2, i, f);
            }
            throw new IllegalStateException();
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new zzhv("Error parsing AVC config", e);
        }
    }

    /* renamed from: b */
    public static byte[] m11611b(zzpk zzpkVar) {
        int h = zzpkVar.m11649h();
        int b = zzpkVar.m11659b();
        zzpkVar.m11654d(h);
        return zzpc.m11684a(zzpkVar.f28779a, b, h);
    }
}
