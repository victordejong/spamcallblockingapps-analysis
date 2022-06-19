package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dhe.class */
public abstract class dhe extends dhc implements adi {

    /* renamed from: b */
    private int f14357b;

    /* renamed from: c */
    private int f14358c;

    public dhe(String str) {
        super(str);
    }

    /* renamed from: b */
    public final long m9465b(ByteBuffer byteBuffer) {
        this.f14357b = aej.m13545a(byteBuffer.get());
        this.f14358c = (aej.m13543b(byteBuffer) << 8) + 0 + aej.m13545a(byteBuffer.get());
        return 4L;
    }

    /* renamed from: e */
    public final int m9464e() {
        if (!this.f14338a) {
            m9469d();
        }
        return this.f14357b;
    }
}
