package com.google.android.datatransport.runtime.scheduling.persistence;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/persistence/EventStoreModule_DbNameFactory.class */
public final class EventStoreModule_DbNameFactory implements Factory<String> {

    /* renamed from: a */
    private static final EventStoreModule_DbNameFactory f6782a = new EventStoreModule_DbNameFactory();

    /* renamed from: a */
    public static EventStoreModule_DbNameFactory m15288a() {
        return f6782a;
    }

    /* renamed from: b */
    public static String m15287b() {
        String a = EventStoreModule.m15291a();
        Preconditions.m4632c(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }

    /* renamed from: c */
    public String get() {
        return m15287b();
    }
}
