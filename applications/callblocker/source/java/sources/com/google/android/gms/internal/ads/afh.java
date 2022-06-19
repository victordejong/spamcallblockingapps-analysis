package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.internal.ads.afk;
import com.google.android.gms.internal.ads.ahf;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/afh.class */
public abstract class afh implements aig {
    @GuardedBy("AppComponent.class")

    /* renamed from: a */
    private static afh f8095a;

    @Deprecated
    /* renamed from: a */
    public static afh m13409a(Context context, int i) {
        afh m13407a;
        synchronized (afh.class) {
            try {
                m13407a = f8095a != null ? f8095a : m13407a(new C3647yd(201004000, i, true, false), context, new agc());
            } catch (Throwable th) {
                throw th;
            }
        }
        return m13407a;
    }

    /* renamed from: a */
    public static afh m13408a(Context context, AbstractC3280ko abstractC3280ko, int i) {
        afh m13409a = m13409a(context, i);
        m13409a.mo13363f().m12008a(abstractC3280ko);
        return m13409a;
    }

    @Deprecated
    /* renamed from: a */
    private static afh m13407a(C3647yd c3647yd, Context context, ahf.AbstractC2770a abstractC2770a) {
        afh afhVar;
        synchronized (afh.class) {
            try {
                if (f8095a == null) {
                    f8095a = new agw().m13200a(new afk(new afk.C2767a().m13399a(c3647yd).m13401a(context))).m13199a(new ahf(abstractC2770a)).m13201a();
                    edi.m7866a(context);
                    C2341q.m14740g().m7098a(context, c3647yd);
                    C2341q.m14738i().m8502a(context);
                    C2341q.m14744c().m7008a(context);
                    C2341q.m14744c().m6977b(context);
                    C3554us.m7054a(context);
                    C2341q.m14741f().m8566a(context);
                    C2341q.m14723x().m6818a(context);
                    if (((Boolean) dyx.m8158e().m7876a(edi.f16527da)).booleanValue()) {
                        new bmr(context, c3647yd, new dwi(new dwn(context)), new bma(new bly(context), f8095a.mo13367d())).m11760a();
                    }
                }
                afhVar = f8095a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return afhVar;
    }

    /* renamed from: a */
    protected abstract cba mo13372a(cck cckVar);

    @Override // com.google.android.gms.internal.ads.aig
    /* renamed from: a */
    public final cba mo13098a(C3423pw c3423pw, int i) {
        return mo13372a(new cck(c3423pw, i));
    }

    /* renamed from: a */
    public abstract Executor mo13374a();

    /* renamed from: b */
    public abstract ScheduledExecutorService mo13371b();

    /* renamed from: c */
    public abstract Executor mo13369c();

    /* renamed from: d */
    public abstract crs mo13367d();

    /* renamed from: e */
    public abstract arz mo13365e();

    /* renamed from: f */
    public abstract bfg mo13363f();

    /* renamed from: g */
    public abstract ahl mo13361g();

    /* renamed from: h */
    public abstract alg mo13359h();

    /* renamed from: i */
    public abstract ajx mo13357i();

    /* renamed from: j */
    public abstract cdo mo13355j();

    /* renamed from: k */
    public abstract awp mo13353k();

    /* renamed from: l */
    public abstract axn mo13351l();

    /* renamed from: m */
    public abstract bdx mo13349m();

    /* renamed from: n */
    public abstract cgi mo13347n();

    /* renamed from: o */
    public abstract btu mo13345o();

    /* renamed from: p */
    public abstract chr<bcy> mo13343p();
}
