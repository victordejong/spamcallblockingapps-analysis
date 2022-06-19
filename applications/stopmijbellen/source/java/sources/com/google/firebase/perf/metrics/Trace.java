package com.google.firebase.perf.metrics;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import androidx.annotation.Keep;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.firebase.perf.session.SessionManager;
import com.google.firebase.perf.session.gauges.GaugeManager;
import java.lang.ref.WeakReference;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import p007a6.C0033h;
import p015b0.C0713a;
import p071d6.AbstractC2481b;
import p071d6.C2478a;
import p081e6.C2583a;
import p104g6.C2905a;
import p104g6.C2906b;
import p115h6.C3011a;
import p115h6.C3014c;
import p126i6.AbstractC3125e;
import p147k6.AbstractC3327b;
import p147k6.C3325a;
import p158l6.RunnableC3506c;
import p169m6.C3652e;
import p180n6.C3729e;
/* loaded from: classes-dex2jar.jar:com/google/firebase/perf/metrics/Trace.class */
public class Trace extends AbstractC2481b implements Parcelable, AbstractC3327b {

    /* renamed from: a */
    public final WeakReference<AbstractC3327b> f6987a;

    /* renamed from: b */
    public final Trace f6988b;

    /* renamed from: c */
    public final GaugeManager f6989c;

    /* renamed from: d */
    public final String f6990d;

    /* renamed from: e */
    public final Map<String, C3011a> f6991e;

    /* renamed from: f */
    public final Map<String, String> f6992f;

    /* renamed from: g */
    public final List<C3325a> f6993g;

    /* renamed from: h */
    public final List<Trace> f6994h;

    /* renamed from: i */
    public final C3652e f6995i;

    /* renamed from: j */
    public final C0713a f6996j;

    /* renamed from: k */
    public C3729e f6997k;

    /* renamed from: l */
    public C3729e f6998l;

    /* renamed from: m */
    public static final C2905a f6986m = C2905a.m2869b();
    @Keep
    public static final Parcelable.Creator<Trace> CREATOR = new C1852a();

    /* renamed from: com.google.firebase.perf.metrics.Trace$a */
    /* loaded from: classes-dex2jar.jar:com/google/firebase/perf/metrics/Trace$a.class */
    public class C1852a implements Parcelable.Creator<Trace> {
        @Override // android.os.Parcelable.Creator
        public Trace createFromParcel(Parcel parcel) {
            return new Trace(parcel, false, null);
        }

        @Override // android.os.Parcelable.Creator
        public Trace[] newArray(int i) {
            return new Trace[i];
        }
    }

    static {
        new ConcurrentHashMap();
    }

