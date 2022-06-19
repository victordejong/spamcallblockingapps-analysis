package com.google.android.gms.common.util;

import android.os.SystemClock;
/* renamed from: com.google.android.gms.common.util.i */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/util/i.class */
public final class C12105i implements AbstractC12102f {

    /* renamed from: a */
    private static final C12105i f39627a = new C12105i();

    private C12105i() {
    }

    /* renamed from: d */
    public static AbstractC12102f m19036d() {
        return f39627a;
    }

    @Override // com.google.android.gms.common.util.AbstractC12102f
    /* renamed from: a */
    public final long mo19039a() {
        return System.currentTimeMillis();
    }

    @Override // com.google.android.gms.common.util.AbstractC12102f
    /* renamed from: b */
    public final long mo19038b() {
        return SystemClock.elapsedRealtime();
    }

    @Override // com.google.android.gms.common.util.AbstractC12102f
    /* renamed from: c */
    public final long mo19037c() {
        return System.nanoTime();
    }
}
