package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.a70;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/mi1.class */
final class mi1<R extends a70<? extends u30>> {

    /* renamed from: a */
    private final dn1 f7565a;

    /* renamed from: b */
    private final oi1 f7566b;

    /* renamed from: c */
    private final pi1<R> f7567c;

    /* renamed from: d */
    private final Executor f7568d;

    /* renamed from: e */
    private li1 f7569e;

    public mi1(dn1 dn1Var, oi1 oi1Var, pi1<R> pi1Var, Executor executor) {
        this.f7565a = dn1Var;
        this.f7566b = oi1Var;
        this.f7567c = pi1Var;
        this.f7568d = executor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Deprecated
    /* renamed from: e */
    public final mn1 m6573e() {
        sl1 zza = this.f7567c.m6193a(this.f7566b).m4658d().zza();
        return this.f7565a.m7718d(zza.f8499d, zza.f8501f, zza.f8505j);
    }

    /* renamed from: a */
    public final rz1<li1> m6577a() {
        rz1 rz1Var;
        li1 li1Var = this.f7569e;
        if (li1Var != null) {
            return kz1.a(li1Var);
        }
        if (!C1729f5.f6477a.m6222e().booleanValue()) {
            li1 li1Var2 = new li1(null, m6573e(), null);
            this.f7569e = li1Var2;
            rz1Var = kz1.a(li1Var2);
        } else {
            z60<R> a = this.f7567c.m6193a(this.f7566b);
            a.m4655s(new xh1(this.f7565a.m7721a().i));
            rz1Var = kz1.e(kz1.i(bz1.E(a.m4658d().m8159c().m4804e(this.f7565a.m7721a())), new ji1(this), this.f7568d), zzcsk.class, new ii1(this), this.f7568d);
        }
        return kz1.i(rz1Var, hi1.a, this.f7568d);
    }
}
