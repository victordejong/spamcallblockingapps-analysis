package com.google.android.datatransport.runtime.scheduling.persistence;

import dagger.Module;
import dagger.Provides;
import javax.inject.Named;
@Module
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/persistence/EventStoreModule.class */
public abstract class EventStoreModule {
    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Named
    /* renamed from: a */
    public static String m15291a() {
        return "com.google.android.datatransport.events";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Named
    /* renamed from: b */
    public static int m15290b() {
        return SchemaManager.f6821h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    /* renamed from: c */
    public static EventStoreConfig m15289c() {
        return EventStoreConfig.f6781a;
    }
}
