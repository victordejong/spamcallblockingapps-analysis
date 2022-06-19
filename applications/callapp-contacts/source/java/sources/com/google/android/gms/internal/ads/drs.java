package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drs.class */
public abstract class drs extends drq implements aqp {

    /* renamed from: a */
    private int f47485a;

    /* renamed from: b */
    private int f47486b;

    public drs(String str) {
        super(str);
    }

    /* renamed from: b */
    public final long m15799b(ByteBuffer byteBuffer) {
        this.f47485a = anm.m18535a(byteBuffer.get());
        this.f47486b = (anm.m18533b(byteBuffer) << 8) + 0 + anm.m18535a(byteBuffer.get());
        return 4L;
    }

    /* renamed from: c */
    public final int m15798c() {
        if (!this.f47467c) {
            m15804b();
        }
        return this.f47485a;
    }
}
