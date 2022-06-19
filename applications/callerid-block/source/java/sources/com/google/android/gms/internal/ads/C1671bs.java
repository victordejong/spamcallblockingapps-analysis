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
        og2 og2Var;
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
                if (!it.hasNext()) {
                    og2Var = null;
                    break;
                }
                i20 i20Var = (i20) it.next();
                if (i20Var instanceof j40) {
                    og2Var = (j40) i20Var;
                    break;
                }
            }
            Iterator it2 = og2Var.B().iterator();
            while (true) {
                k50Var = null;
                if (!it2.hasNext()) {
                    break;
                }
                i20 i20Var2 = (i20) it2.next();
                if (i20Var2 instanceof k50) {
                    k50Var = (k50) i20Var2;
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
