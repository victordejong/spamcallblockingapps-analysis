package com.google.firebase.perf.metrics;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.firebase-perf.zzaa;
import com.google.firebase.perf.provider.FirebasePerfProvider;
import java.lang.ref.WeakReference;
import java.util.concurrent.TimeUnit;
import p081h.p203i.p204a.p224e.p259j.p269j.C7831i6;
import p081h.p203i.p204a.p224e.p259j.p269j.C7917t;
import p081h.p203i.p204a.p224e.p259j.p269j.C7928t5;
import p081h.p203i.p204a.p224e.p259j.p269j.EnumC7852k6;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/metrics/AppStartTrace.class */
public class AppStartTrace implements Application.ActivityLifecycleCallbacks {

    /* renamed from: i */
    public static final long f7777i = TimeUnit.MINUTES.toMicros(1);

    /* renamed from: j */
    public static volatile AppStartTrace f7778j;

    /* renamed from: c */
    public Context f7781c;

    /* renamed from: a */
    public boolean f7779a = false;

    /* renamed from: d */
    public boolean f7782d = false;

    /* renamed from: e */
    public zzaa f7783e = null;

    /* renamed from: f */
    public zzaa f7784f = null;

    /* renamed from: g */
    public zzaa f7785g = null;

    /* renamed from: h */
    public boolean f7786h = false;

    /* renamed from: b */
    public C7928t5 f7780b = null;

    /* renamed from: com.google.firebase.perf.metrics.AppStartTrace$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/metrics/AppStartTrace$a.class */
    public static final class RunnableC3680a implements Runnable {

        /* renamed from: a */
        public final AppStartTrace f7787a;

        public RunnableC3680a(AppStartTrace appStartTrace) {
            this.f7787a = appStartTrace;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.f7787a.f7783e == null) {
                this.f7787a.f7786h = true;
            }
        }
    }

    public AppStartTrace(@Nullable C7928t5 t5Var, @NonNull C7831i6 i6Var) {
    }

    /* renamed from: a */
    public static AppStartTrace m31049a(C7928t5 t5Var, C7831i6 i6Var) {
        if (f7778j == null) {
            synchronized (AppStartTrace.class) {
                try {
                    if (f7778j == null) {
                        f7778j = new AppStartTrace(null, i6Var);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f7778j;
    }

    /* renamed from: b */
    public static AppStartTrace m31048b() {
        return f7778j != null ? f7778j : m31049a((C7928t5) null, new C7831i6());
    }

    @Keep
    public static void setLauncherActivityOnCreateTime(String str) {
    }

    @Keep
    public static void setLauncherActivityOnResumeTime(String str) {
    }

    @Keep
    public static void setLauncherActivityOnStartTime(String str) {
    }

    /* renamed from: a */
    public final void m31053a() {
        synchronized (this) {
            if (this.f7779a) {
                ((Application) this.f7781c).unregisterActivityLifecycleCallbacks(this);
                this.f7779a = false;
            }
        }
    }

    /* renamed from: a */
    public final void m31052a(@NonNull Context context) {
        synchronized (this) {
            if (!this.f7779a) {
                Context applicationContext = context.getApplicationContext();
                if (applicationContext instanceof Application) {
                    ((Application) applicationContext).registerActivityLifecycleCallbacks(this);
                    this.f7779a = true;
                    this.f7781c = applicationContext;
                }
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        synchronized (this) {
            if (!this.f7786h && this.f7783e == null) {
                new WeakReference(activity);
                this.f7783e = new com.google.android.gms.internal.firebase_perf.zzaa();
                if (FirebasePerfProvider.zzaq().m31842a(this.f7783e) > f7777i) {
                    this.f7782d = true;
                }
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        synchronized (this) {
            if (!this.f7786h && this.f7785g == null && !this.f7782d) {
                new WeakReference(activity);
                this.f7785g = new com.google.android.gms.internal.firebase_perf.zzaa();
                zzaa zzaq = FirebasePerfProvider.zzaq();
                String name = activity.getClass().getName();
                long a = zzaq.m31842a(this.f7785g);
                StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 30);
                sb.append("onResume ");
                sb.append(name);
                sb.append(":");
                sb.append(a);
                sb.toString();
                C7917t tVar = new C7917t();
                tVar.f18568c = EnumC7852k6.APP_START_TRACE_NAME.toString();
                tVar.f18570e = Long.valueOf(zzaq.m31841b());
                tVar.f18571f = Long.valueOf(zzaq.m31842a(this.f7785g));
                C7917t tVar2 = new C7917t();
                tVar2.f18568c = EnumC7852k6.ON_CREATE_TRACE_NAME.toString();
                tVar2.f18570e = Long.valueOf(zzaq.m31841b());
                tVar2.f18571f = Long.valueOf(zzaq.m31842a(this.f7783e));
                C7917t tVar3 = new C7917t();
                tVar3.f18568c = EnumC7852k6.ON_START_TRACE_NAME.toString();
                tVar3.f18570e = Long.valueOf(this.f7783e.m31841b());
                tVar3.f18571f = Long.valueOf(this.f7783e.m31842a(this.f7784f));
                C7917t tVar4 = new C7917t();
                tVar4.f18568c = EnumC7852k6.ON_RESUME_TRACE_NAME.toString();
                tVar4.f18570e = Long.valueOf(this.f7784f.m31841b());
                tVar4.f18571f = Long.valueOf(this.f7784f.m31842a(this.f7785g));
                tVar.f18573h = new C7917t[]{tVar2, tVar3, tVar4};
                if (this.f7780b == null) {
                    this.f7780b = C7928t5.m18867c();
                }
                if (this.f7780b != null) {
                    this.f7780b.m18873a(tVar, 3);
                }
                if (this.f7779a) {
                    m31053a();
                }
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        synchronized (this) {
            if (!this.f7786h && this.f7784f == null && !this.f7782d) {
                this.f7784f = new com.google.android.gms.internal.firebase_perf.zzaa();
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        synchronized (this) {
        }
    }
}
