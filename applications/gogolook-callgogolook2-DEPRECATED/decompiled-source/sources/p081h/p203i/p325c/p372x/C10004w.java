package p081h.p203i.p325c.p372x;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
/* renamed from: h.i.c.x.w */
/* loaded from: classes2-dex2jar.jar:h/i/c/x/w.class */
public final class C10004w {
    @GuardedBy("TopicsStore.class")

    /* renamed from: d */
    public static WeakReference<C10004w> f22614d;

    /* renamed from: a */
    public final SharedPreferences f22615a;

    /* renamed from: b */
    public C10002u f22616b;

    /* renamed from: c */
    public final Executor f22617c;

    public C10004w(SharedPreferences sharedPreferences, Executor executor) {
        this.f22617c = executor;
        this.f22615a = sharedPreferences;
    }

    @WorkerThread
    /* renamed from: a */
    public static C10004w m13670a(Context context, Executor executor) {
        C10004w wVar;
        synchronized (C10004w.class) {
            C10004w wVar2 = null;
            try {
                if (f22614d != null) {
                    wVar2 = f22614d.get();
                }
                wVar = wVar2;
                if (wVar2 == null) {
                    wVar = new C10004w(context.getSharedPreferences("com.google.android.gms.appid", 0), executor);
                    wVar.m13668b();
                    f22614d = new WeakReference<>(wVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return wVar;
    }

    @Nullable
    /* renamed from: a */
    public final C10003v m13671a() {
        C10003v a;
        synchronized (this) {
            a = C10003v.m13677a(this.f22616b.m13682c());
        }
        return a;
    }

    /* renamed from: a */
    public final boolean m13669a(C10003v vVar) {
        boolean a;
        synchronized (this) {
            a = this.f22616b.m13685a(vVar.m13673c());
        }
        return a;
    }

    @WorkerThread
    /* renamed from: b */
    public final void m13668b() {
        synchronized (this) {
            this.f22616b = C10002u.m13687a(this.f22615a, "topic_operation_queue", ",", this.f22617c);
        }
    }

    /* renamed from: b */
    public final boolean m13667b(C10003v vVar) {
        boolean a;
        synchronized (this) {
            a = this.f22616b.m13686a((Object) vVar.m13673c());
        }
        return a;
    }
}
