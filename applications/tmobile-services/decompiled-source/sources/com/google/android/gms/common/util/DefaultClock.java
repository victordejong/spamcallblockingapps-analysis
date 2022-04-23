package com.google.android.gms.common.util;

import android.os.SystemClock;
import com.google.android.gms.common.annotation.KeepForSdk;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/DefaultClock.class */
public class DefaultClock implements Clock {

    /* renamed from: a */
    private static final DefaultClock f7640a = new DefaultClock();

    private DefaultClock() {
    }

    @KeepForSdk
    /* renamed from: c */
    public static Clock m14333c() {
        return f7640a;
    }

    @Override // com.google.android.gms.common.util.Clock
    /* renamed from: a */
    public long mo14335a() {
        return System.currentTimeMillis();
    }

    @Override // com.google.android.gms.common.util.Clock
    /* renamed from: b */
    public long mo14334b() {
        return SystemClock.elapsedRealtime();
    }

    @Override // com.google.android.gms.common.util.Clock
    public long nanoTime() {
        return System.nanoTime();
    }
}
