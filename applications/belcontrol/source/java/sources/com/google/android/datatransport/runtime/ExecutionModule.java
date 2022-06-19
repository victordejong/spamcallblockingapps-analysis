package com.google.android.datatransport.runtime;

import com.google.android.datatransport.runtime.dagger.Module;
import com.google.android.datatransport.runtime.dagger.Provides;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
@Module
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/ExecutionModule.class */
public abstract class ExecutionModule {
    @Provides
    public static Executor executor() {
        return new SafeLoggingExecutor(Executors.newSingleThreadExecutor());
    }
}
