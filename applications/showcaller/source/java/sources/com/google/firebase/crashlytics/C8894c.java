package com.google.firebase.crashlytics;

import android.content.Context;
import android.content.pm.PackageManager;
import com.google.android.gms.tasks.AbstractC7954a;
import com.google.android.gms.tasks.AbstractC7966g;
import com.google.android.gms.tasks.C7970j;
import com.google.firebase.C8849c;
import com.google.firebase.analytics.p292a.AbstractC8834a;
import com.google.firebase.crashlytics.internal.common.C9075a;
import com.google.firebase.crashlytics.internal.common.C9107k;
import com.google.firebase.crashlytics.internal.common.C9119q;
import com.google.firebase.crashlytics.internal.common.C9120r;
import com.google.firebase.crashlytics.internal.common.C9125t;
import com.google.firebase.crashlytics.internal.common.CommonUtils;
import com.google.firebase.crashlytics.internal.settings.C9134c;
import com.google.firebase.crashlytics.p293d.AbstractC8897a;
import com.google.firebase.crashlytics.p293d.C8898b;
import com.google.firebase.crashlytics.p293d.C8899c;
import com.google.firebase.crashlytics.p293d.p294e.C8905c;
import com.google.firebase.crashlytics.p293d.p294e.C8906d;
import com.google.firebase.crashlytics.p293d.p294e.C8907e;
import com.google.firebase.crashlytics.p293d.p294e.C8908f;
import com.google.firebase.crashlytics.p293d.p295f.C8911c;
import com.google.firebase.crashlytics.p293d.p299i.C9054b;
import com.google.firebase.crashlytics.p293d.p303m.C9073a;
import com.google.firebase.installations.AbstractC9214g;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
/* renamed from: com.google.firebase.crashlytics.c */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/c.class */
public class C8894c {

    /* renamed from: a */
    private final C9107k f38867a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.firebase.crashlytics.c$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/c$a.class */
    public class C8895a implements AbstractC7954a<Void, Object> {
        C8895a() {
        }

        @Override // com.google.android.gms.tasks.AbstractC7954a
        /* renamed from: a */
        public Object mo1125a(AbstractC7966g<Void> abstractC7966g) {
            if (!abstractC7966g.mo5810q()) {
                C8898b.m2397f().m2398e("Error fetching settings.", abstractC7966g.mo5815l());
                return null;
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.firebase.crashlytics.c$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/c$b.class */
    public class CallableC8896b implements Callable<Void> {

        /* renamed from: a */
        final /* synthetic */ boolean f38868a;

        /* renamed from: b */
        final /* synthetic */ C9107k f38869b;

        /* renamed from: c */
        final /* synthetic */ C9134c f38870c;

        CallableC8896b(boolean z, C9107k c9107k, C9134c c9134c) {
            this.f38868a = z;
            this.f38869b = c9107k;
            this.f38870c = c9134c;
        }

        /* renamed from: a */
        public Void call() {
            if (this.f38868a) {
                this.f38869b.m1839g(this.f38870c);
                return null;
            }
            return null;
        }
    }

    private C8894c(C9107k c9107k) {
        this.f38867a = c9107k;
    }

    /* renamed from: a */
    public static C8894c m2405a(C8849c c8849c, AbstractC9214g abstractC9214g, AbstractC8897a abstractC8897a, AbstractC8834a abstractC8834a) {
        C8905c c8905c;
        C8906d c8906d;
        C8898b m2397f = C8898b.m2397f();
        m2397f.m2396g("Initializing Firebase Crashlytics " + C9107k.m1837i());
        Context m2533g = c8849c.m2533g();
        C9125t c9125t = new C9125t(m2533g, m2533g.getPackageName(), abstractC9214g);
        C9119q c9119q = new C9119q(c8849c);
        C8899c c8899c = abstractC8897a;
        if (abstractC8897a == null) {
            c8899c = new C8899c();
        }
        if (abstractC8834a != null) {
            C8907e c8907e = new C8907e(abstractC8834a);
            C8892a c8892a = new C8892a();
            if (m2404b(abstractC8834a, c8892a) != null) {
                C8898b.m2397f().m2401b("Registered Firebase Analytics listener.");
                C8906d c8906d2 = new C8906d();
                C8905c c8905c2 = new C8905c(c8907e, 500, TimeUnit.MILLISECONDS);
                c8892a.m2408d(c8906d2);
                c8892a.m2407e(c8905c2);
                c8906d = c8906d2;
                c8905c = c8905c2;
            } else {
                C8898b.m2397f().m2392k("Could not register Firebase Analytics listener; a listener is already registered.");
                c8906d = new C8911c();
                c8905c = c8907e;
            }
        } else {
            C8898b.m2397f().m2401b("Firebase Analytics is not available.");
            c8906d = new C8911c();
            c8905c = new C8908f();
        }
        C9107k c9107k = new C9107k(c8849c, c9125t, c8899c, c9119q, c8906d, c8905c, C9120r.m1786c("Crashlytics Exception Handler"));
        String m1660c = c8849c.m2530j().m1660c();
        String m1960o = CommonUtils.m1960o(m2533g);
        C8898b m2397f2 = C8898b.m2397f();
        m2397f2.m2401b("Mapping file ID is: " + m1960o);
        try {
            C9075a m1948a = C9075a.m1948a(m2533g, c9125t, m1660c, m1960o, new C9073a(m2533g));
            C8898b m2397f3 = C8898b.m2397f();
            m2397f3.m2394i("Installer package name is: " + m1948a.f39269c);
            ExecutorService m1786c = C9120r.m1786c("com.google.firebase.crashlytics.startup");
            C9134c m1744l = C9134c.m1744l(m2533g, m1660c, c9125t, new C9054b(), m1948a.f39271e, m1948a.f39272f, c9119q);
            m1744l.m1740p(m1786c).mo5818i(m1786c, new C8895a());
            C7970j.m5800c(m1786c, new CallableC8896b(c9107k.m1832n(m1948a, m1744l), c9107k, m1744l));
            return new C8894c(c9107k);
        } catch (PackageManager.NameNotFoundException e) {
            C8898b.m2397f().m2398e("Error retrieving app package info.", e);
            return null;
        }
    }

    /* renamed from: b */
    private static AbstractC8834a.AbstractC8835a m2404b(AbstractC8834a abstractC8834a, C8892a c8892a) {
        AbstractC8834a.AbstractC8835a mo2565c = abstractC8834a.mo2565c("clx", c8892a);
        AbstractC8834a.AbstractC8835a abstractC8835a = mo2565c;
        if (mo2565c == null) {
            C8898b.m2397f().m2401b("Could not register AnalyticsConnectorListener with Crashlytics origin.");
            AbstractC8834a.AbstractC8835a mo2565c2 = abstractC8834a.mo2565c("crash", c8892a);
            abstractC8835a = mo2565c2;
            if (mo2565c2 != null) {
                C8898b.m2397f().m2392k("A new version of the Google Analytics for Firebase SDK is now available. For improved performance and compatibility with Crashlytics, please update to the latest version.");
                abstractC8835a = mo2565c2;
            }
        }
        return abstractC8835a;
    }
}
