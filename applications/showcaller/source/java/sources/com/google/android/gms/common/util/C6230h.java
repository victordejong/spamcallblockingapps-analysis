package com.google.android.gms.common.util;

import android.os.SystemClock;
import androidx.annotation.RecentlyNonNull;
/* renamed from: com.google.android.gms.common.util.h */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/h.class */
public class C6230h implements AbstractC6227e {

    /* renamed from: a */
    private static final C6230h f19709a = new C6230h();

    private C6230h() {
    }

    @RecentlyNonNull
    /* renamed from: d */
    public static AbstractC6227e m16804d() {
        return f19709a;
    }

    @Override // com.google.android.gms.common.util.AbstractC6227e
    /* renamed from: a */
    public final long mo16807a() {
        return System.currentTimeMillis();
    }

    @Override // com.google.android.gms.common.util.AbstractC6227e
    /* renamed from: b */
    public final long mo16806b() {
        return SystemClock.elapsedRealtime();
    }

    @Override // com.google.android.gms.common.util.AbstractC6227e
    /* renamed from: c */
    public final long mo16805c() {
        return System.nanoTime();
    }
}
