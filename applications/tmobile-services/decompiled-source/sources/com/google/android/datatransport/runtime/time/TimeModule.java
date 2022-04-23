package com.google.android.datatransport.runtime.time;

import dagger.Module;
import dagger.Provides;
@Module
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/time/TimeModule.class */
public abstract class TimeModule {
    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @WallTime
    /* renamed from: a */
    public static Clock m15196a() {
        return new WallTimeClock();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Monotonic
    /* renamed from: b */
    public static Clock m15195b() {
        return new UptimeClock();
    }
}
