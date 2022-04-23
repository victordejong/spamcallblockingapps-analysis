package p131c.p161d.p282e.p340u.p344g;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.util.SparseIntArray;
import com.google.firebase.perf.internal.SessionManager;
import com.google.firebase.perf.metrics.Trace;
import com.google.firebase.perf.p494v1.ApplicationProcessState;
import com.google.firebase.perf.util.Constants$CounterNames;
import com.google.firebase.perf.util.Constants$TraceNames;
import com.google.firebase.perf.util.Timer;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import p012b.p042i.p043h.C0851e;
import p131c.p161d.p282e.p340u.p341d.C5927a;
import p131c.p161d.p282e.p340u.p345h.C5969a;
import p131c.p161d.p282e.p340u.p348k.C5992l;
import p131c.p161d.p282e.p340u.p349l.C5993a;
import p131c.p161d.p282e.p340u.p349l.C5998f;
import p131c.p161d.p282e.p340u.p350m.C6044w;
/* renamed from: c.d.e.u.g.a */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/g/a.class */
public class C5955a implements Application.ActivityLifecycleCallbacks {

    /* renamed from: p */
    public static final C5969a f19342p = C5969a.m22496a();

    /* renamed from: q */
    public static volatile C5955a f19343q;

    /* renamed from: b */
    public final C5992l f19345b;

    /* renamed from: d */
    public final C5993a f19347d;

    /* renamed from: g */
    public Timer f19350g;

    /* renamed from: h */
    public Timer f19351h;

    /* renamed from: m */
    public boolean f19356m;

    /* renamed from: n */
    public C0851e f19357n;

    /* renamed from: a */
    public boolean f19344a = false;

    /* renamed from: e */
    public boolean f19348e = true;

    /* renamed from: f */
    public final WeakHashMap<Activity, Boolean> f19349f = new WeakHashMap<>();

    /* renamed from: i */
    public final Map<String, Long> f19352i = new HashMap();

    /* renamed from: j */
    public AtomicInteger f19353j = new AtomicInteger(0);

    /* renamed from: k */
    public ApplicationProcessState f19354k = ApplicationProcessState.BACKGROUND;

    /* renamed from: l */
    public Set<WeakReference<AbstractC5956a>> f19355l = new HashSet();

    /* renamed from: o */
    public final WeakHashMap<Activity, Trace> f19358o = new WeakHashMap<>();

    /* renamed from: c */
    public C5927a f19346c = C5927a.m22644v();

    /* renamed from: c.d.e.u.g.a$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/u/g/a$a.class */
    public interface AbstractC5956a {
        void onUpdateAppState(ApplicationProcessState applicationProcessState);
    }

    public C5955a(C5992l lVar, C5993a aVar) {
        this.f19356m = false;
        this.f19345b = lVar;
        this.f19347d = aVar;
        boolean b = m22540b();
        this.f19356m = b;
        if (b) {
            this.f19357n = new C0851e();
        }
    }

    /* renamed from: c */
    public static String m22536c(Activity activity) {
        return "_st_" + activity.getClass().getSimpleName();
    }

