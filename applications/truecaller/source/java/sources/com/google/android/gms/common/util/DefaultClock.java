package com.google.android.gms.common.util;

import android.os.SystemClock;
import com.google.android.gms.common.annotation.KeepForSdk;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/util/DefaultClock.class */
public class DefaultClock implements Clock {

    /* renamed from: a */
    public static final DefaultClock f6131a = new DefaultClock();

    private DefaultClock() {
    }

    @Override // com.google.android.gms.common.util.Clock
    /* renamed from: a */
    public final long mo38789a() {
        return SystemClock.elapsedRealtime();
    }

    @Override // com.google.android.gms.common.util.Clock
    /* renamed from: b */
    public final long mo38788b() {
        return System.nanoTime();
    }

    @Override // com.google.android.gms.common.util.Clock
    /* renamed from: c */
    public final long mo38787c() {
        return System.currentTimeMillis();
    }
}
