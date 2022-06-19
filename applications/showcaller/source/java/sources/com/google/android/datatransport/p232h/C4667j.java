package com.google.android.datatransport.p232h;

import com.google.android.datatransport.p232h.p233u.p234a.AbstractC4684b;
import com.google.android.datatransport.p232h.p233u.p234a.C4686d;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.datatransport.h.j */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/j.class */
public final class C4667j implements AbstractC4684b<Executor> {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.datatransport.h.j$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/j$a.class */
    public static final class C4668a {

        /* renamed from: a */
        private static final C4667j f14233a = new C4667j();
    }

    /* renamed from: a */
    public static C4667j m22041a() {
        return C4668a.f14233a;
    }

    /* renamed from: b */
    public static Executor m22040b() {
        return (Executor) C4686d.m21994c(AbstractC4666i.m22042a(), "Cannot return null from a non-@Nullable @Provides method");
    }

    /* renamed from: c */
    public Executor get() {
        return m22040b();
    }
}
