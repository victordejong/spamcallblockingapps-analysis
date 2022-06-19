package com.google.android.gms.common.p271j;

import androidx.annotation.RecentlyNonNull;
import java.util.concurrent.ScheduledExecutorService;
@Deprecated
/* renamed from: com.google.android.gms.common.j.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/j/a.class */
public class C6193a {

    /* renamed from: a */
    private static AbstractC6194a f19637a;

    /* renamed from: com.google.android.gms.common.j.a$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/j/a$a.class */
    public interface AbstractC6194a {
        @RecentlyNonNull
        @Deprecated
        /* renamed from: a */
        ScheduledExecutorService mo16895a();
    }

    @RecentlyNonNull
    @Deprecated
    /* renamed from: a */
    public static AbstractC6194a m16896a() {
        AbstractC6194a abstractC6194a;
        synchronized (C6193a.class) {
            try {
                if (f19637a == null) {
                    f19637a = new C6195b();
                }
                abstractC6194a = f19637a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return abstractC6194a;
    }
}
