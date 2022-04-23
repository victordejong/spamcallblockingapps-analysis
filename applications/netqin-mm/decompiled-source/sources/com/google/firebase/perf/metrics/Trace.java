package com.google.firebase.perf.metrics;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.firebase.perf.internal.GaugeManager;
import com.google.firebase.perf.internal.PerfSession;
import com.google.firebase.perf.internal.SessionManager;
import com.google.firebase.perf.util.Timer;
import java.lang.ref.WeakReference;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import p131c.p161d.p282e.p340u.p341d.C5927a;
import p131c.p161d.p282e.p340u.p344g.AbstractC5957b;
import p131c.p161d.p282e.p340u.p344g.AbstractC5965j;
import p131c.p161d.p282e.p340u.p344g.AbstractC5968m;
import p131c.p161d.p282e.p340u.p344g.C5955a;
import p131c.p161d.p282e.p340u.p345h.C5969a;
import p131c.p161d.p282e.p340u.p346i.C5971a;
import p131c.p161d.p282e.p340u.p348k.C5992l;
import p131c.p161d.p282e.p340u.p349l.C5993a;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/metrics/Trace.class */
public class Trace extends AbstractC5957b implements Parcelable, AbstractC5968m {

    /* renamed from: a */
    public final Trace f31022a;

    /* renamed from: b */
    public final GaugeManager f31023b;

    /* renamed from: c */
    public final String f31024c;

    /* renamed from: d */
    public final List<PerfSession> f31025d;

    /* renamed from: e */
    public final List<Trace> f31026e;

    /* renamed from: f */
    public final Map<String, Counter> f31027f;

    /* renamed from: g */
    public final C5993a f31028g;

    /* renamed from: h */
    public final C5992l f31029h;

    /* renamed from: i */
    public final Map<String, String> f31030i;

    /* renamed from: j */
    public Timer f31031j;

    /* renamed from: k */
    public Timer f31032k;

    /* renamed from: l */
    public final WeakReference<AbstractC5968m> f31033l;

    /* renamed from: m */
    public static final C5969a f31021m = C5969a.m22496a();
    @Keep
    public static final Parcelable.Creator<Trace> CREATOR = new C7853a();

    /* renamed from: com.google.firebase.perf.metrics.Trace$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/metrics/Trace$a.class */
    public class C7853a implements Parcelable.Creator<Trace> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Trace createFromParcel(Parcel parcel) {
            return new Trace(parcel, false, null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Trace[] newArray(int i) {
            return new Trace[i];
        }
    }

    /* renamed from: com.google.firebase.perf.metrics.Trace$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/metrics/Trace$b.class */
    public class C7854b implements Parcelable.Creator<Trace> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Trace createFromParcel(Parcel parcel) {
            return new Trace(parcel, true, null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Trace[] newArray(int i) {
            return new Trace[i];
        }
    }

    static {
        new ConcurrentHashMap();
        new C7854b();
    }

    public Trace(Parcel parcel, boolean z) {
        super(z ? null : C5955a.m22535d());
        this.f31033l = new WeakReference<>(this);
        this.f31022a = (Trace) parcel.readParcelable(Trace.class.getClassLoader());
        this.f31024c = parcel.readString();
        ArrayList arrayList = new ArrayList();
        this.f31026e = arrayList;
        parcel.readList(arrayList, Trace.class.getClassLoader());
        this.f31027f = new ConcurrentHashMap();
        this.f31030i = new ConcurrentHashMap();
        parcel.readMap(this.f31027f, Counter.class.getClassLoader());
        this.f31031j = (Timer) parcel.readParcelable(Timer.class.getClassLoader());
        this.f31032k = (Timer) parcel.readParcelable(Timer.class.getClassLoader());
        List<PerfSession> synchronizedList = Collections.synchronizedList(new ArrayList());
        this.f31025d = synchronizedList;
        parcel.readList(synchronizedList, PerfSession.class.getClassLoader());
        if (z) {
            this.f31029h = null;
            this.f31028g = null;
            this.f31023b = null;
            return;
        }
        this.f31029h = C5992l.m22374g();
        this.f31028g = new C5993a();
        this.f31023b = GaugeManager.getInstance();
    }

    public /* synthetic */ Trace(Parcel parcel, boolean z, C7853a aVar) {
        this(parcel, z);
    }

    public Trace(String str, C5992l lVar, C5993a aVar, C5955a aVar2) {
        this(str, lVar, aVar, aVar2, GaugeManager.getInstance());
    }

    public Trace(String str, C5992l lVar, C5993a aVar, C5955a aVar2, GaugeManager gaugeManager) {
        super(aVar2);
        this.f31033l = new WeakReference<>(this);
        this.f31022a = null;
        this.f31024c = str.trim();
        this.f31026e = new ArrayList();
        this.f31027f = new ConcurrentHashMap();
        this.f31030i = new ConcurrentHashMap();
        this.f31028g = aVar;
        this.f31029h = lVar;
        this.f31025d = Collections.synchronizedList(new ArrayList());
        this.f31023b = gaugeManager;
    }

