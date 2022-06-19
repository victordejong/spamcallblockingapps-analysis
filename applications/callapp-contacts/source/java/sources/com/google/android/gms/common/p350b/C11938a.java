package com.google.android.gms.common.p350b;

import java.util.concurrent.ScheduledExecutorService;
@Deprecated
/* renamed from: com.google.android.gms.common.b.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/b/a.class */
public final class C11938a {

    /* renamed from: a */
    private static AbstractC11939a f39426a;

    /* renamed from: com.google.android.gms.common.b.a$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/b/a$a.class */
    public interface AbstractC11939a {
        @Deprecated
        /* renamed from: a */
        ScheduledExecutorService mo19277a();
    }

    private C11938a() {
    }

    @Deprecated
    /* renamed from: a */
    public static AbstractC11939a m19278a() {
        AbstractC11939a abstractC11939a;
        synchronized (C11938a.class) {
            try {
                if (f39426a == null) {
                    f39426a = new C11940b();
                }
                abstractC11939a = f39426a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return abstractC11939a;
    }
}
