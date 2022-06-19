package com.google.android.datatransport.runtime;

import com.google.android.datatransport.runtime.p316a.p317a.AbstractC10685b;
import com.google.android.datatransport.runtime.p316a.p317a.C10688e;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
/* renamed from: com.google.android.datatransport.runtime.i */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/i.class */
public final class C10732i implements AbstractC10685b<Executor> {

    /* renamed from: com.google.android.datatransport.runtime.i$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/i$a.class */
    static final class C10733a {

        /* renamed from: a */
        private static final C10732i f34594a = new C10732i();

        private C10733a() {
        }
    }

    @Override // javax.p517a.AbstractC18213a
    /* renamed from: a */
    public final /* synthetic */ Object mo4304a() {
        return (Executor) C10688e.m22519a(new ExecutorC10734j(Executors.newSingleThreadExecutor()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
