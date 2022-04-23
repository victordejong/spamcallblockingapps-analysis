package com.google.android.gms.common.b;

import java.util.concurrent.ScheduledExecutorService;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/b/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static AbstractC0456a f22787a;

    /* renamed from: com.google.android.gms.common.b.a$a  reason: collision with other inner class name */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/b/a$a.class */
    public interface AbstractC0456a {
        @Deprecated
        ScheduledExecutorService a();
    }

    private a() {
    }

    @Deprecated
    public static AbstractC0456a a() {
        AbstractC0456a aVar;
        synchronized (a.class) {
            try {
                if (f22787a == null) {
                    f22787a = new b();
                }
                aVar = f22787a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return aVar;
    }
}
