package com.google.android.datatransport.runtime.time;

import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/time/TestClock.class */
public class TestClock implements Clock {

    /* renamed from: a */
    private final AtomicLong f6836a;

    @Override // com.google.android.datatransport.runtime.time.Clock
    /* renamed from: a */
    public long mo15188a() {
        return this.f6836a.get();
    }
}
