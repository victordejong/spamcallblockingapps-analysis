package p081h.p203i.p204a.p224e.p259j.p269j;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.util.SparseIntArray;
import androidx.annotation.NonNull;
import androidx.core.app.FrameMetricsAggregator;
import com.google.android.gms.internal.firebase-perf.zzaa;
import com.google.firebase.perf.metrics.Trace;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: h.i.a.e.j.j.a3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/a3.class */
public class C7761a3 implements Application.ActivityLifecycleCallbacks {

    /* renamed from: o */
    public static volatile C7761a3 f18177o;

    /* renamed from: c */
    public final C7831i6 f18180c;

    /* renamed from: f */
    public zzaa f18183f;

    /* renamed from: g */
    public zzaa f18184g;

    /* renamed from: l */
    public boolean f18189l;

    /* renamed from: m */
    public FrameMetricsAggregator f18190m;

    /* renamed from: a */
    public boolean f18178a = false;

    /* renamed from: d */
    public boolean f18181d = true;

    /* renamed from: e */
    public final WeakHashMap<Activity, Boolean> f18182e = new WeakHashMap<>();

    /* renamed from: h */
    public final Map<String, Long> f18185h = new HashMap();

    /* renamed from: i */
    public AtomicInteger f18186i = new AtomicInteger(0);

    /* renamed from: j */
    public int f18187j = 2;

    /* renamed from: k */
    public Set<WeakReference<AbstractC7762a>> f18188k = new HashSet();

    /* renamed from: n */
    public final WeakHashMap<Activity, Trace> f18191n = new WeakHashMap<>();

    /* renamed from: b */
    public C7928t5 f18179b = null;

    /* renamed from: h.i.a.e.j.j.a3$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/a3$a.class */
    public interface AbstractC7762a {
        /* renamed from: a */
        void mo19353a(int i);
    }

    public C7761a3(C7928t5 t5Var, C7831i6 i6Var) {
        this.f18189l = false;
        this.f18180c = i6Var;
        this.f18189l = m19546e();
        if (this.f18189l) {
            this.f18190m = new FrameMetricsAggregator();
        }
    }

