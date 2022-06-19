package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import com.google.android.gms.ads.internal.util.zzb;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.afp;
import com.google.android.gms.internal.ads.ahv;
import com.google.android.gms.internal.ads.ehn;
import com.google.android.gms.internal.ads.eht;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/afq.class */
public abstract class afq implements ait {

    /* renamed from: a */
    private static afq f40159a;

    @Deprecated
    /* renamed from: a */
    public static afq m18768a(Context context, int i) {
        synchronized (afq.class) {
            try {
                afq afqVar = f40159a;
                return afqVar != null ? afqVar : m18766a(new zzbar(204890000, i, true, false), context, new agl());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static afq m18767a(Context context, AbstractC12746mm abstractC12746mm, int i) {
        afq m18768a = m18768a(context, i);
        m18768a.mo18724g().m17811a(abstractC12746mm);
        return m18768a;
    }

    @Deprecated
    /* renamed from: a */
    private static afq m18766a(zzbar zzbarVar, Context context, ahv.AbstractC12176a abstractC12176a) {
        afq afqVar;
        synchronized (afq.class) {
            try {
                if (f40159a == null) {
                    ahh ahhVar = new ahh();
                    afp.C12173a c12173a = new afp.C12173a();
                    c12173a.f40156a = zzbarVar;
                    c12173a.f40158c = new WeakReference<>(context);
                    c12173a.f40157b = context.getApplicationContext() != null ? context.getApplicationContext() : context;
                    ahhVar.f41477a = (afp) dso.m15767a(new afp(c12173a));
                    ahhVar.f41478b = (ahv) dso.m15767a(new ahv(abstractC12176a));
                    dso.m15766a(ahhVar.f41477a, afp.class);
                    dso.m15766a(ahhVar.f41478b, ahv.class);
                    if (ahhVar.f41479c == null) {
                        ahhVar.f41479c = new ctt();
                    }
                    if (ahhVar.f41480d == null) {
                        ahhVar.f41480d = new aif();
                    }
                    if (ahhVar.f41481e == null) {
                        ahhVar.f41481e = new cqi();
                    }
                    f40159a = new ago(ahhVar.f41477a, ahhVar.f41478b, ahhVar.f41479c, ahhVar.f41480d, ahhVar.f41481e);
                    C12187aq.m18474a(context);
                    zzr.zzkz().m13981a(context, zzbarVar);
                    zzr.zzlb().m15065a(context);
                    zzr.zzkv().zzan(context);
                    zzr.zzkv().zzao(context);
                    zzb.zzam(context);
                    eex zzky = zzr.zzky();
                    synchronized (zzky.f48912a) {
                        if (!zzky.f48914c) {
                            Context applicationContext = context.getApplicationContext();
                            Context context2 = applicationContext;
                            if (applicationContext == null) {
                                context2 = context;
                            }
                            Application application = null;
                            if (context2 instanceof Application) {
                                application = (Application) context2;
                            }
                            if (application == null) {
                                zzd.zzez("Can not cast Context to Application");
                            } else {
                                if (zzky.f48913b == null) {
                                    zzky.f48913b = new efa();
                                }
                                efa efaVar = zzky.f48913b;
                                if (!efaVar.f48921c) {
                                    application.registerActivityLifecycleCallbacks(efaVar);
                                    if (context instanceof Activity) {
                                        efaVar.m15106a((Activity) context);
                                    }
                                    efaVar.f48920b = application;
                                    efaVar.f48922d = ((Long) ekb.m14831e().m18571a(C12187aq.f42639aB)).longValue();
                                    efaVar.f48921c = true;
                                }
                                zzky.f48914c = true;
                            }
                        }
                    }
                    zzr.zzlq().initialize(context);
                    AbstractC13038xe.m14013a(context);
                    if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42809dM)).booleanValue()) {
                        if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42676am)).booleanValue()) {
                            ehk ehkVar = new ehk(new ehq(context));
                            bqv bqvVar = new bqv(new bqt(context), f40159a.mo18728e());
                            zzr.zzkv();
                            brm brmVar = new brm(context, zzbarVar, ehkVar, bqvVar, zzj.zzzr(), f40159a.mo18737a());
                            try {
                                brmVar.f44565c.m17663a(new css(brmVar, zzr.zzkz().m13975d().zzzn()) { // from class: com.google.android.gms.internal.ads.brl

                                    /* renamed from: a */
                                    private final brm f44561a;

                                    /* renamed from: b */
                                    private final boolean f44562b;

                                    /* JADX INFO: Access modifiers changed from: package-private */
                                    {
                                        this.f44561a = brmVar;
                                        this.f44562b = zzzn;
                                    }

                                    @Override // com.google.android.gms.internal.ads.css
                                    /* renamed from: a */
                                    public final Object mo17263a(Object obj) {
                                        brm brmVar2 = this.f44561a;
                                        SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                                        if (this.f44562b) {
                                            brmVar2.f44564b.deleteDatabase("OfflineUpload.db");
                                            return null;
                                        }
                                        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42933fe)).booleanValue()) {
                                            brmVar2.f44568f.mo17215a(ctz.m17226a("oa_upload").m17225a("oa_failed_reqs", String.valueOf(bri.m17639a(sQLiteDatabase, 0))).m17225a("oa_total_reqs", String.valueOf(bri.m17639a(sQLiteDatabase, 1))).m17225a("oa_upload_time", String.valueOf(zzr.zzlc().mo19039a())).m17225a("oa_last_successful_time", String.valueOf(bri.m17638b(sQLiteDatabase))).m17225a("oa_session_id", brmVar2.f44569g.zzzn() ? "" : brmVar2.f44567e));
                                            ArrayList<eht.C12508t.C12509a> m17640a = bri.m17640a(sQLiteDatabase);
                                            brm.m17635a(sQLiteDatabase, m17640a);
                                            ArrayList<eht.C12508t.C12509a> arrayList = m17640a;
                                            int size = arrayList.size();
                                            int i = 0;
                                            while (true) {
                                                int i2 = i;
                                                if (i2 >= size) {
                                                    break;
                                                }
                                                eht.C12508t.C12509a c12509a = arrayList.get(i2);
                                                int i3 = i2 + 1;
                                                eht.C12508t.C12509a c12509a2 = c12509a;
                                                ctz m17225a = ctz.m17226a("oa_signals").m17225a("oa_session_id", brmVar2.f44569g.zzzn() ? "" : brmVar2.f44567e);
                                                eht.C12502r m14950d = c12509a2.zzceh == null ? eht.C12502r.m14950d() : c12509a2.zzceh;
                                                ctz m17225a2 = m17225a.m17225a("oa_sig_ts", String.valueOf(c12509a2.zzceb)).m17225a("oa_sig_status", String.valueOf(c12509a2.m14936a().zzv())).m17225a("oa_sig_resp_lat", String.valueOf(c12509a2.zzced)).m17225a("oa_sig_render_lat", String.valueOf(c12509a2.zzcee)).m17225a("oa_sig_formats", new czh(new dnq(c12509a2.zzcef, eht.C12508t.C12509a.zzceg), brq.f44575a).toString()).m17225a("oa_sig_nw_type", m14950d.m14955a() ? String.valueOf(m14950d.m14952b().zzv()) : "-1");
                                                eid zzcg = eid.zzcg(c12509a2.zzcei);
                                                eid eidVar = zzcg;
                                                if (zzcg == null) {
                                                    eidVar = eid.ENUM_FALSE;
                                                }
                                                ctz m17225a3 = m17225a2.m17225a("oa_sig_wifi", String.valueOf(eidVar.zzv()));
                                                eid zzcg2 = eid.zzcg(c12509a2.zzcej);
                                                eid eidVar2 = zzcg2;
                                                if (zzcg2 == null) {
                                                    eidVar2 = eid.ENUM_FALSE;
                                                }
                                                ctz m17225a4 = m17225a3.m17225a("oa_sig_airplane", String.valueOf(eidVar2.zzv()));
                                                eid zzcg3 = eid.zzcg(c12509a2.zzcek);
                                                eid eidVar3 = zzcg3;
                                                if (zzcg3 == null) {
                                                    eidVar3 = eid.ENUM_FALSE;
                                                }
                                                ctz m17225a5 = m17225a4.m17225a("oa_sig_data", String.valueOf(eidVar3.zzv())).m17225a("oa_sig_nw_resp", String.valueOf(c12509a2.zzcel));
                                                eid zzcg4 = eid.zzcg(c12509a2.zzcem);
                                                eid eidVar4 = zzcg4;
                                                if (zzcg4 == null) {
                                                    eidVar4 = eid.ENUM_FALSE;
                                                }
                                                ctz m17225a6 = m17225a5.m17225a("oa_sig_offline", String.valueOf(eidVar4.zzv()));
                                                eht.C12508t.EnumC12511b zzcn = eht.C12508t.EnumC12511b.zzcn(c12509a2.zzcen);
                                                eht.C12508t.EnumC12511b enumC12511b = zzcn;
                                                if (zzcn == null) {
                                                    enumC12511b = eht.C12508t.EnumC12511b.UNSPECIFIED;
                                                }
                                                m17225a6.m17225a("oa_sig_nw_state", String.valueOf(enumC12511b.zzv()));
                                                if (((m14950d.zzdv & 2) != 0) && m14950d.m14955a() && m14950d.m14952b().equals(eht.C12502r.EnumC12505c.CELL)) {
                                                    eht.C12502r.EnumC12504b zzch = eht.C12502r.EnumC12504b.zzch(m14950d.zzcdn);
                                                    eht.C12502r.EnumC12504b enumC12504b = zzch;
                                                    if (zzch == null) {
                                                        enumC12504b = eht.C12502r.EnumC12504b.CELLULAR_NETWORK_TYPE_UNSPECIFIED;
                                                    }
                                                    m17225a.m17225a("oa_sig_cell_type", String.valueOf(enumC12504b.zzv()));
                                                }
                                                brmVar2.f44568f.mo17215a(m17225a);
                                                i = i3;
                                            }
                                        } else {
                                            int i4 = 2;
                                            ArrayList<eht.C12508t.C12509a> m17640a2 = bri.m17640a(sQLiteDatabase);
                                            final eht.C12508t mo16259f = eht.C12508t.m14945a().m14905a(brmVar2.f44564b.getPackageName()).m14902b(Build.MODEL).m14908a(bri.m17639a(sQLiteDatabase, 0)).m14906a(m17640a2).m14904b(bri.m17639a(sQLiteDatabase, 1)).m14907a(zzr.zzlc().mo19039a()).m14903b(bri.m17638b(sQLiteDatabase)).mo16259f();
                                            brm.m17635a(sQLiteDatabase, m17640a2);
                                            brmVar2.f44563a.m15048a(new ehj(mo16259f) { // from class: com.google.android.gms.internal.ads.bro

                                                /* renamed from: a */
                                                private final eht.C12508t f44571a;

                                                /* JADX INFO: Access modifiers changed from: package-private */
                                                {
                                                    this.f44571a = mo16259f;
                                                }

                                                @Override // com.google.android.gms.internal.ads.ehj
                                                /* renamed from: a */
                                                public final void mo15050a(eht.C12494n.C12495a c12495a) {
                                                    c12495a.m14964a(this.f44571a);
                                                }
                                            });
                                            eht.C12523z.C12524a m14889b = eht.C12523z.m14896a().m14890a(brmVar2.f44566d.zzeka).m14889b(brmVar2.f44566d.zzekb);
                                            if (brmVar2.f44566d.zzekc) {
                                                i4 = 0;
                                            }
                                            final eht.C12523z mo16259f2 = m14889b.m14888c(i4).mo16259f();
                                            brmVar2.f44563a.m15048a(new ehj(mo16259f2) { // from class: com.google.android.gms.internal.ads.brn

                                                /* renamed from: a */
                                                private final eht.C12523z f44570a;

                                                /* JADX INFO: Access modifiers changed from: package-private */
                                                {
                                                    this.f44570a = mo16259f2;
                                                }

                                                @Override // com.google.android.gms.internal.ads.ehj
                                                /* renamed from: a */
                                                public final void mo15050a(eht.C12494n.C12495a c12495a) {
                                                    c12495a.m14965a(c12495a.m14960h().m16334k().m14982a(this.f44570a));
                                                }
                                            });
                                            brmVar2.f44563a.m15047a(ehn.C12444a.EnumC12446b.OFFLINE_UPLOAD);
                                        }
                                        sQLiteDatabase.delete("offline_signal_contents", null, null);
                                        ContentValues contentValues = new ContentValues();
                                        contentValues.put("value", (Integer) 0);
                                        sQLiteDatabase.update("offline_signal_statistics", contentValues, "statistic_name = ?", new String[]{"failed_requests"});
                                        ContentValues contentValues2 = new ContentValues();
                                        contentValues2.put("value", (Integer) 0);
                                        sQLiteDatabase.update("offline_signal_statistics", contentValues2, "statistic_name = ?", new String[]{"total_requests"});
                                        return null;
                                    }
                                });
                            } catch (Exception e) {
                                String valueOf = String.valueOf(e.getMessage());
                                zzd.zzex(valueOf.length() != 0 ? "Error in offline signals database startup: ".concat(valueOf) : new String("Error in offline signals database startup: "));
                            }
                        }
                    }
                }
                afqVar = f40159a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return afqVar;
    }

    /* renamed from: a */
    protected abstract cht mo18735a(cja cjaVar);

    @Override // com.google.android.gms.internal.ads.ait
    /* renamed from: a */
    public final cht mo18650a(zzauj zzaujVar, int i) {
        return mo18735a(new cja(zzaujVar, i));
    }

    /* renamed from: a */
    public abstract cty mo18737a();

    /* renamed from: b */
    public abstract Executor mo18734b();

    /* renamed from: c */
    public abstract ScheduledExecutorService mo18732c();

    /* renamed from: d */
    public abstract Executor mo18730d();

    /* renamed from: e */
    public abstract dbs mo18728e();

    /* renamed from: f */
    public abstract atx mo18726f();

    /* renamed from: g */
    public abstract bjg mo18724g();

    /* renamed from: h */
    public abstract aib mo18722h();

    /* renamed from: i */
    public abstract amq mo18720i();

    /* renamed from: j */
    public abstract clg mo18718j();

    /* renamed from: k */
    public abstract akw mo18716k();

    /* renamed from: l */
    public abstract ale mo18714l();

    /* renamed from: m */
    public abstract cjv mo18712m();

    /* renamed from: n */
    public abstract bah mo18710n();

    /* renamed from: o */
    public abstract cnd mo18708o();

    /* renamed from: p */
    public abstract bbd mo18706p();

    /* renamed from: q */
    public abstract bhz mo18704q();

    /* renamed from: r */
    public abstract coq mo18702r();

    /* renamed from: s */
    public abstract cat mo18700s();

    /* renamed from: t */
    public abstract caw mo18698t();

    /* renamed from: u */
    public abstract bsc mo18696u();

    /* renamed from: v */
    public abstract cqd<bgy> mo18694v();
}
