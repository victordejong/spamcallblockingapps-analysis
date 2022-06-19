package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dsp.class */
public final class dsp {

    /* renamed from: a */
    public final List<byte[]> f15585a;

    /* renamed from: b */
    public final int f15586b;

    /* renamed from: c */
    public final float f15587c;

    /* renamed from: d */
    private final int f15588d;

    /* renamed from: e */
    private final int f15589e;

    private dsp(List<byte[]> list, int i, int i2, int i3, float f) {
        this.f15585a = list;
        this.f15586b = i;
        this.f15588d = i2;
        this.f15589e = i3;
        this.f15587c = f;
    }

    /* renamed from: a */
    public static dsp m8690a(dsk dskVar) {
        int i;
        int i2;
        try {
            dskVar.m8731d(4);
            int m8728f = (dskVar.m8728f() & 3) + 1;
            if (m8728f == 3) {
                throw new IllegalStateException();
            }
            ArrayList arrayList = new ArrayList();
            int m8728f2 = dskVar.m8728f() & 31;
            for (int i3 = 0; i3 < m8728f2; i3++) {
                arrayList.add(m8689b(dskVar));
            }
            int m8728f3 = dskVar.m8728f();
            for (int i4 = 0; i4 < m8728f3; i4++) {
                arrayList.add(m8689b(dskVar));
            }
            float f = 1.0f;
            if (m8728f2 > 0) {
                dsi m8753a = dsf.m8753a((byte[]) arrayList.get(0), m8728f, ((byte[]) arrayList.get(0)).length);
                i2 = m8753a.f15555a;
                i = m8753a.f15556b;
                f = m8753a.f15557c;
            } else {
                i = -1;
                i2 = -1;
            }
            return new dsp(arrayList, m8728f, i2, i, f);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new zzhi("Error parsing AVC config", e);
        }
    }

    /* renamed from: b */
    private static byte[] m8689b(dsk dskVar) {
        int m8727g = dskVar.m8727g();
        int m8732d = dskVar.m8732d();
        dskVar.m8731d(m8727g);
        return dsc.m8759a(dskVar.f15569a, m8732d, m8727g);
    }
}
