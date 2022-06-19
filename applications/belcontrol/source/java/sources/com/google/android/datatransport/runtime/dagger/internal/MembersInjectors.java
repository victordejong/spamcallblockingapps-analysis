package com.google.android.datatransport.runtime.dagger.internal;

import com.google.android.datatransport.runtime.dagger.MembersInjector;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/dagger/internal/MembersInjectors.class */
public final class MembersInjectors {
    private MembersInjectors() {
    }

    public static <T> MembersInjector<T> noOp() {
        return NoOpMembersInjector.INSTANCE;
    }
}
