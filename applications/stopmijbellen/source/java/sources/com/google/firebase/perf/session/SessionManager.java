package com.google.firebase.perf.session;

import android.annotation.SuppressLint;
import androidx.annotation.Keep;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.C1676a;
import com.google.firebase.perf.session.gauges.GaugeManager;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import p071d6.AbstractC2481b;
import p071d6.C2478a;
import p081e6.C2583a;
import p081e6.C2596m;
import p147k6.AbstractC3327b;
import p147k6.C3325a;
import p180n6.C3720b;
import p191o6.EnumC3901d;
@Keep
/* loaded from: classes-dex2jar.jar:com/google/firebase/perf/session/SessionManager.class */
public class SessionManager extends AbstractC2481b {
    @SuppressLint({"StaticFieldLeak"})
    private static final SessionManager instance = new SessionManager();
    private final C2478a appStateMonitor;
    private final Set<WeakReference<AbstractC3327b>> clients;
    private final GaugeManager gaugeManager;
    private C3325a perfSession;

    private SessionManager() {
        this(GaugeManager.getInstance(), C3325a.m2374c(), C2478a.m3524a());
    }

    @VisibleForTesting
    public SessionManager(GaugeManager gaugeManager, C3325a c3325a, C2478a c2478a) {
        this.clients = new HashSet();
        this.gaugeManager = gaugeManager;
        this.perfSession = c3325a;
        this.appStateMonitor = c2478a;
        registerForAppState();
    }

    public static SessionManager getInstance() {
        return instance;
    }

    private void logGaugeMetadataIfCollectionEnabled(EnumC3901d enumC3901d) {
        C3325a c3325a = this.perfSession;
        if (c3325a.f11283c) {
            this.gaugeManager.logGaugeMetadata(c3325a.f11281a, enumC3901d);
        }
    }

    private void startOrStopCollectingGauges(EnumC3901d enumC3901d) {
        C3325a c3325a = this.perfSession;
        if (c3325a.f11283c) {
            this.gaugeManager.startCollectingGauges(c3325a, enumC3901d);
        } else {
            this.gaugeManager.stopCollectingGauges();
        }
    }

    @Override // p071d6.AbstractC2481b, p071d6.C2478a.AbstractC2480b
    public void onUpdateAppState(EnumC3901d enumC3901d) {
        super.onUpdateAppState(enumC3901d);
        if (this.appStateMonitor.f8729o) {
            return;
        }
        if (enumC3901d == EnumC3901d.FOREGROUND) {
            updatePerfSession(enumC3901d);
        } else if (updatePerfSessionIfExpired()) {
        } else {
            startOrStopCollectingGauges(enumC3901d);
        }
    }

    public final C3325a perfSession() {
        return this.perfSession;
    }

    public void registerForSessionUpdates(WeakReference<AbstractC3327b> weakReference) {
        synchronized (this.clients) {
            this.clients.add(weakReference);
        }
    }

    @VisibleForTesting
    public void setPerfSession(C3325a c3325a) {
        this.perfSession = c3325a;
    }

    public void unregisterForSessionUpdates(WeakReference<AbstractC3327b> weakReference) {
        synchronized (this.clients) {
            this.clients.remove(weakReference);
        }
    }

    public void updatePerfSession(EnumC3901d enumC3901d) {
        synchronized (this.clients) {
            this.perfSession = C3325a.m2374c();
            Iterator<WeakReference<AbstractC3327b>> it2 = this.clients.iterator();
            while (it2.hasNext()) {
                AbstractC3327b abstractC3327b = it2.next().get();
                if (abstractC3327b != null) {
                    abstractC3327b.mo2373a(this.perfSession);
                } else {
                    it2.remove();
                }
            }
        }
        logGaugeMetadataIfCollectionEnabled(enumC3901d);
        startOrStopCollectingGauges(enumC3901d);
    }

    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    /* JADX WARN: Type inference failed for: r0v54, types: [long] */
    /* JADX WARN: Type inference failed for: r0v60, types: [long] */
    public boolean updatePerfSessionIfExpired() {
        C2596m c2596m;
        char c;
        C3325a c3325a = this.perfSession;
        Objects.requireNonNull(c3325a);
        long minutes = TimeUnit.MICROSECONDS.toMinutes(c3325a.f11282b.m1840a());
        C2583a m3412e = C2583a.m3412e();
        Objects.requireNonNull(m3412e);
        synchronized (C2596m.class) {
            try {
                if (C2596m.f9023a == null) {
                    C2596m.f9023a = new C2596m();
                }
                c2596m = C2596m.f9023a;
            } catch (Throwable th) {
                throw th;
            }
        }
        C3720b<Long> m3409h = m3412e.m3409h(c2596m);
        if (!m3409h.m1843c() || !m3412e.m3400q(m3409h.m1844b().longValue())) {
            C3720b<Long> c3720b = m3412e.f9008a.getLong("fpr_session_max_duration_min");
            if (!c3720b.m1843c() || !m3412e.m3400q(c3720b.m1844b().longValue())) {
                C3720b<Long> m3414c = m3412e.m3414c(c2596m);
                if (!m3414c.m1843c() || !m3412e.m3400q(m3414c.m1844b().longValue())) {
                    Long l = 240L;
                    c = l.longValue();
                } else {
                    c = m3414c.m1844b().longValue();
                }
            } else {
                c = ((Long) C1676a.m4790g(c3720b.m1844b(), m3412e.f9010c, "com.google.firebase.perf.SessionsMaxDurationMinutes", c3720b)).longValue();
            }
        } else {
            c = m3409h.m1844b().longValue();
        }
        if (minutes > c) {
            updatePerfSession(this.appStateMonitor.f8727m);
            return true;
        }
        return false;
    }
}
