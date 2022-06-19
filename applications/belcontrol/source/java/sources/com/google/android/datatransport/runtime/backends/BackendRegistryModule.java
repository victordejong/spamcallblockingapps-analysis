package com.google.android.datatransport.runtime.backends;

import com.google.android.datatransport.runtime.dagger.Binds;
import com.google.android.datatransport.runtime.dagger.Module;
@Module
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/backends/BackendRegistryModule.class */
public abstract class BackendRegistryModule {
    @Binds
    public abstract BackendRegistry backendRegistry(MetadataBackendRegistry metadataBackendRegistry);
}
