package p071d6;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.support.p012v4.media.C0082b;
import android.util.SparseIntArray;
import com.google.firebase.perf.metrics.Trace;
import com.google.firebase.perf.session.SessionManager;
import com.google.protobuf.C1913r;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import p015b0.C0713a;
import p026c0.C0788h;
import p081e6.C2583a;
import p104g6.C2905a;
import p158l6.RunnableC3506c;
import p169m6.C3652e;
import p180n6.C3729e;
import p180n6.C3731f;
import p191o6.C3924k;
import p191o6.C3929m;
import p191o6.EnumC3901d;
/* renamed from: d6.a */
/* loaded from: classes-dex2jar.jar:d6/a.class */
public class C2478a implements Application.ActivityLifecycleCallbacks {

    /* renamed from: q */
    public static final C2905a f8713q = C2905a.m2869b();

    /* renamed from: r */
    public static volatile C2478a f8714r;

    /* renamed from: g */
    public final C3652e f8721g;

    /* renamed from: i */
    public final C0713a f8723i;

    /* renamed from: k */
    public C3729e f8725k;

    /* renamed from: l */
    public C3729e f8726l;

    /* renamed from: p */
    public boolean f8730p;

    /* renamed from: a */
    public final WeakHashMap<Activity, Boolean> f8715a = new WeakHashMap<>();

    /* renamed from: b */
    public final WeakHashMap<Activity, Trace> f8716b = new WeakHashMap<>();

    /* renamed from: c */
    public final Map<String, Long> f8717c = new HashMap();

    /* renamed from: d */
    public final Set<WeakReference<AbstractC2480b>> f8718d = new HashSet();

    /* renamed from: e */
    public Set<AbstractC2479a> f8719e = new HashSet();

    /* renamed from: f */
    public final AtomicInteger f8720f = new AtomicInteger(0);

    /* renamed from: m */
    public EnumC3901d f8727m = EnumC3901d.BACKGROUND;

    /* renamed from: n */
    public boolean f8728n = false;

    /* renamed from: o */
    public boolean f8729o = true;

    /* renamed from: h */
    public final C2583a f8722h = C2583a.m3412e();

    /* renamed from: j */
    public C0788h f8724j = new C0788h();

    /* renamed from: d6.a$a */
    /* loaded from: classes-dex2jar.jar:d6/a$a.class */
    public interface AbstractC2479a {
        /* renamed from: a */
        void mo3517a();
    }

    /* renamed from: d6.a$b */
    /* loaded from: classes-dex2jar.jar:d6/a$b.class */
    public interface AbstractC2480b {
        void onUpdateAppState(EnumC3901d enumC3901d);
    }

    public C2478a(C3652e c3652e, C0713a c0713a) {
        this.f8730p = false;
        this.f8721g = c3652e;
        this.f8723i = c0713a;
        this.f8730p = true;
    }