    /* renamed from: a */
    public final Counter m7241a(String str) {
        Counter counter = this.f31027f.get(str);
        Counter counter2 = counter;
        if (counter == null) {
            counter2 = new Counter(str);
            this.f31027f.put(str, counter2);
        }
        return counter2;
    }

    @VisibleForTesting
    /* renamed from: a */
    public Map<String, Counter> m7244a() {
        return this.f31027f;
    }

    @Override // p131c.p161d.p282e.p340u.p344g.AbstractC5968m
    /* renamed from: a */
    public void mo7243a(PerfSession perfSession) {
        if (perfSession == null) {
            f31021m.m22492c("Unable to add new SessionId to the Trace. Continuing without it.", new Object[0]);
        } else if (m7234g() && !m7232i()) {
            this.f31025d.add(perfSession);
        }
    }

    /* renamed from: a */
    public final void m7242a(Timer timer) {
        if (!this.f31026e.isEmpty()) {
            Trace trace = this.f31026e.get(this.f31026e.size() - 1);
            if (trace.f31032k == null) {
                trace.f31032k = timer;
            }
        }
    }

    /* renamed from: a */
    public final void m7240a(String str, String str2) {
        if (m7232i()) {
            throw new IllegalArgumentException(String.format(Locale.ENGLISH, "Trace '%s' has been stopped", this.f31024c));
        } else if (this.f31030i.containsKey(str) || this.f31030i.size() < 5) {
            String a = AbstractC5965j.m22501a(new AbstractMap.SimpleEntry(str, str2));
            if (a != null) {
                throw new IllegalArgumentException(a);
            }
        } else {
            throw new IllegalArgumentException(String.format(Locale.ENGLISH, "Exceeds max limit of number of attributes - %d", 5));
        }
    }

    @VisibleForTesting
    /* renamed from: b */
    public Timer m7239b() {
        return this.f31032k;
    }

    @VisibleForTesting
    /* renamed from: c */
    public String m7238c() {
        return this.f31024c;
    }

    @VisibleForTesting
    /* renamed from: d */
    public List<PerfSession> m7237d() {
        List<PerfSession> unmodifiableList;
        synchronized (this.f31025d) {
            try {
                ArrayList arrayList = new ArrayList();
                for (PerfSession perfSession : this.f31025d) {
                    if (perfSession != null) {
                        arrayList.add(perfSession);
                    }
                }
                unmodifiableList = Collections.unmodifiableList(arrayList);
            } catch (Throwable th) {
                throw th;
            }
        }
        return unmodifiableList;
    }

    @Override // android.os.Parcelable
    @Keep
    public int describeContents() {
        return 0;
    }

    @VisibleForTesting
    /* renamed from: e */
    public Timer m7236e() {
        return this.f31031j;
    }

    @VisibleForTesting
    /* renamed from: f */
    public List<Trace> m7235f() {
        return this.f31026e;
    }

    public void finalize() throws Throwable {
        try {
            if (m7233h()) {
                f31021m.m22491d(String.format(Locale.ENGLISH, "Trace '%s' is started but not stopped when it is destructed!", this.f31024c), new Object[0]);
                incrementTsnsCount(1);
            }
        } finally {
            super.finalize();
        }
    }

    @VisibleForTesting
    /* renamed from: g */
    public boolean m7234g() {
        return this.f31031j != null;
    }

    @Keep
    public String getAttribute(String str) {
        return this.f31030i.get(str);
    }

    @Keep
    public Map<String, String> getAttributes() {
        return new HashMap(this.f31030i);
    }

    @Keep
    public long getLongMetric(String str) {
        Counter counter = str != null ? this.f31027f.get(str.trim()) : null;
        if (counter == null) {
            return 0L;
        }
        return counter.m7248a();
    }

    @VisibleForTesting
    /* renamed from: h */
    public boolean m7233h() {
        return m7234g() && !m7232i();
    }

    @VisibleForTesting
    /* renamed from: i */
    public boolean m7232i() {
        return this.f31032k != null;
    }

    @Keep
    public void incrementMetric(String str, long j) {
        String a = AbstractC5965j.m22502a(str);
        if (a != null) {
            f31021m.m22493b(String.format(Locale.ENGLISH, "Cannot increment metric '%s'. Metric name is invalid.(%s)", str, a), new Object[0]);
        } else if (!m7234g()) {
            f31021m.m22491d(String.format(Locale.ENGLISH, "Cannot increment metric '%s' for trace '%s' because it's not started", str, this.f31024c), new Object[0]);
        } else if (m7232i()) {
            f31021m.m22491d(String.format(Locale.ENGLISH, "Cannot increment metric '%s' for trace '%s' because it's been stopped", str, this.f31024c), new Object[0]);
        } else {
            Counter a2 = m7241a(str.trim());
            a2.m7247a(j);
            f31021m.m22495a(String.format(Locale.ENGLISH, "Incrementing metric '%s' to %d on trace '%s'", str, Long.valueOf(a2.m7248a()), this.f31024c), new Object[0]);
        }
    }

