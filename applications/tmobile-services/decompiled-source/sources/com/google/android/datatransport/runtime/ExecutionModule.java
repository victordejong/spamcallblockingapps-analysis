package com.google.android.datatransport.runtime;

import dagger.Module;
import dagger.Provides;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import javax.inject.Singleton;
@Module
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/ExecutionModule.class */
abstract class ExecutionModule {
    ExecutionModule() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Singleton
    /* renamed from: a */
    public static Executor m15444a() {
        return new SafeLoggingExecutor(Executors.newSingleThreadExecutor());
    }
}
