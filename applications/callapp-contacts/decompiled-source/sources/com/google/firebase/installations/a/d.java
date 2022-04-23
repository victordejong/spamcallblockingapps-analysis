package com.google.firebase.installations.a;

import com.google.firebase.installations.a.a;
import com.google.firebase.installations.a.c;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/installations/a/d.class */
public abstract class d {

    /* renamed from: a  reason: collision with root package name */
    public static d f32393a = n().a();

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/installations/a/d$a.class */
    public static abstract class a {
        public abstract a a(long j);

        public abstract a a(c.a aVar);

        public abstract a a(String str);

        public abstract d a();

        public abstract a b(long j);

        public abstract a b(String str);

        public abstract a c(String str);

        public abstract a d(String str);
    }

    public static a n() {
        return new a.C0520a().b(0L).a(c.a.ATTEMPT_MIGRATION).a(0L);
    }

    public final d a(String str) {
        return h().d(str).a(c.a.REGISTER_ERROR).a();
    }

    public abstract String a();

    public abstract c.a b();

    public abstract String c();

    public abstract String d();

    public abstract long e();

    public abstract long f();

    public abstract String g();

    public abstract a h();

    public final boolean i() {
        return b() == c.a.REGISTERED;
    }

    public final boolean j() {
        return b() == c.a.REGISTER_ERROR;
    }

    public final boolean k() {
        return b() == c.a.UNREGISTERED;
    }

    public final boolean l() {
        return b() == c.a.NOT_GENERATED || b() == c.a.ATTEMPT_MIGRATION;
    }

    public final d m() {
        return h().a(c.a.NOT_GENERATED).a();
    }
}