    /* renamed from: d */
    public static C5955a m22535d() {
        if (f19343q == null) {
            synchronized (C5955a.class) {
                try {
                    if (f19343q == null) {
                        f19343q = new C5955a(C5992l.m22374g(), new C5993a());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f19343q;
    }

    /* renamed from: a */
    public ApplicationProcessState m22548a() {
        return this.f19354k;
    }

    /* renamed from: a */
    public void m22547a(int i) {
        this.f19353j.addAndGet(i);
    }

    /* renamed from: a */
    public void m22545a(Context context) {
        synchronized (this) {
            if (!this.f19344a) {
                Context applicationContext = context.getApplicationContext();
                if (applicationContext instanceof Application) {
                    ((Application) applicationContext).registerActivityLifecycleCallbacks(this);
                    this.f19344a = true;
                }
            }
        }
    }

    /* renamed from: a */
    public final void m22544a(ApplicationProcessState applicationProcessState) {
        this.f19354k = applicationProcessState;
        synchronized (this.f19355l) {
            try {
                Iterator<WeakReference<AbstractC5956a>> it = this.f19355l.iterator();
                while (it.hasNext()) {
                    AbstractC5956a aVar = it.next().get();
                    if (aVar != null) {
                        aVar.onUpdateAppState(this.f19354k);
                    } else {
                        it.remove();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public void m22543a(String str, long j) {
        synchronized (this.f19352i) {
            Long l = this.f19352i.get(str);
            if (l == null) {
                this.f19352i.put(str, Long.valueOf(j));
            } else {
                this.f19352i.put(str, Long.valueOf(l.longValue() + j));
            }
        }
    }

    /* renamed from: a */
    public final void m22542a(String str, Timer timer, Timer timer2) {
        if (this.f19346c.m22645u()) {
            C6044w.C6046b O = C6044w.m22209O();
            O.m22183a(str);
            O.m22187a(timer.m7216c());
            O.m22180b(timer.m7218a(timer2));
            O.m22186a(SessionManager.getInstance().perfSession().m7266a());
            int andSet = this.f19353j.getAndSet(0);
            synchronized (this.f19352i) {
                O.m22181a(this.f19352i);
                if (andSet != 0) {
                    O.m22182a(Constants$CounterNames.TRACE_STARTED_NOT_STOPPED.toString(), andSet);
                }
                this.f19352i.clear();
            }
            this.f19345b.m22387a(O.mo6937a(), ApplicationProcessState.FOREGROUND_BACKGROUND);
        }
    }

    /* renamed from: a */
    public void m22541a(WeakReference<AbstractC5956a> weakReference) {
        synchronized (this.f19355l) {
            this.f19355l.add(weakReference);
        }
    }

    /* renamed from: a */
    public final boolean m22546a(Activity activity) {
        return (!this.f19356m || activity.getWindow() == null || (activity.getWindow().getAttributes().flags & 16777216) == 0) ? false : true;
    }

    /* renamed from: b */
    public final void m22539b(Activity activity) {
        Trace trace;
        int i;
        int i2;
        int i3;
        SparseIntArray sparseIntArray;
        if (this.f19358o.containsKey(activity) && (trace = this.f19358o.get(activity)) != null) {
            this.f19358o.remove(activity);
            SparseIntArray[] b = this.f19357n.m35778b(activity);
            if (b != null && (sparseIntArray = b[0]) != null) {
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
                trace.putMetric(Constants$CounterNames.FRAMES_TOTAL.toString(), i3);
            }
            if (i2 > 0) {
                trace.putMetric(Constants$CounterNames.FRAMES_SLOW.toString(), i2);
            }
            if (i > 0) {
                trace.putMetric(Constants$CounterNames.FRAMES_FROZEN.toString(), i);
            }
            if (C5998f.m22359a(activity.getApplicationContext())) {
                C5969a aVar = f19342p;
                aVar.m22495a("sendScreenTrace name:" + m22536c(activity) + " _fr_tot:" + i3 + " _fr_slo:" + i2 + " _fr_fzn:" + i, new Object[0]);
            }
            trace.stop();
        }
    }

    /* renamed from: b */
    public void m22538b(WeakReference<AbstractC5956a> weakReference) {
        synchronized (this.f19355l) {
            this.f19355l.remove(weakReference);
        }
    }

    /* renamed from: b */
    public final boolean m22540b() {
        try {
            Class.forName("b.i.h.e");
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    /* renamed from: c */
    public boolean m22537c() {
        return this.f19348e;
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
            if (this.f19349f.isEmpty()) {
                this.f19351h = this.f19347d.m22373a();
                this.f19349f.put(activity, true);
                m22544a(ApplicationProcessState.FOREGROUND);
                if (this.f19348e) {
                    this.f19348e = false;
                } else {
                    m22542a(Constants$TraceNames.BACKGROUND_TRACE_NAME.toString(), this.f19350g, this.f19351h);
                }
            } else {
                this.f19349f.put(activity, true);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        synchronized (this) {
            if (m22546a(activity) && this.f19346c.m22645u()) {
                this.f19357n.m35779a(activity);
                Trace trace = new Trace(m22536c(activity), this.f19345b, this.f19347d, this);
                trace.start();
                this.f19358o.put(activity, trace);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        synchronized (this) {
            if (m22546a(activity)) {
                m22539b(activity);
            }
            if (this.f19349f.containsKey(activity)) {
                this.f19349f.remove(activity);
                if (this.f19349f.isEmpty()) {
                    this.f19350g = this.f19347d.m22373a();
                    m22544a(ApplicationProcessState.BACKGROUND);
                    m22542a(Constants$TraceNames.FOREGROUND_TRACE_NAME.toString(), this.f19351h, this.f19350g);
                }
            }
        }
    }
}
