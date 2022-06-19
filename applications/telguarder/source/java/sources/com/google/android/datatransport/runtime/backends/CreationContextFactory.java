package com.google.android.datatransport.runtime.backends;

import android.content.Context;
import com.google.android.datatransport.runtime.time.Clock;
import javax.inject.Inject;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/backends/CreationContextFactory.class */
class CreationContextFactory {
    private final Context applicationContext;
    private final Clock monotonicClock;
    private final Clock wallClock;

    @Inject
    public CreationContextFactory(Context context, Clock clock, Clock clock2) {
        this.applicationContext = context;
        this.wallClock = clock;
        this.monotonicClock = clock2;
    }

    public CreationContext create(String str) {
        return CreationContext.create(this.applicationContext, this.wallClock, this.monotonicClock, str);
    }
}
