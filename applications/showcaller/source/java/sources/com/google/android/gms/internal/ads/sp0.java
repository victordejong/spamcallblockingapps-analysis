package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5719n1;
import com.google.android.gms.ads.nonagon.signalgeneration.AbstractC5828o;
import com.google.android.gms.ads.nonagon.signalgeneration.BinderC5814e0;
import com.google.android.gms.ads.nonagon.signalgeneration.C5824k;
import java.util.UUID;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/sp0.class */
public abstract class sp0 implements lt0 {

    /* renamed from: a */
    private static sp0 f29596a;

    /* renamed from: d */
    public static sp0 m10962d(Context context, s70 s70Var, int i) {
        sp0 m10961e = m10961e(context, i);
        m10961e.mo10954l().m12598a(s70Var);
        return m10961e;
    }

    @Deprecated
    /* renamed from: e */
    public static sp0 m10961e(Context context, int i) {
        synchronized (sp0.class) {
            try {
                sp0 sp0Var = f29596a;
                return sp0Var != null ? sp0Var : m10960f(new zzcgz(213806000, i, true, false), context, new sq0());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Deprecated
    /* renamed from: f */
    public static sp0 m10960f(zzcgz zzcgzVar, Context context, gs0 gs0Var) {
        sp0 sp0Var;
        synchronized (sp0.class) {
            try {
                if (f29596a == null) {
                    jr0 jr0Var = new jr0(null);
                    tp0 tp0Var = new tp0();
                    tp0Var.m10589d(zzcgzVar);
                    tp0Var.m10588e(context);
                    jr0Var.m14054a(new vp0(tp0Var, null));
                    jr0Var.m14053b(new hs0(gs0Var));
                    f29596a = jr0Var.m14052c();
                    C6679kw.m13770a(context);
                    C5667s.m18156h().m12237i(context, zzcgzVar);
                    C5667s.m18154j().m8787d(context);
                    C5667s.m18160d().m18094N(context);
                    C5667s.m18160d().m18093O(context);
                    C5667s.m18160d().m18083Y(context);
                    C5719n1.m17991a(context);
                    C5667s.m18157g().m13877a(context);
                    C5667s.m18139y().m18006a(context);
                    mg0.m13199d(context);
                    if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25835x4)).booleanValue()) {
                        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25767p0)).booleanValue()) {
                            C6854pm c6854pm = new C6854pm(new C7002tm(context));
                            cv1 cv1Var = new cv1(new yu1(context), f29596a.mo10956j());
                            C5667s.m18160d();
                            new vv1(context, zzcgzVar, c6854pm, cv1Var, UUID.randomUUID().toString(), f29596a.mo10959g()).m9864a(C5667s.m18156h().m12230p().mo17948t());
                        }
                    }
                }
                sp0Var = f29596a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return sp0Var;
    }

    /* renamed from: A */
    public abstract lw1 mo10968A();

    /* renamed from: B */
    public abstract pk2<qj1> mo10967B();

    /* renamed from: C */
    public abstract lq1 mo10966C();

    @Override // com.google.android.gms.internal.ads.lt0
    /* renamed from: a */
    public final pb2 mo10965a(zzcbj zzcbjVar, int i) {
        return mo10964b(new xc2(zzcbjVar, i));
    }

    /* renamed from: b */
    protected abstract pb2 mo10964b(xc2 xc2Var);

    /* renamed from: c */
    public abstract ap1 mo10963c();

    /* renamed from: g */
    public abstract jo2 mo10959g();

    /* renamed from: h */
    public abstract Executor mo10958h();

    /* renamed from: i */
    public abstract ScheduledExecutorService mo10957i();

    /* renamed from: j */
    public abstract s03 mo10956j();

    /* renamed from: k */
    public abstract o51 mo10955k();

    /* renamed from: l */
    public abstract ol1 mo10954l();

    /* renamed from: m */
    public abstract rs0 mo10953m();

    /* renamed from: n */
    public abstract ux0 mo10952n();

    /* renamed from: o */
    public abstract of2 mo10951o();

    /* renamed from: p */
    public abstract yv0 mo10950p();

    /* renamed from: q */
    public abstract jw0 mo10949q();

    /* renamed from: r */
    public abstract yd2 mo10948r();

    /* renamed from: s */
    public abstract ic1 mo10947s();

    /* renamed from: t */
    public abstract ih2 mo10946t();

    /* renamed from: u */
    public abstract ed1 mo10945u();

    /* renamed from: v */
    public abstract jk1 mo10944v();

    /* renamed from: w */
    public abstract xi2 mo10943w();

    /* renamed from: x */
    public abstract AbstractC5828o mo10942x();

    /* renamed from: y */
    public abstract BinderC5814e0 mo10941y();

    /* renamed from: z */
    public abstract C5824k mo10940z();
}
