package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ul0.class */
public final class ul0 {

    /* renamed from: a */
    private long f30659a;

    /* renamed from: a */
    public final long m10318a(ByteBuffer byteBuffer) {
        q04 q04Var;
        r04 r04Var;
        long j = this.f30659a;
        if (j > 0) {
            return j;
        }
        try {
            ByteBuffer duplicate = byteBuffer.duplicate();
            duplicate.flip();
            Iterator<o04> it = new m04(new tl0(duplicate), wl0.f31604c).m13182f().iterator();
            while (true) {
                if (!it.hasNext()) {
                    q04Var = null;
                    break;
                }
                o04 next = it.next();
                if (next instanceof q04) {
                    q04Var = (q04) next;
                    break;
                }
            }
            Iterator<o04> it2 = q04Var.m13182f().iterator();
            while (true) {
                r04Var = null;
                if (!it2.hasNext()) {
                    break;
                }
                o04 next2 = it2.next();
                if (next2 instanceof r04) {
                    r04Var = (r04) next2;
                    break;
                }
            }
            long m11740j = (r04Var.m11740j() * 1000) / r04Var.m11741i();
            this.f30659a = m11740j;
            return m11740j;
        } catch (IOException | RuntimeException e) {
            return 0L;
        }
    }
}
