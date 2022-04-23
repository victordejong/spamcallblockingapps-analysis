package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Iterator;
/* renamed from: com.google.android.gms.internal.ads.bs */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bs.class */
public final class C1671bs {

    /* renamed from: a */
    private long f6199a;

    /* renamed from: a */
    public final long m7918a(ByteBuffer byteBuffer) {
        j40 j40Var;
        k50 k50Var;
        long j = this.f6199a;
        if (j > 0) {
            return j;
        }
        try {
            ByteBuffer duplicate = byteBuffer.duplicate();
            duplicate.flip();
            Iterator it = new g00(new as(duplicate), es.c).B().iterator();
            while (true) {
                k50Var = null;
                if (!it.hasNext()) {
                    j40Var = null;
                    break;
                }
                j40 j40Var2 = (i20) it.next();
                if (j40Var2 instanceof j40) {
                    j40Var = j40Var2;
                    break;
                }
            }
            Iterator it2 = j40Var.B().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                i20 i20Var = (i20) it2.next();
                if (i20Var instanceof k50) {
                    k50Var = (k50) i20Var;
                    break;
                }
            }
            long h = (k50Var.h() * 1000) / k50Var.g();
            this.f6199a = h;
            return h;
        } catch (IOException | RuntimeException e) {
            return 0L;
        }
    }
}
