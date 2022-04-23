package com.google.android.datatransport.runtime;

import com.google.android.datatransport.runtime.a.a.b;
import com.google.android.datatransport.runtime.a.a.e;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/i.class */
public final class i implements b<Executor> {

    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/i$a.class */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        private static final i f20447a = new i();

        private a() {
        }
    }

    @Override // javax.a.a
    public final /* synthetic */ Object a() {
        return (Executor) e.a(new j(Executors.newSingleThreadExecutor()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