    /* renamed from: a */
    public static C7761a3 m19556a(C7928t5 t5Var, C7831i6 i6Var) {
        if (f18177o == null) {
            synchronized (C7761a3.class) {
                try {
                    if (f18177o == null) {
                        f18177o = new C7761a3(null, i6Var);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f18177o;
    }

    /* renamed from: a */
    public static String m19558a(Activity activity) {
        String valueOf = String.valueOf(activity.getClass().getSimpleName());
        return valueOf.length() != 0 ? "_st_".concat(valueOf) : new String("_st_");
    }

    /* renamed from: d */
    public static C7761a3 m19547d() {
        return f18177o != null ? f18177o : m19556a((C7928t5) null, new C7831i6());
    }

    /* renamed from: e */
    public static boolean m19546e() {
        try {
            Class.forName("androidx.core.app.FrameMetricsAggregator");
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    /* renamed from: a */
    public final int m19560a() {
        return this.f18187j;
    }

    /* renamed from: a */
    public final void m19559a(int i) {
        this.f18186i.addAndGet(1);
    }

    /* renamed from: a */
    public final void m19557a(Context context) {
        synchronized (this) {
            if (!this.f18178a) {
                Context applicationContext = context.getApplicationContext();
                if (applicationContext instanceof Application) {
                    ((Application) applicationContext).registerActivityLifecycleCallbacks(this);
                    this.f18178a = true;
                }
            }
        }
    }

    /* renamed from: a */
    public final void m19555a(@NonNull String str, long j) {
        synchronized (this.f18185h) {
            Long l = this.f18185h.get(str);
            if (l == null) {
                this.f18185h.put(str, 1L);
            } else {
                this.f18185h.put(str, Long.valueOf(l.longValue() + 1));
            }
        }
    }

    /* renamed from: a */
    public final void m19554a(String str, zzaa zzaaVar, zzaa zzaaVar2) {
        m19551b();
        C7917t tVar = new C7917t();
        tVar.f18568c = str;
        tVar.f18570e = Long.valueOf(zzaaVar.m31841b());
        tVar.f18571f = Long.valueOf(zzaaVar.m31842a(zzaaVar2));
        int i = 0;
        int andSet = this.f18186i.getAndSet(0);
        synchronized (this.f18185h) {
            if (!this.f18185h.isEmpty() || andSet != 0) {
                tVar.f18572g = new C7929u[andSet != 0 ? this.f18185h.size() + 1 : this.f18185h.size()];
                for (String str2 : this.f18185h.keySet()) {
                    long longValue = this.f18185h.get(str2).longValue();
                    C7929u uVar = new C7929u();
                    uVar.f18607c = str2;
                    uVar.f18608d = Long.valueOf(longValue);
                    tVar.f18572g[i] = uVar;
                    i++;
                }
                if (andSet != 0) {
                    C7929u uVar2 = new C7929u();
                    uVar2.f18607c = EnumC7844j6.TRACE_STARTED_NOT_STOPPED.toString();
                    uVar2.f18608d = Long.valueOf(andSet);
                    tVar.f18572g[i] = uVar2;
                }
            }
            this.f18185h.clear();
        }
        C7928t5 t5Var = this.f18179b;
        if (t5Var != null) {
            t5Var.m18873a(tVar, 3);
        }
    }

    /* renamed from: a */
    public final void m19553a(WeakReference<AbstractC7762a> weakReference) {
        synchronized (this.f18188k) {
            this.f18188k.add(weakReference);
        }
    }

    /* renamed from: a */
    public final void m19552a(boolean z) {
        m19551b();
        C7928t5 t5Var = this.f18179b;
        if (t5Var != null) {
            t5Var.m18872a(z);
        }
    }

    /* renamed from: b */
    public final void m19551b() {
        if (this.f18179b == null) {
            this.f18179b = C7928t5.m18867c();
        }
    }

    /* renamed from: b */
    public final void m19550b(int i) {
        this.f18187j = i;
        synchronized (this.f18188k) {
            Iterator<WeakReference<AbstractC7762a>> it = this.f18188k.iterator();
            while (it.hasNext()) {
                AbstractC7762a aVar = it.next().get();
                if (aVar != null) {
                    aVar.mo19353a(this.f18187j);
                } else {
                    it.remove();
                }
            }
        }
    }

    /* renamed from: b */
    public final void m19549b(WeakReference<AbstractC7762a> weakReference) {
        synchronized (this.f18188k) {
            this.f18188k.remove(weakReference);
        }
    }

    /* renamed from: c */
    public final boolean m19548c() {
        return this.f18189l && C7797e6.m19428b();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
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
            if (this.f18182e.isEmpty()) {
                this.f18184g = new com.google.android.gms.internal.firebase_perf.zzaa();
                this.f18182e.put(activity, true);
                if (this.f18181d) {
                    this.f18181d = false;
                    m19550b(1);
                    m19552a(true);
                    return;
                }
                m19550b(1);
                m19552a(true);
                m19554a(EnumC7852k6.BACKGROUND_TRACE_NAME.toString(), this.f18183f, this.f18184g);
                return;
            }
            this.f18182e.put(activity, true);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        synchronized (this) {
            if (m19548c()) {
                this.f18190m.add(activity);
                m19551b();
                Trace trace = new Trace(m19558a(activity), this.f18179b, this.f18180c, this);
                trace.start();
                this.f18191n.put(activity, trace);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        Trace trace;
        int i;
        int i2;
        int i3;
        SparseIntArray sparseIntArray;
        synchronized (this) {
            if (m19548c() && this.f18191n.containsKey(activity) && (trace = this.f18191n.get(activity)) != null) {
                this.f18191n.remove(activity);
                SparseIntArray[] remove = this.f18190m.remove(activity);
                if (remove != null && (sparseIntArray = remove[0]) != null) {
                    int i4 = 0;
                    int i5 = 0;
                    int i6 = 0;
                    int i7 = 0;
                    while (true) {
                        i3 = i5;
                        i2 = i6;
                        i = i7;
                        if (i4 >= sparseIntArray.size()) {
                            break;
                        }
                        int keyAt = sparseIntArray.keyAt(i4);
                        int valueAt = sparseIntArray.valueAt(i4);
                        i5 += valueAt;
                        i7 = i7;
                        if (keyAt > 700) {
                            i7 += valueAt;
                        }
                        i6 = i6;
                        if (keyAt > 16) {
                            i6 += valueAt;
                        }
                        i4++;
                    }
                } else {
                    i3 = 0;
                    i2 = 0;
                    i = 0;
                }
                if (i3 > 0) {
                    trace.incrementCounter(EnumC7844j6.FRAMES_TOTAL.toString(), i3);
                }
                if (i2 > 0) {
                    trace.incrementCounter(EnumC7844j6.FRAMES_SLOW.toString(), i2);
                }
                if (i > 0) {
                    trace.incrementCounter(EnumC7844j6.FRAMES_FROZEN.toString(), i);
                }
                if (C7790e.m19481a(activity.getApplicationContext())) {
                    String a = m19558a(activity);
                    StringBuilder sb = new StringBuilder(String.valueOf(a).length() + 81);
                    sb.append("sendScreenTrace name:");
                    sb.append(a);
                    sb.append(" _fr_tot:");
                    sb.append(i3);
                    sb.append(" _fr_slo:");
                    sb.append(i2);
                    sb.append(" _fr_fzn:");
                    sb.append(i);
                    sb.toString();
                }
                trace.stop();
            }
            if (this.f18182e.containsKey(activity)) {
                this.f18182e.remove(activity);
                if (this.f18182e.isEmpty()) {
                    this.f18183f = new com.google.android.gms.internal.firebase_perf.zzaa();
                    m19550b(2);
                    m19552a(false);
                    m19554a(EnumC7852k6.FOREGROUND_TRACE_NAME.toString(), this.f18184g, this.f18183f);
                }
            }
        }
    }
}
