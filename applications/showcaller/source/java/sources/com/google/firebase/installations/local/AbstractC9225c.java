package com.google.firebase.installations.local;

import com.google.auto.value.AutoValue;
import com.google.firebase.installations.local.C9221a;
import com.google.firebase.installations.local.PersistedInstallation;
@AutoValue
/* renamed from: com.google.firebase.installations.local.c */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/installations/local/c.class */
public abstract class AbstractC9225c {

    /* renamed from: a */
    public static AbstractC9225c f39640a = m1506a().mo1486a();

    @AutoValue.Builder
    /* renamed from: com.google.firebase.installations.local.c$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/installations/local/c$a.class */
    public static abstract class AbstractC9226a {
        /* renamed from: a */
        public abstract AbstractC9225c mo1486a();

        /* renamed from: b */
        public abstract AbstractC9226a mo1485b(String str);

        /* renamed from: c */
        public abstract AbstractC9226a mo1484c(long j);

        /* renamed from: d */
        public abstract AbstractC9226a mo1483d(String str);

        /* renamed from: e */
        public abstract AbstractC9226a mo1482e(String str);

        /* renamed from: f */
        public abstract AbstractC9226a mo1481f(String str);

        /* renamed from: g */
        public abstract AbstractC9226a mo1480g(PersistedInstallation.RegistrationStatus registrationStatus);

        /* renamed from: h */
        public abstract AbstractC9226a mo1479h(long j);
    }

    /* renamed from: a */
    public static AbstractC9226a m1506a() {
        return new C9221a.C9223b().mo1479h(0L).mo1480g(PersistedInstallation.RegistrationStatus.ATTEMPT_MIGRATION).mo1484c(0L);
    }

    /* renamed from: b */
    public abstract String mo1505b();

    /* renamed from: c */
    public abstract long mo1504c();

    /* renamed from: d */
    public abstract String mo1503d();

    /* renamed from: e */
    public abstract String mo1502e();

    /* renamed from: f */
    public abstract String mo1501f();

    /* renamed from: g */
    public abstract PersistedInstallation.RegistrationStatus mo1500g();

    /* renamed from: h */
    public abstract long mo1499h();

    /* renamed from: i */
    public boolean m1498i() {
        return mo1500g() == PersistedInstallation.RegistrationStatus.REGISTER_ERROR;
    }

    /* renamed from: j */
    public boolean m1497j() {
        return mo1500g() == PersistedInstallation.RegistrationStatus.NOT_GENERATED || mo1500g() == PersistedInstallation.RegistrationStatus.ATTEMPT_MIGRATION;
    }

    /* renamed from: k */
    public boolean m1496k() {
        return mo1500g() == PersistedInstallation.RegistrationStatus.REGISTERED;
    }

    /* renamed from: l */
    public boolean m1495l() {
        return mo1500g() == PersistedInstallation.RegistrationStatus.UNREGISTERED;
    }

    /* renamed from: m */
    public boolean m1494m() {
        return mo1500g() == PersistedInstallation.RegistrationStatus.ATTEMPT_MIGRATION;
    }

    /* renamed from: n */
    public abstract AbstractC9226a mo1493n();

    /* renamed from: o */
    public AbstractC9225c m1492o(String str, long j, long j2) {
        return mo1493n().mo1485b(str).mo1484c(j).mo1479h(j2).mo1486a();
    }

    /* renamed from: p */
    public AbstractC9225c m1491p() {
        return mo1493n().mo1485b(null).mo1486a();
    }

    /* renamed from: q */
    public AbstractC9225c m1490q(String str) {
        return mo1493n().mo1482e(str).mo1480g(PersistedInstallation.RegistrationStatus.REGISTER_ERROR).mo1486a();
    }

    /* renamed from: r */
    public AbstractC9225c m1489r() {
        return mo1493n().mo1480g(PersistedInstallation.RegistrationStatus.NOT_GENERATED).mo1486a();
    }

    /* renamed from: s */
    public AbstractC9225c m1488s(String str, String str2, long j, String str3, long j2) {
        return mo1493n().mo1483d(str).mo1480g(PersistedInstallation.RegistrationStatus.REGISTERED).mo1485b(str3).mo1481f(str2).mo1484c(j2).mo1479h(j).mo1486a();
    }

    /* renamed from: t */
    public AbstractC9225c m1487t(String str) {
        return mo1493n().mo1483d(str).mo1480g(PersistedInstallation.RegistrationStatus.UNREGISTERED).mo1486a();
    }
}
