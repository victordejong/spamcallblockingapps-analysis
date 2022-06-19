package com.google.android.gms.common.p079f;

import androidx.annotation.RecentlyNonNull;
import java.util.concurrent.ScheduledExecutorService;
@Deprecated
/* renamed from: com.google.android.gms.common.f.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/f/a.class */
public class C1558a {

    /* renamed from: a */
    private static AbstractC1559a f5819a;

    /* renamed from: com.google.android.gms.common.f.a$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/f/a$a.class */
    public interface AbstractC1559a {
        @RecentlyNonNull
        @Deprecated
        /* renamed from: a */
        ScheduledExecutorService m8437a();
    }

    @RecentlyNonNull
    @Deprecated
    /* renamed from: a */
    public static AbstractC1559a m8438a() {
        AbstractC1559a abstractC1559a;
        synchronized (C1558a.class) {
            try {
                if (f5819a == null) {
                    f5819a = new b();
                }
                abstractC1559a = f5819a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return abstractC1559a;
    }
}
