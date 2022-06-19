package com.google.android.gms.common.util;

import android.os.SystemClock;
/* renamed from: com.google.android.gms.common.util.h */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/h.class */
public class C2711h implements AbstractC2708e {

    /* renamed from: a */
    private static final C2711h f7520a = new C2711h();

    private C2711h() {
    }

    /* renamed from: d */
    public static AbstractC2708e m13859d() {
        return f7520a;
    }

    @Override // com.google.android.gms.common.util.AbstractC2708e
    /* renamed from: a */
    public long mo13862a() {
        return System.currentTimeMillis();
    }

    @Override // com.google.android.gms.common.util.AbstractC2708e
    /* renamed from: b */
    public long mo13861b() {
        return SystemClock.elapsedRealtime();
    }

    @Override // com.google.android.gms.common.util.AbstractC2708e
    /* renamed from: c */
    public long mo13860c() {
        return System.nanoTime();
    }
}
