package com.google.android.gms.internal.ads;

import android.util.Log;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/at2.class */
final class at2 {

    /* renamed from: a */
    private long f20118a;

    /* renamed from: b */
    private long f20119b;

    /* renamed from: c */
    private boolean f20120c;

    /* renamed from: d */
    private final long m16486d(long j) {
        return this.f20118a + Math.max(0L, ((this.f20119b - 529) * 1000000) / j);
    }

    /* renamed from: a */
    public final void m16489a() {
        this.f20118a = 0L;
        this.f20119b = 0L;
        this.f20120c = false;
    }

    /* renamed from: b */
    public final long m16488b(C7021u4 c7021u4, C7205z3 c7205z3) {
        if (this.f20119b == 0) {
            this.f20118a = c7205z3.f32800e;
        }
        if (this.f20120c) {
            return c7205z3.f32800e;
        }
        ByteBuffer byteBuffer = c7205z3.f32798c;
        Objects.requireNonNull(byteBuffer);
        int i = 0;
        for (int i2 = 0; i2 < 4; i2++) {
            i = (i << 8) | (byteBuffer.get(i2) & 255);
        }
        int m12177i = pr3.m12177i(i);
        if (m12177i != -1) {
            long m16486d = m16486d(c7021u4.f30493B);
            this.f20119b += m12177i;
            return m16486d;
        }
        this.f20120c = true;
        this.f20119b = 0L;
        this.f20118a = c7205z3.f32800e;
        Log.w("C2Mp3TimestampTracker", "MPEG audio header is invalid.");
        return c7205z3.f32800e;
    }

    /* renamed from: c */
    public final long m16487c(C7021u4 c7021u4) {
        return m16486d(c7021u4.f30493B);
    }
}
