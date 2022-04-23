package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/edg.class */
public final class edg {

    /* renamed from: a  reason: collision with root package name */
    public final List<byte[]> f27668a;

    /* renamed from: b  reason: collision with root package name */
    public final int f27669b;

    /* renamed from: c  reason: collision with root package name */
    public final float f27670c;

    /* renamed from: d  reason: collision with root package name */
    private final int f27671d;
    private final int e;

    private edg(List<byte[]> list, int i, int i2, int i3, float f) {
        this.f27668a = list;
        this.f27669b = i;
        this.f27671d = i2;
        this.e = i3;
        this.f27670c = f;
    }

    public static edg a(ecy ecyVar) throws zzhw {
        float f;
        int i;
        int i2;
        try {
            ecyVar.d(4);
            int d2 = (ecyVar.d() & 3) + 1;
            if (d2 != 3) {
                ArrayList arrayList = new ArrayList();
                int d3 = ecyVar.d() & 31;
                for (int i3 = 0; i3 < d3; i3++) {
                    arrayList.add(b(ecyVar));
                }
                int d4 = ecyVar.d();
                for (int i4 = 0; i4 < d4; i4++) {
                    arrayList.add(b(ecyVar));
                }
                if (d3 > 0) {
                    ecw a2 = ecx.a((byte[]) arrayList.get(0), d2, ((byte[]) arrayList.get(0)).length);
                    i = a2.f27641a;
                    i2 = a2.f27642b;
                    f = a2.f27643c;
                } else {
                    i = -1;
                    i2 = -1;
                    f = 1.0f;
                }
                return new edg(arrayList, d2, i, i2, f);
            }
            throw new IllegalStateException();
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new zzhw("Error parsing AVC config", e);
        }
    }

    private static byte[] b(ecy ecyVar) {
        int e = ecyVar.e();
        int i = ecyVar.f27650b;
        ecyVar.d(e);
        return ecq.a(ecyVar.f27649a, i, e);
    }
}
