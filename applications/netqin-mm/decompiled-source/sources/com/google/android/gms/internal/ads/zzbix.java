package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzbja;
import com.google.android.gms.internal.ads.zzbky;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbix.class */
public abstract class zzbix implements zzbly {

    /* renamed from: a */
    public static zzbix f25040a;

    @Deprecated
    /* renamed from: a */
    public static zzbix m15431a(Context context, int i) {
        synchronized (zzbix.class) {
            try {
                if (f25040a == null) {
                    return m15429a(new zzbbx(202510000, i, true, false), context, new zzbjs());
                }
                return f25040a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static zzbix m15430a(Context context, zzanb zzanbVar, int i) {
        zzbix a = m15431a(context, i);
        a.mo15385f().m14105a(zzanbVar);
        return a;
    }

    @Deprecated
    /* renamed from: a */
    public static zzbix m15429a(zzbbx zzbbxVar, Context context, zzbky.zza zzaVar) {
        zzbix zzbixVar;
        synchronized (zzbix.class) {
            try {
                if (f25040a == null) {
                    zzbkm zzbkmVar = new zzbkm();
                    zzbja.zza zzaVar2 = new zzbja.zza();
                    zzaVar2.m15422a(zzbbxVar);
                    zzaVar2.m15423a(context);
                    zzbkmVar.m15348a(new zzbja(zzaVar2));
                    zzbkmVar.m15347a(new zzbky(zzaVar));
                    f25040a = zzbkmVar.m15349a();
                    zzabb.m16916a(context);
                    zzp.m17965g().m16191a(context, zzbbxVar);
                    zzp.m17963i().m11457a(context);
                    zzp.m17969c().m16144a(context);
                    zzp.m17969c().m16113b(context);
                    zzayn.m16156a(context);
                    zzp.m17966f().m11510a(context);
                    zzp.m17948x().m15919a(context);
                    if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23830i3)).booleanValue()) {
                        new zzcsm(context, zzbbxVar, new zzts(new zztx(context)), new zzcrw(new zzcru(context), f25040a.mo15389d())).m13873a();
                    }
                }
                zzbixVar = f25040a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzbixVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbly
    /* renamed from: a */
    public final zzdhp mo15328a(zzatc zzatcVar, int i) {
        return mo15394a(new zzdiy(zzatcVar, i));
    }

    /* renamed from: a */
    public abstract zzdhp mo15394a(zzdiy zzdiyVar);

    /* renamed from: a */
    public abstract Executor mo15396a();

    /* renamed from: b */
    public abstract ScheduledExecutorService mo15393b();

    /* renamed from: c */
    public abstract Executor mo15391c();

    /* renamed from: d */
    public abstract zzdzb mo15389d();

    /* renamed from: e */
    public abstract zzbwk mo15387e();

    /* renamed from: f */
    public abstract zzcku mo15385f();

    /* renamed from: g */
    public abstract zzbld mo15383g();

    /* renamed from: h */
    public abstract zzbpl mo15381h();

    /* renamed from: i */
    public abstract zzbnp mo15379i();

    /* renamed from: j */
    public abstract zzboe mo15377j();

    /* renamed from: k */
    public abstract zzdjx mo15375k();

    /* renamed from: l */
    public abstract zzccd mo15373l();

    /* renamed from: m */
    public abstract zzccz mo15371m();

    /* renamed from: n */
    public abstract zzcjm mo15369n();

    /* renamed from: o */
    public abstract zzdnm mo15367o();

    /* renamed from: p */
    public abstract zzdan mo15365p();

    /* renamed from: q */
    public abstract zzdaq mo15363q();

    /* renamed from: r */
    public abstract zzcsy mo15361r();

    /* renamed from: s */
    public abstract zzdoz<zzcil> mo15359s();
}
