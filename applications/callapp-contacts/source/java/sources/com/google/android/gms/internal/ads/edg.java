package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/edg.class */
public final class edg {

    /* renamed from: a */
    public final List<byte[]> f48748a;

    /* renamed from: b */
    public final int f48749b;

    /* renamed from: c */
    public final float f48750c;

    /* renamed from: d */
    private final int f48751d;

    /* renamed from: e */
    private final int f48752e;

    private edg(List<byte[]> list, int i, int i2, int i3, float f) {
        this.f48748a = list;
        this.f48749b = i;
        this.f48751d = i2;
        this.f48752e = i3;
        this.f48750c = f;
    }

    /* renamed from: a */
    public static edg m15181a(ecy ecyVar) throws zzhw {
        float f;
        int i;
        int i2;
        try {
            ecyVar.m15224d(4);
            int m15225d = (ecyVar.m15225d() & 3) + 1;
            if (m15225d == 3) {
                throw new IllegalStateException();
            }
            ArrayList arrayList = new ArrayList();
            int m15225d2 = ecyVar.m15225d() & 31;
            for (int i3 = 0; i3 < m15225d2; i3++) {
                arrayList.add(m15180b(ecyVar));
            }
            int m15225d3 = ecyVar.m15225d();
            for (int i4 = 0; i4 < m15225d3; i4++) {
                arrayList.add(m15180b(ecyVar));
            }
            if (m15225d2 > 0) {
                ecw m15234a = ecx.m15234a((byte[]) arrayList.get(0), m15225d, ((byte[]) arrayList.get(0)).length);
                i = m15234a.f48710a;
                i2 = m15234a.f48711b;
                f = m15234a.f48712c;
            } else {
                i = -1;
                i2 = -1;
                f = 1.0f;
            }
            return new edg(arrayList, m15225d, i, i2, f);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new zzhw("Error parsing AVC config", e);
        }
    }

    /* renamed from: b */
    private static byte[] m15180b(ecy ecyVar) {
        int m15223e = ecyVar.m15223e();
        int i = ecyVar.f48725b;
        ecyVar.m15224d(m15223e);
        return ecq.m15254a(ecyVar.f48724a, i, m15223e);
    }
}
