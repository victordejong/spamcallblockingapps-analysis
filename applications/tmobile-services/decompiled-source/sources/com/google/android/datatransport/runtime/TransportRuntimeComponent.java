package com.google.android.datatransport.runtime;

import android.content.Context;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStore;
import dagger.BindsInstance;
import dagger.Component;
import java.io.Closeable;
import java.io.IOException;
import javax.inject.Singleton;
/* JADX INFO: Access modifiers changed from: package-private */
@Component
@Singleton
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/TransportRuntimeComponent.class */
public abstract class TransportRuntimeComponent implements Closeable {

    /* JADX INFO: Access modifiers changed from: package-private */
    @Component.Builder
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/TransportRuntimeComponent$Builder.class */
    public interface Builder {
        /* renamed from: a */
        TransportRuntimeComponent mo15407a();

        @BindsInstance
        /* renamed from: b */
        Builder mo15406b(Context context);
    }

    /* renamed from: a */
    abstract EventStore mo15409a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public abstract TransportRuntime mo15408b();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        mo15409a().close();
    }
}
