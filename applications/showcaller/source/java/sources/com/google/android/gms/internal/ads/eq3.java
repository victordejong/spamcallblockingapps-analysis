package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/eq3.class */
public final class eq3 {

    /* renamed from: a */
    public final List<byte[]> f22307a;

    /* renamed from: b */
    public final int f22308b;

    /* renamed from: c */
    public final int f22309c;

    /* renamed from: d */
    public final int f22310d;

    /* renamed from: e */
    public final float f22311e;

    /* renamed from: f */
    public final String f22312f;

    private eq3(List<byte[]> list, int i, int i2, int i3, float f, String str) {
        this.f22307a = list;
        this.f22308b = i;
        this.f22309c = i2;
        this.f22310d = i3;
        this.f22311e = f;
        this.f22312f = str;
    }

    /* renamed from: a */
    public static eq3 m15405a(C6694la c6694la) {
        float f;
        int i;
        int i2;
        String str;
        try {
            c6694la.m13632s(4);
            int m13629v = (c6694la.m13629v() & 3) + 1;
            if (m13629v == 3) {
                throw new IllegalStateException();
            }
            ArrayList arrayList = new ArrayList();
            int m13629v2 = c6694la.m13629v() & 31;
            for (int i3 = 0; i3 < m13629v2; i3++) {
                arrayList.add(m15404b(c6694la));
            }
            int m13629v3 = c6694la.m13629v();
            for (int i4 = 0; i4 < m13629v3; i4++) {
                arrayList.add(m15404b(c6694la));
            }
            if (m13629v2 > 0) {
                C6285aa m16422b = C6322ba.m16422b((byte[]) arrayList.get(0), m13629v, ((byte[]) arrayList.get(0)).length);
                i = m16422b.f19863e;
                i2 = m16422b.f19864f;
                f = m16422b.f19865g;
                str = C6284a9.m16673a(m16422b.f19859a, m16422b.f19860b, m16422b.f19861c);
            } else {
                str = null;
                i = -1;
                i2 = -1;
                f = 1.0f;
            }
            return new eq3(arrayList, m13629v, i, i2, f, str);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw zzaha.zzb("Error parsing AVC config", e);
        }
    }

    /* renamed from: b */
    private static byte[] m15404b(C6694la c6694la) {
        int m13628w = c6694la.m13628w();
        int m13636o = c6694la.m13636o();
        c6694la.m13632s(m13628w);
        return C6284a9.m16671c(c6694la.m13634q(), m13636o, m13628w);
    }
}
