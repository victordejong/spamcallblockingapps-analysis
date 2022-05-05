package com.google.android.datatransport.runtime.time;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/time/TimeModule_UptimeClockFactory.class */
public final class TimeModule_UptimeClockFactory implements Factory<Clock> {

    /* renamed from: a */
    private static final TimeModule_UptimeClockFactory f6838a = new TimeModule_UptimeClockFactory();

    /* renamed from: a */
    public static TimeModule_UptimeClockFactory m15191a() {
        return f6838a;
    }

    /* renamed from: c */
    public static Clock m15189c() {
        Clock b = TimeModule.m15195b();
        Preconditions.m4632c(b, "Cannot return null from a non-@Nullable @Provides method");
        return b;
    }

    /* renamed from: b */
    public Clock get() {
        return m15189c();
    }
}
