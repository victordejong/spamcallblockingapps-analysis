package p081h.p203i.p325c.p367v.p368q;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import p081h.p203i.p325c.p367v.p368q.C9952a;
import p081h.p203i.p325c.p367v.p368q.C9956c;
/* renamed from: h.i.c.v.q.d */
/* loaded from: classes2-dex2jar.jar:h/i/c/v/q/d.class */
public abstract class AbstractC9958d {

    /* renamed from: h.i.c.v.q.d$a */
    /* loaded from: classes2-dex2jar.jar:h/i/c/v/q/d$a.class */
    public static abstract class AbstractC9959a {
        @NonNull
        /* renamed from: a */
        public abstract AbstractC9959a mo13842a(long j);

        @NonNull
        /* renamed from: a */
        public abstract AbstractC9959a mo13841a(@NonNull C9956c.EnumC9957a aVar);

        @NonNull
        /* renamed from: a */
        public abstract AbstractC9959a mo13840a(@Nullable String str);

        @NonNull
        /* renamed from: a */
        public abstract AbstractC9958d mo13843a();

        @NonNull
        /* renamed from: b */
        public abstract AbstractC9959a mo13839b(long j);

        @NonNull
        /* renamed from: b */
        public abstract AbstractC9959a mo13838b(@NonNull String str);

        @NonNull
        /* renamed from: c */
        public abstract AbstractC9959a mo13837c(@Nullable String str);

        @NonNull
        /* renamed from: d */
        public abstract AbstractC9959a mo13836d(@Nullable String str);
    }

    static {
        m13844p().mo13843a();
    }

    @NonNull
    /* renamed from: p */
    public static AbstractC9959a m13844p() {
        C9952a.C9954b bVar = new C9952a.C9954b();
        bVar.mo13839b(0L);
        bVar.mo13841a(C9956c.EnumC9957a.ATTEMPT_MIGRATION);
        bVar.mo13842a(0L);
        return bVar;
    }

    @NonNull
    /* renamed from: a */
    public AbstractC9958d m13862a(@NonNull String str) {
        AbstractC9959a m = mo13847m();
        m.mo13837c(str);
        m.mo13841a(C9956c.EnumC9957a.REGISTER_ERROR);
        return m.mo13843a();
    }

    @NonNull
    /* renamed from: a */
    public AbstractC9958d m13861a(@NonNull String str, long j, long j2) {
        AbstractC9959a m = mo13847m();
        m.mo13840a(str);
        m.mo13842a(j);
        m.mo13839b(j2);
        return m.mo13843a();
    }

    @NonNull
    /* renamed from: a */
    public AbstractC9958d m13860a(@NonNull String str, @NonNull String str2, long j, @Nullable String str3, long j2) {
        AbstractC9959a m = mo13847m();
        m.mo13838b(str);
        m.mo13841a(C9956c.EnumC9957a.REGISTERED);
        m.mo13840a(str3);
        m.mo13836d(str2);
        m.mo13842a(j2);
        m.mo13839b(j);
        return m.mo13843a();
    }

    @Nullable
    /* renamed from: a */
    public abstract String mo13863a();

    /* renamed from: b */
    public abstract long mo13859b();

    @NonNull
    /* renamed from: b */
    public AbstractC9958d m13858b(@NonNull String str) {
        AbstractC9959a m = mo13847m();
        m.mo13838b(str);
        m.mo13841a(C9956c.EnumC9957a.UNREGISTERED);
        return m.mo13843a();
    }

    @Nullable
    /* renamed from: c */
    public abstract String mo13857c();

    @Nullable
    /* renamed from: d */
    public abstract String mo13856d();

    @Nullable
    /* renamed from: e */
    public abstract String mo13855e();

    @NonNull
    /* renamed from: f */
    public abstract C9956c.EnumC9957a mo13854f();

    /* renamed from: g */
    public abstract long mo13853g();

    /* renamed from: h */
    public boolean m13852h() {
        return mo13854f() == C9956c.EnumC9957a.REGISTER_ERROR;
    }

    /* renamed from: i */
    public boolean m13851i() {
        return mo13854f() == C9956c.EnumC9957a.NOT_GENERATED || mo13854f() == C9956c.EnumC9957a.ATTEMPT_MIGRATION;
    }

    /* renamed from: j */
    public boolean m13850j() {
        return mo13854f() == C9956c.EnumC9957a.REGISTERED;
    }

    /* renamed from: k */
    public boolean m13849k() {
        return mo13854f() == C9956c.EnumC9957a.UNREGISTERED;
    }

    /* renamed from: l */
    public boolean m13848l() {
        return mo13854f() == C9956c.EnumC9957a.ATTEMPT_MIGRATION;
    }

    @NonNull
    /* renamed from: m */
    public abstract AbstractC9959a mo13847m();

    @NonNull
    /* renamed from: n */
    public AbstractC9958d m13846n() {
        AbstractC9959a m = mo13847m();
        m.mo13840a((String) null);
        return m.mo13843a();
    }

    @NonNull
    /* renamed from: o */
    public AbstractC9958d m13845o() {
        AbstractC9959a m = mo13847m();
        m.mo13841a(C9956c.EnumC9957a.NOT_GENERATED);
        return m.mo13843a();
    }
}