    /* renamed from: a */
    public static C2478a m3524a() {
        if (f8714r == null) {
            synchronized (C2478a.class) {
                try {
                    if (f8714r == null) {
                        f8714r = new C2478a(C3652e.f11967s, new C0713a());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f8714r;
    }

    /* renamed from: b */
    public static String m3523b(Activity activity) {
        StringBuilder m8752j = C0082b.m8752j("_st_");
        m8752j.append(activity.getClass().getSimpleName());
        return m8752j.toString();
    }

    /* renamed from: c */
    public void m3522c(String str, long j) {
        synchronized (this.f8717c) {
            Long l = this.f8717c.get(str);
            if (l == null) {
                this.f8717c.put(str, Long.valueOf(j));
            } else {
                this.f8717c.put(str, Long.valueOf(l.longValue() + j));
            }
        }
    }

    /* renamed from: d */
    public final boolean m3521d(Activity activity) {
        return (!this.f8730p || activity.getWindow() == null || (activity.getWindow().getAttributes().flags & 16777216) == 0) ? false : true;
    }

    /* renamed from: e */
    public final void m3520e(Activity activity) {
        Trace trace;
        int i;
        int i2;
        SparseIntArray sparseIntArray;
        if (this.f8716b.containsKey(activity) && (trace = this.f8716b.get(activity)) != null) {
            this.f8716b.remove(activity);
            SparseIntArray[] mo7373b = this.f8724j.f2918a.mo7373b(activity);
            int i3 = 0;
            int i4 = 0;
            if (mo7373b != null && (sparseIntArray = mo7373b[0]) != null) {
                i3 = 0;
                i2 = 0;
                int i5 = 0;
                while (true) {
                    i = i5;
                    if (i4 >= sparseIntArray.size()) {
                        break;
                    }
                    int keyAt = sparseIntArray.keyAt(i4);
                    int valueAt = sparseIntArray.valueAt(i4);
                    i3 += valueAt;
                    int i6 = i;
                    if (keyAt > 700) {
                        i6 = i + valueAt;
                    }
                    int i7 = i2;
                    if (keyAt > 16) {
                        i7 = i2 + valueAt;
                    }
                    i4++;
                    i2 = i7;
                    i5 = i6;
                }
            } else {
                i2 = 0;
                i = 0;
            }
            if (i3 > 0) {
                trace.putMetric("_fr_tot", i3);
            }
            if (i2 > 0) {
                trace.putMetric("_fr_slo", i2);
            }
            if (i > 0) {
                trace.putMetric("_fr_fzn", i);
            }
            if (C3731f.m1837a(activity.getApplicationContext())) {
                C2905a c2905a = f8713q;
                StringBuilder m8752j = C0082b.m8752j("sendScreenTrace name:");
                m8752j.append(m3523b(activity));
                m8752j.append(" _fr_tot:");
                m8752j.append(i3);
                m8752j.append(" _fr_slo:");
                m8752j.append(i2);
                m8752j.append(" _fr_fzn:");
                m8752j.append(i);
                c2905a.m2870a(m8752j.toString());
            }
            trace.stop();
        }
    }

    /* renamed from: f */
    public final void m3519f(String str, C3729e c3729e, C3729e c3729e2) {
        if (!this.f8722h.m3402o()) {
            return;
        }
        C3929m.C3931b m1604R = C3929m.m1604R();
        m1604R.m4282n();
        C3929m.m1602z((C3929m) m1604R.f7078b, str);
        m1604R.m1600r(c3729e.f12119a);
        m1604R.m1599s(c3729e.m1839b(c3729e2));
        C3924k m2376a = SessionManager.getInstance().perfSession().m2376a();
        m1604R.m4282n();
        C3929m.m1617E((C3929m) m1604R.f7078b, m2376a);
        int andSet = this.f8720f.getAndSet(0);
        synchronized (this.f8717c) {
            Map<String, Long> map = this.f8717c;
            m1604R.m4282n();
            ((C1913r) C3929m.m1621A((C3929m) m1604R.f7078b)).putAll(map);
            if (andSet != 0) {
                m1604R.m1601q("_tsns", andSet);
            }
            this.f8717c.clear();
        }
        C3652e c3652e = this.f8721g;
        c3652e.f11976i.execute(new RunnableC3506c(c3652e, m1604R.m4284l(), EnumC3901d.FOREGROUND_BACKGROUND, 1));
    }

    /* renamed from: g */
    public final void m3518g(EnumC3901d enumC3901d) {
        this.f8727m = enumC3901d;
        synchronized (this.f8718d) {
            Iterator<WeakReference<AbstractC2480b>> it2 = this.f8718d.iterator();
            while (it2.hasNext()) {
                AbstractC2480b abstractC2480b = it2.next().get();
                if (abstractC2480b != null) {
                    abstractC2480b.onUpdateAppState(this.f8727m);
                } else {
                    it2.remove();
                }
            }
        }
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
            if (this.f8715a.isEmpty()) {
                Objects.requireNonNull(this.f8723i);
                this.f8725k = new C3729e();
                this.f8715a.put(activity, Boolean.TRUE);
                m3518g(EnumC3901d.FOREGROUND);
                if (this.f8729o) {
                    synchronized (this.f8718d) {
                        for (AbstractC2479a abstractC2479a : this.f8719e) {
                            if (abstractC2479a != null) {
                                abstractC2479a.mo3517a();
                            }
                        }
                    }
                    this.f8729o = false;
                } else {
                    m3519f("_bs", this.f8726l, this.f8725k);
                }
            } else {
                this.f8715a.put(activity, Boolean.TRUE);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        synchronized (this) {
            if (m3521d(activity) && this.f8722h.m3402o()) {
                this.f8724j.f2918a.mo7374a(activity);
                Trace trace = new Trace(m3523b(activity), this.f8721g, this.f8723i, this);
                trace.start();
                this.f8716b.put(activity, trace);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        synchronized (this) {
            if (m3521d(activity)) {
                m3520e(activity);
            }
            if (this.f8715a.containsKey(activity)) {
                this.f8715a.remove(activity);
                if (this.f8715a.isEmpty()) {
                    Objects.requireNonNull(this.f8723i);
                    this.f8726l = new C3729e();
                    m3518g(EnumC3901d.BACKGROUND);
                    m3519f("_fs", this.f8725k, this.f8726l);
                }
            }
        }
    }
}