    @Keep
    public void putAttribute(String str, String str2) {
        String str3;
        String str4;
        boolean z = true;
        String str5 = str;
        String str6 = str2;
        try {
            str4 = str.trim();
            str3 = str2.trim();
            m7240a(str4, str3);
            str5 = str4;
            str6 = str3;
            f31021m.m22495a(String.format(Locale.ENGLISH, "Setting attribute '%s' to '%s' on trace '%s'", str4, str3, this.f31024c), new Object[0]);
        } catch (Exception e) {
            f31021m.m22493b(String.format(Locale.ENGLISH, "Can not set attribute '%s' with value '%s' (%s)", str5, str6, e.getMessage()), new Object[0]);
            z = false;
            str3 = str6;
            str4 = str5;
        }
        if (z) {
            this.f31030i.put(str4, str3);
        }
    }

    @Keep
    public void putMetric(String str, long j) {
        String a = AbstractC5965j.m22502a(str);
        if (a != null) {
            f31021m.m22493b(String.format(Locale.ENGLISH, "Cannot set value for metric '%s'. Metric name is invalid.(%s)", str, a), new Object[0]);
        } else if (!m7234g()) {
            f31021m.m22491d(String.format(Locale.ENGLISH, "Cannot set value for metric '%s' for trace '%s' because it's not started", str, this.f31024c), new Object[0]);
        } else if (m7232i()) {
            f31021m.m22491d(String.format(Locale.ENGLISH, "Cannot set value for metric '%s' for trace '%s' because it's been stopped", str, this.f31024c), new Object[0]);
        } else {
            m7241a(str.trim()).m7245b(j);
            f31021m.m22495a(String.format(Locale.ENGLISH, "Setting metric '%s' to '%s' on trace '%s'", str, Long.valueOf(j), this.f31024c), new Object[0]);
        }
    }

    @Keep
    public void removeAttribute(String str) {
        if (m7232i()) {
            f31021m.m22493b("Can't remove a attribute from a Trace that's stopped.", new Object[0]);
        } else {
            this.f31030i.remove(str);
        }
    }

    @Keep
    public void start() {
        if (!C5927a.m22644v().m22645u()) {
            f31021m.m22492c("Trace feature is disabled.", new Object[0]);
            return;
        }
        String b = AbstractC5965j.m22499b(this.f31024c);
        if (b != null) {
            f31021m.m22493b(String.format(Locale.ENGLISH, "Cannot start trace '%s'. Trace name is invalid.(%s)", this.f31024c, b), new Object[0]);
        } else if (this.f31031j != null) {
            f31021m.m22493b(String.format(Locale.ENGLISH, "Trace '%s' has already started, should not start again!", this.f31024c), new Object[0]);
        } else {
            this.f31031j = this.f31028g.m22373a();
            registerForAppState();
            PerfSession perfSession = SessionManager.getInstance().perfSession();
            SessionManager.getInstance().registerForSessionUpdates(this.f31033l);
            mo7243a(perfSession);
            if (perfSession.m7261d()) {
                this.f31023b.collectGaugeMetricOnce(perfSession.m7263b());
            }
        }
    }

    @Keep
    public void stop() {
        if (!m7234g()) {
            f31021m.m22493b(String.format(Locale.ENGLISH, "Trace '%s' has not been started so unable to stop!", this.f31024c), new Object[0]);
        } else if (m7232i()) {
            f31021m.m22493b(String.format(Locale.ENGLISH, "Trace '%s' has already stopped, should not stop again!", this.f31024c), new Object[0]);
        } else {
            SessionManager.getInstance().unregisterForSessionUpdates(this.f31033l);
            unregisterForAppState();
            Timer a = this.f31028g.m22373a();
            this.f31032k = a;
            if (this.f31022a == null) {
                m7242a(a);
                if (!this.f31024c.isEmpty()) {
                    this.f31029h.m22387a(new C5971a(this).m22485a(), getAppState());
                    if (SessionManager.getInstance().perfSession().m7261d()) {
                        this.f31023b.collectGaugeMetricOnce(SessionManager.getInstance().perfSession().m7263b());
                        return;
                    }
                    return;
                }
                f31021m.m22493b("Trace name is empty, no log is sent to server", new Object[0]);
            }
        }
    }

    @Override // android.os.Parcelable
    @Keep
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f31022a, 0);
        parcel.writeString(this.f31024c);
        parcel.writeList(this.f31026e);
        parcel.writeMap(this.f31027f);
        parcel.writeParcelable(this.f31031j, 0);
        parcel.writeParcelable(this.f31032k, 0);
        synchronized (this.f31025d) {
            parcel.writeList(this.f31025d);
        }
    }
}
