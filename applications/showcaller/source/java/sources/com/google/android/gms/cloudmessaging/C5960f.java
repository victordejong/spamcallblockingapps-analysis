package com.google.android.gms.cloudmessaging;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.util.p273v.ThreadFactoryC6244a;
import com.google.android.gms.tasks.AbstractC7966g;
import java.util.concurrent.ScheduledExecutorService;
import p078c.p084c.p085a.p086a.p088b.p090b.C1841a;
import p078c.p084c.p085a.p086a.p088b.p090b.C1846f;
/* renamed from: com.google.android.gms.cloudmessaging.f */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/cloudmessaging/f.class */
public final class C5960f {

    /* renamed from: a */
    private static C5960f f19107a;

    /* renamed from: b */
    private final Context f19108b;

    /* renamed from: c */
    private final ScheduledExecutorService f19109c;

    /* renamed from: d */
    private ServiceConnectionC5961g f19110d = new ServiceConnectionC5961g(this);

    /* renamed from: e */
    private int f19111e = 1;

    private C5960f(Context context, ScheduledExecutorService scheduledExecutorService) {
        this.f19109c = scheduledExecutorService;
        this.f19108b = context.getApplicationContext();
    }

    /* renamed from: a */
    private final int m17530a() {
        int i;
        synchronized (this) {
            i = this.f19111e;
            this.f19111e = i + 1;
        }
        return i;
    }

    /* renamed from: b */
    public static /* synthetic */ Context m17529b(C5960f c5960f) {
        return c5960f.f19108b;
    }

    /* renamed from: c */
    public static C5960f m17528c(Context context) {
        C5960f c5960f;
        synchronized (C5960f.class) {
            try {
                if (f19107a == null) {
                    f19107a = new C5960f(context, C1841a.m28799a().mo28797b(1, new ThreadFactoryC6244a("MessengerIpcClient"), C1846f.f6753b));
                }
                c5960f = f19107a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c5960f;
    }

    /* renamed from: e */
    private final <T> AbstractC7966g<T> m17526e(AbstractC5971q<T> abstractC5971q) {
        AbstractC7966g<T> m5807a;
        synchronized (this) {
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                String valueOf = String.valueOf(abstractC5971q);
                StringBuilder sb = new StringBuilder(valueOf.length() + 9);
                sb.append("Queueing ");
                sb.append(valueOf);
                Log.d("MessengerIpcClient", sb.toString());
            }
            if (!this.f19110d.m17519e(abstractC5971q)) {
                ServiceConnectionC5961g serviceConnectionC5961g = new ServiceConnectionC5961g(this);
                this.f19110d = serviceConnectionC5961g;
                serviceConnectionC5961g.m17519e(abstractC5971q);
            }
            m5807a = abstractC5971q.f19129b.m5807a();
        }
        return m5807a;
    }

    /* renamed from: g */
    public static /* synthetic */ ScheduledExecutorService m17524g(C5960f c5960f) {
        return c5960f.f19109c;
    }

    /* renamed from: d */
    public final AbstractC7966g<Void> m17527d(int i, Bundle bundle) {
        return m17526e(new C5969o(m17530a(), 2, bundle));
    }

    /* renamed from: f */
    public final AbstractC7966g<Bundle> m17525f(int i, Bundle bundle) {
        return m17526e(new C5973s(m17530a(), 1, bundle));
    }
}
