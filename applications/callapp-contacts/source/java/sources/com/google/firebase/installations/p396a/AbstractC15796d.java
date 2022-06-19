package com.google.firebase.installations.p396a;

import com.google.firebase.installations.p396a.C15790a;
import com.google.firebase.installations.p396a.C15794c;
/* renamed from: com.google.firebase.installations.a.d */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/installations/a/d.class */
public abstract class AbstractC15796d {

    /* renamed from: a */
    public static AbstractC15796d f56200a = m8363n().mo8362a();

    /* renamed from: com.google.firebase.installations.a.d$a */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/installations/a/d$a.class */
    public static abstract class AbstractC15797a {
        /* renamed from: a */
        public abstract AbstractC15797a mo8361a(long j);

        /* renamed from: a */
        public abstract AbstractC15797a mo8360a(C15794c.EnumC15795a enumC15795a);

        /* renamed from: a */
        public abstract AbstractC15797a mo8359a(String str);

        /* renamed from: a */
        public abstract AbstractC15796d mo8362a();

        /* renamed from: b */
        public abstract AbstractC15797a mo8358b(long j);

        /* renamed from: b */
        public abstract AbstractC15797a mo8357b(String str);

        /* renamed from: c */
        public abstract AbstractC15797a mo8356c(String str);

        /* renamed from: d */
        public abstract AbstractC15797a mo8355d(String str);
    }

    /* renamed from: n */
    public static AbstractC15797a m8363n() {
        return new C15790a.C15792a().mo8358b(0L).mo8360a(C15794c.EnumC15795a.ATTEMPT_MIGRATION).mo8361a(0L);
    }

    /* renamed from: a */
    public final AbstractC15796d m8376a(String str) {
        return mo8369h().mo8355d(str).mo8360a(C15794c.EnumC15795a.REGISTER_ERROR).mo8362a();
    }

    /* renamed from: a */
    public abstract String mo8377a();

    /* renamed from: b */
    public abstract C15794c.EnumC15795a mo8375b();

    /* renamed from: c */
    public abstract String mo8374c();

    /* renamed from: d */
    public abstract String mo8373d();

    /* renamed from: e */
    public abstract long mo8372e();

    /* renamed from: f */
    public abstract long mo8371f();

    /* renamed from: g */
    public abstract String mo8370g();

    /* renamed from: h */
    public abstract AbstractC15797a mo8369h();

    /* renamed from: i */
    public final boolean m8368i() {
        return mo8375b() == C15794c.EnumC15795a.REGISTERED;
    }

    /* renamed from: j */
    public final boolean m8367j() {
        return mo8375b() == C15794c.EnumC15795a.REGISTER_ERROR;
    }

    /* renamed from: k */
    public final boolean m8366k() {
        return mo8375b() == C15794c.EnumC15795a.UNREGISTERED;
    }

    /* renamed from: l */
    public final boolean m8365l() {
        return mo8375b() == C15794c.EnumC15795a.NOT_GENERATED || mo8375b() == C15794c.EnumC15795a.ATTEMPT_MIGRATION;
    }

    /* renamed from: m */
    public final AbstractC15796d m8364m() {
        return mo8369h().mo8360a(C15794c.EnumC15795a.NOT_GENERATED).mo8362a();
    }
}
