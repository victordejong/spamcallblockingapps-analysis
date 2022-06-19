package com.google.android.datatransport.runtime;

import com.google.android.datatransport.runtime.dagger.Module;
import com.google.android.datatransport.runtime.dagger.Provides;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import javax.inject.Singleton;
@Module
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/ExecutionModule.class */
abstract class ExecutionModule {
    ExecutionModule() {
    }

    @Provides
    @Singleton
    public static Executor executor() {
        return new SafeLoggingExecutor(Executors.newSingleThreadExecutor());
    }
}
