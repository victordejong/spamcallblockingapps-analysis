package com.google.android.gms.common.p131b;

import java.util.concurrent.ScheduledExecutorService;
/* renamed from: com.google.android.gms.common.b.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/b/a.class */
public class C2580a {

    /* renamed from: a */
    private static AbstractC2581a f7238a;

    /* renamed from: com.google.android.gms.common.b.a$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/b/a$a.class */
    public interface AbstractC2581a {
        /* renamed from: a */
        ScheduledExecutorService mo14205a();
    }

    /* renamed from: a */
    public static AbstractC2581a m14206a() {
        AbstractC2581a abstractC2581a;
        synchronized (C2580a.class) {
            try {
                if (f7238a == null) {
                    f7238a = new C2582b();
                }
                abstractC2581a = f7238a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return abstractC2581a;
    }
}