    public Trace(Parcel parcel, boolean z, C1852a c1852a) {
        super(z ? null : C2478a.m3524a());
        this.f6987a = new WeakReference<>(this);
        this.f6988b = (Trace) parcel.readParcelable(Trace.class.getClassLoader());
        this.f6990d = parcel.readString();
        ArrayList arrayList = new ArrayList();
        this.f6994h = arrayList;
        parcel.readList(arrayList, Trace.class.getClassLoader());
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        this.f6991e = concurrentHashMap;
        this.f6992f = new ConcurrentHashMap();
        parcel.readMap(concurrentHashMap, C3011a.class.getClassLoader());
        this.f6997k = (C3729e) parcel.readParcelable(C3729e.class.getClassLoader());
        this.f6998l = (C3729e) parcel.readParcelable(C3729e.class.getClassLoader());
        List<C3325a> synchronizedList = Collections.synchronizedList(new ArrayList());
        this.f6993g = synchronizedList;
        parcel.readList(synchronizedList, C3325a.class.getClassLoader());
        if (z) {
            this.f6995i = null;
            this.f6996j = null;
            this.f6989c = null;
            return;
        }
        this.f6995i = C3652e.f11967s;
        this.f6996j = new C0713a();
        this.f6989c = GaugeManager.getInstance();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Trace(String str, C3652e c3652e, C0713a c0713a, C2478a c2478a) {
        super(c2478a);
        GaugeManager gaugeManager = GaugeManager.getInstance();
        this.f6987a = new WeakReference<>(this);
        this.f6988b = null;
        this.f6990d = str.trim();
        this.f6994h = new ArrayList();
        this.f6991e = new ConcurrentHashMap();
        this.f6992f = new ConcurrentHashMap();
        this.f6996j = c0713a;
        this.f6995i = c3652e;
        this.f6993g = Collections.synchronizedList(new ArrayList());
        this.f6989c = gaugeManager;
    }

    @Override // p147k6.AbstractC3327b
    /* renamed from: a */
    public void mo2373a(C3325a c3325a) {
        if (c3325a != null) {
            if (!m4465c() || m4464e()) {
                return;
            }
            this.f6993g.add(c3325a);
            return;
        }
        C2905a c2905a = f6986m;
        if (!c2905a.f9793b) {
            return;
        }
        Objects.requireNonNull(c2905a.f9792a);
        Log.i("FirebasePerformance", "Unable to add new SessionId to the Trace. Continuing without it.");
    }

    /* renamed from: b */
    public final void m4466b(String str, String str2) {
        if (!m4464e()) {
            if (!this.f6992f.containsKey(str) && this.f6992f.size() >= 5) {
                throw new IllegalArgumentException(String.format(Locale.ENGLISH, "Exceeds max limit of number of attributes - %d", 5));
            }
            String m2593b = AbstractC3125e.m2593b(new AbstractMap.SimpleEntry(str, str2));
            if (m2593b != null) {
                throw new IllegalArgumentException(m2593b);
            }
            return;
        }
        throw new IllegalArgumentException(String.format(Locale.ENGLISH, "Trace '%s' has been stopped", this.f6990d));
    }

    @VisibleForTesting
    /* renamed from: c */
    public boolean m4465c() {
        return this.f6997k != null;
    }

    @Override // android.os.Parcelable
    @Keep
    public int describeContents() {
        return 0;
    }

    @VisibleForTesting
    /* renamed from: e */
    public boolean m4464e() {
        return this.f6998l != null;
    }

    public void finalize() throws Throwable {
        try {
            if (m4465c() && !m4464e()) {
                f6986m.m2865f("Trace '%s' is started but not stopped when it is destructed!", this.f6990d);
                incrementTsnsCount(1);
            }
        } finally {
            super.finalize();
        }
    }

    @Keep
    public String getAttribute(String str) {
        return this.f6992f.get(str);
    }

    @Keep
    public Map<String, String> getAttributes() {
        return new HashMap(this.f6992f);
    }

    @Keep
    public long getLongMetric(String str) {
        C3011a c3011a = str != null ? this.f6991e.get(str.trim()) : null;
        if (c3011a == null) {
            return 0L;
        }
        return c3011a.m2748a();
    }

    @Keep
    public void incrementMetric(String str, long j) {
        String m2592c = AbstractC3125e.m2592c(str);
        if (m2592c != null) {
            C2905a c2905a = f6986m;
            if (!c2905a.f9793b) {
                return;
            }
            C2906b c2906b = c2905a.f9792a;
            String.format(Locale.ENGLISH, "Cannot increment metric '%s'. Metric name is invalid.(%s)", str, m2592c);
            Objects.requireNonNull(c2906b);
        } else if (!m4465c()) {
            f6986m.m2865f("Cannot increment metric '%s' for trace '%s' because it's not started", str, this.f6990d);
        } else if (m4464e()) {
            f6986m.m2865f("Cannot increment metric '%s' for trace '%s' because it's been stopped", str, this.f6990d);
        } else {
            String trim = str.trim();
            C3011a c3011a = this.f6991e.get(trim);
            C3011a c3011a2 = c3011a;
            if (c3011a == null) {
                c3011a2 = new C3011a(trim);
                this.f6991e.put(trim, c3011a2);
            }
            c3011a2.f10108b.addAndGet(j);
            C2905a c2905a2 = f6986m;
            long m2748a = c3011a2.m2748a();
            String str2 = this.f6990d;
            if (!c2905a2.f9793b) {
                return;
            }
            C2906b c2906b2 = c2905a2.f9792a;
            String.format(Locale.ENGLISH, "Incrementing metric '%s' to %d on trace '%s'", str, Long.valueOf(m2748a), str2);
            Objects.requireNonNull(c2906b2);
        }
    }

    @Keep
    public void putAttribute(String str, String str2) {
        boolean z;
        String str3;
        String str4;
        String str5 = str;
        String str6 = str2;
        try {
            str3 = str.trim();
            str4 = str2.trim();
            m4466b(str3, str4);
            C2905a c2905a = f6986m;
            String str7 = this.f6990d;
            if (c2905a.f9793b) {
                C2906b c2906b = c2905a.f9792a;
                String.format(Locale.ENGLISH, "Setting attribute '%s' to '%s' on trace '%s'", str3, str4, str7);
                str5 = str3;
                str6 = str4;
                Objects.requireNonNull(c2906b);
            }
            z = true;
        } catch (Exception e) {
            C2905a c2905a2 = f6986m;
            String message = e.getMessage();
            z = false;
            str3 = str5;
            str4 = str6;
            if (c2905a2.f9793b) {
                C2906b c2906b2 = c2905a2.f9792a;
                String.format(Locale.ENGLISH, "Can not set attribute '%s' with value '%s' (%s)", str5, str6, message);
                Objects.requireNonNull(c2906b2);
                str4 = str6;
                str3 = str5;
                z = false;
            }
        }
        if (z) {
            this.f6992f.put(str3, str4);
        }
    }

    @Keep
    public void putMetric(String str, long j) {
        String m2592c = AbstractC3125e.m2592c(str);
        if (m2592c != null) {
            C2905a c2905a = f6986m;
            if (!c2905a.f9793b) {
                return;
            }
            C2906b c2906b = c2905a.f9792a;
            String.format(Locale.ENGLISH, "Cannot set value for metric '%s'. Metric name is invalid.(%s)", str, m2592c);
            Objects.requireNonNull(c2906b);
        } else if (!m4465c()) {
            f6986m.m2865f("Cannot set value for metric '%s' for trace '%s' because it's not started", str, this.f6990d);
        } else if (m4464e()) {
            f6986m.m2865f("Cannot set value for metric '%s' for trace '%s' because it's been stopped", str, this.f6990d);
        } else {
            String trim = str.trim();
            C3011a c3011a = this.f6991e.get(trim);
            C3011a c3011a2 = c3011a;
            if (c3011a == null) {
                c3011a2 = new C3011a(trim);
                this.f6991e.put(trim, c3011a2);
            }
            c3011a2.f10108b.set(j);
            C2905a c2905a2 = f6986m;
            String str2 = this.f6990d;
            if (!c2905a2.f9793b) {
                return;
            }
            C2906b c2906b2 = c2905a2.f9792a;
            String.format(Locale.ENGLISH, "Setting metric '%s' to '%s' on trace '%s'", str, Long.valueOf(j), str2);
            Objects.requireNonNull(c2906b2);
        }
    }

    @Keep
    public void removeAttribute(String str) {
        if (!m4464e()) {
            this.f6992f.remove(str);
            return;
        }
        C2905a c2905a = f6986m;
        if (!c2905a.f9793b) {
            return;
        }
        Objects.requireNonNull(c2905a.f9792a);
    }

    @Keep
    public void start() {
        String str;
        if (!C2583a.m3412e().m3402o()) {
            C2905a c2905a = f6986m;
            if (!c2905a.f9793b) {
                return;
            }
            Objects.requireNonNull(c2905a.f9792a);
            Log.i("FirebasePerformance", "Trace feature is disabled.");
            return;
        }
        String str2 = this.f6990d;
        if (str2 == null) {
            str = "Trace name must not be null";
        } else if (str2.length() > 100) {
            str = String.format(Locale.US, "Trace name must not exceed %d characters", 100);
        } else {
            if (str2.startsWith("_")) {
                int[] m8895b = C0033h.m8895b();
                int length = m8895b.length;
                int i = 0;
                while (true) {
                    if (i < length) {
                        if (C0033h.m8891f(m8895b[i]).equals(str2)) {
                            break;
                        }
                        i++;
                    } else if (!str2.startsWith("_st_")) {
                        str = "Trace name must not start with '_'";
                    }
                }
            }
            str = null;
        }
        if (str != null) {
            C2905a c2905a2 = f6986m;
            String str3 = this.f6990d;
            if (!c2905a2.f9793b) {
                return;
            }
            C2906b c2906b = c2905a2.f9792a;
            String.format(Locale.ENGLISH, "Cannot start trace '%s'. Trace name is invalid.(%s)", str3, str);
            Objects.requireNonNull(c2906b);
        } else if (this.f6997k != null) {
            C2905a c2905a3 = f6986m;
            String str4 = this.f6990d;
            if (!c2905a3.f9793b) {
                return;
            }
            C2906b c2906b2 = c2905a3.f9792a;
            String.format(Locale.ENGLISH, "Trace '%s' has already started, should not start again!", str4);
            Objects.requireNonNull(c2906b2);
        } else {
            Objects.requireNonNull(this.f6996j);
            this.f6997k = new C3729e();
            registerForAppState();
            C3325a perfSession = SessionManager.getInstance().perfSession();
            SessionManager.getInstance().registerForSessionUpdates(this.f6987a);
            mo2373a(perfSession);
            if (!perfSession.f11283c) {
                return;
            }
            this.f6989c.collectGaugeMetricOnce(perfSession.f11282b);
        }
    }

    @Keep
    public void stop() {
        if (!m4465c()) {
            C2905a c2905a = f6986m;
            String str = this.f6990d;
            if (!c2905a.f9793b) {
                return;
            }
            C2906b c2906b = c2905a.f9792a;
            String.format(Locale.ENGLISH, "Trace '%s' has not been started so unable to stop!", str);
            Objects.requireNonNull(c2906b);
        } else if (m4464e()) {
            C2905a c2905a2 = f6986m;
            String str2 = this.f6990d;
            if (!c2905a2.f9793b) {
                return;
            }
            C2906b c2906b2 = c2905a2.f9792a;
            String.format(Locale.ENGLISH, "Trace '%s' has already stopped, should not stop again!", str2);
            Objects.requireNonNull(c2906b2);
        } else {
            SessionManager.getInstance().unregisterForSessionUpdates(this.f6987a);
            unregisterForAppState();
            Objects.requireNonNull(this.f6996j);
            C3729e c3729e = new C3729e();
            this.f6998l = c3729e;
            if (this.f6988b != null) {
                return;
            }
            if (!this.f6994h.isEmpty()) {
                Trace trace = this.f6994h.get(this.f6994h.size() - 1);
                if (trace.f6998l == null) {
                    trace.f6998l = c3729e;
                }
            }
            if (this.f6990d.isEmpty()) {
                C2905a c2905a3 = f6986m;
                if (!c2905a3.f9793b) {
                    return;
                }
                Objects.requireNonNull(c2905a3.f9792a);
                return;
            }
            C3652e c3652e = this.f6995i;
            c3652e.f11976i.execute(new RunnableC3506c(c3652e, new C3014c(this).m2737a(), getAppState(), 1));
            if (!SessionManager.getInstance().perfSession().f11283c) {
                return;
            }
            this.f6989c.collectGaugeMetricOnce(SessionManager.getInstance().perfSession().f11282b);
        }
    }

    @Override // android.os.Parcelable
    @Keep
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f6988b, 0);
        parcel.writeString(this.f6990d);
        parcel.writeList(this.f6994h);
        parcel.writeMap(this.f6991e);
        parcel.writeParcelable(this.f6997k, 0);
        parcel.writeParcelable(this.f6998l, 0);
        synchronized (this.f6993g) {
            parcel.writeList(this.f6993g);
        }
    }
}
