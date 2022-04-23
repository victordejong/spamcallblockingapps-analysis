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

    /* renamed from: a  reason: collision with root package name */
    private static afq f23229a;

    @Deprecated
    public static afq a(Context context, int i) {
        synchronized (afq.class) {
            try {
                afq afqVar = f23229a;
                return afqVar != null ? afqVar : a(new zzbar(204890000, i, true, false), context, new agl());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static afq a(Context context, mm mmVar, int i) {
        afq a2 = a(context, i);
        a2.g().a(mmVar);
        return a2;
    }

    @Deprecated
    private static afq a(zzbar zzbarVar, Context context, ahv.a aVar) {
        afq afqVar;
        synchronized (afq.class) {
            try {
                if (f23229a == null) {
                    Application application = null;
                    ahh ahhVar = new ahh();
                    afp.a aVar2 = new afp.a();
                    aVar2.f23226a = zzbarVar;
                    aVar2.f23228c = new WeakReference<>(context);
                    aVar2.f23227b = context.getApplicationContext() != null ? context.getApplicationContext() : context;
                    ahhVar.f23326a = (afp) dso.a(new afp(aVar2));
                    ahhVar.f23327b = (ahv) dso.a(new ahv(aVar));
                    dso.a(ahhVar.f23326a, afp.class);
                    dso.a(ahhVar.f23327b, ahv.class);
                    if (ahhVar.f23328c == null) {
                        ahhVar.f23328c = new ctt();
                    }
                    if (ahhVar.f23329d == null) {
                        ahhVar.f23329d = new aif();
                    }
                    if (ahhVar.e == null) {
                        ahhVar.e = new cqi();
                    }
                    f23229a = new ago(ahhVar.f23326a, ahhVar.f23327b, ahhVar.f23328c, ahhVar.f23329d, ahhVar.e);
                    aq.a(context);
                    zzr.zzkz().a(context, zzbarVar);
                    zzr.zzlb().a(context);
                    zzr.zzkv().zzan(context);
                    zzr.zzkv().zzao(context);
                    zzb.zzam(context);
                    eex zzky = zzr.zzky();
                    synchronized (zzky.f27752a) {
                        if (!zzky.f27754c) {
                            Context applicationContext = context.getApplicationContext();
                            Context context2 = applicationContext;
                            if (applicationContext == null) {
                                context2 = context;
                            }
                            if (context2 instanceof Application) {
                                application = (Application) context2;
                            }
                            if (application == null) {
                                zzd.zzez("Can not cast Context to Application");
                            } else {
                                if (zzky.f27753b == null) {
                                    zzky.f27753b = new efa();
                                }
                                efa efaVar = zzky.f27753b;
                                if (!efaVar.f27761c) {
                                    application.registerActivityLifecycleCallbacks(efaVar);
                                    if (context instanceof Activity) {
                                        efaVar.a((Activity) context);
                                    }
                                    efaVar.f27760b = application;
                                    efaVar.f27762d = ((Long) ekb.e().a(aq.aB)).longValue();
                                    efaVar.f27761c = true;
                                }
                                zzky.f27754c = true;
                            }
                        }
                    }
                    zzr.zzlq().initialize(context);
                    xe.a(context);
                    if (((Boolean) ekb.e().a(aq.dM)).booleanValue()) {
                        if (!((Boolean) ekb.e().a(aq.am)).booleanValue()) {
                            ehk ehkVar = new ehk(new ehq(context));
                            bqv bqvVar = new bqv(new bqt(context), f23229a.e());
                            zzr.zzkv();
                            final brm brmVar = new brm(context, zzbarVar, ehkVar, bqvVar, zzj.zzzr(), f23229a.a());
                            final boolean zzzn = zzr.zzkz().d().zzzn();
                            try {
                                brmVar.f24952c.a(new css(brmVar, zzzn) { // from class: com.google.android.gms.internal.ads.brl

                                    /* renamed from: a  reason: collision with root package name */
                                    private final brm f24948a;

                                    /* renamed from: b  reason: collision with root package name */
                                    private final boolean f24949b;

                                    /* JADX INFO: Access modifiers changed from: package-private */
                                    {
                                        this.f24948a = brmVar;
                                        this.f24949b = zzzn;
                                    }

                                    @Override // com.google.android.gms.internal.ads.css
                                    public final Object a(Object obj) {
                                        brm brmVar2 = this.f24948a;
                                        SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                                        if (this.f24949b) {
                                            brmVar2.f24951b.deleteDatabase("OfflineUpload.db");
                                            return null;
                                        }
                                        if (((Boolean) ekb.e().a(aq.fe)).booleanValue()) {
                                            brmVar2.f.a(ctz.a("oa_upload").a("oa_failed_reqs", String.valueOf(bri.a(sQLiteDatabase, 0))).a("oa_total_reqs", String.valueOf(bri.a(sQLiteDatabase, 1))).a("oa_upload_time", String.valueOf(zzr.zzlc().a())).a("oa_last_successful_time", String.valueOf(bri.b(sQLiteDatabase))).a("oa_session_id", brmVar2.g.zzzn() ? "" : brmVar2.e));
                                            ArrayList<eht.t.a> a2 = bri.a(sQLiteDatabase);
                                            brm.a(sQLiteDatabase, a2);
                                            ArrayList<eht.t.a> arrayList = a2;
                                            int size = arrayList.size();
                                            int i = 0;
                                            while (i < size) {
                                                eht.t.a aVar3 = arrayList.get(i);
                                                i++;
                                                eht.t.a aVar4 = aVar3;
                                                ctz a3 = ctz.a("oa_signals").a("oa_session_id", brmVar2.g.zzzn() ? "" : brmVar2.e);
                                                eht.r d2 = aVar4.zzceh == null ? eht.r.d() : aVar4.zzceh;
                                                ctz a4 = a3.a("oa_sig_ts", String.valueOf(aVar4.zzceb)).a("oa_sig_status", String.valueOf(aVar4.a().zzv())).a("oa_sig_resp_lat", String.valueOf(aVar4.zzced)).a("oa_sig_render_lat", String.valueOf(aVar4.zzcee)).a("oa_sig_formats", new czh(new dnq(aVar4.zzcef, eht.t.a.zzceg), brq.f24959a).toString()).a("oa_sig_nw_type", d2.a() ? String.valueOf(d2.b().zzv()) : "-1");
                                                eid zzcg = eid.zzcg(aVar4.zzcei);
                                                eid eidVar = zzcg;
                                                if (zzcg == null) {
                                                    eidVar = eid.ENUM_FALSE;
                                                }
                                                ctz a5 = a4.a("oa_sig_wifi", String.valueOf(eidVar.zzv()));
                                                eid zzcg2 = eid.zzcg(aVar4.zzcej);
                                                eid eidVar2 = zzcg2;
                                                if (zzcg2 == null) {
                                                    eidVar2 = eid.ENUM_FALSE;
                                                }
                                                ctz a6 = a5.a("oa_sig_airplane", String.valueOf(eidVar2.zzv()));
                                                eid zzcg3 = eid.zzcg(aVar4.zzcek);
                                                eid eidVar3 = zzcg3;
                                                if (zzcg3 == null) {
                                                    eidVar3 = eid.ENUM_FALSE;
                                                }
                                                ctz a7 = a6.a("oa_sig_data", String.valueOf(eidVar3.zzv())).a("oa_sig_nw_resp", String.valueOf(aVar4.zzcel));
                                                eid zzcg4 = eid.zzcg(aVar4.zzcem);
                                                eid eidVar4 = zzcg4;
                                                if (zzcg4 == null) {
                                                    eidVar4 = eid.ENUM_FALSE;
                                                }
                                                ctz a8 = a7.a("oa_sig_offline", String.valueOf(eidVar4.zzv()));
                                                eht.t.b zzcn = eht.t.b.zzcn(aVar4.zzcen);
                                                eht.t.b bVar = zzcn;
                                                if (zzcn == null) {
                                                    bVar = eht.t.b.UNSPECIFIED;
                                                }
                                                a8.a("oa_sig_nw_state", String.valueOf(bVar.zzv()));
                                                if (((d2.zzdv & 2) != 0) && d2.a() && d2.b().equals(eht.r.c.CELL)) {
                                                    eht.r.b zzch = eht.r.b.zzch(d2.zzcdn);
                                                    eht.r.b bVar2 = zzch;
                                                    if (zzch == null) {
                                                        bVar2 = eht.r.b.CELLULAR_NETWORK_TYPE_UNSPECIFIED;
                                                    }
                                                    a3.a("oa_sig_cell_type", String.valueOf(bVar2.zzv()));
                                                }
                                                brmVar2.f.a(a3);
                                            }
                                        } else {
                                            int i2 = 2;
                                            ArrayList<eht.t.a> a9 = bri.a(sQLiteDatabase);
                                            final eht.t d3 = eht.t.a().a(brmVar2.f24951b.getPackageName()).b(Build.MODEL).a(bri.a(sQLiteDatabase, 0)).a(a9).b(bri.a(sQLiteDatabase, 1)).a(zzr.zzlc().a()).b(bri.b(sQLiteDatabase)).f();
                                            brm.a(sQLiteDatabase, a9);
                                            brmVar2.f24950a.a(new ehj(d3) { // from class: com.google.android.gms.internal.ads.bro

                                                /* renamed from: a  reason: collision with root package name */
                                                private final eht.t f24955a;

                                                /* JADX INFO: Access modifiers changed from: package-private */
                                                {
                                                    this.f24955a = d3;
                                                }

                                                @Override // com.google.android.gms.internal.ads.ehj
                                                public final void a(eht.n.a aVar5) {
                                                    aVar5.a(this.f24955a);
                                                }
                                            });
                                            eht.z.a b2 = eht.z.a().a(brmVar2.f24953d.zzeka).b(brmVar2.f24953d.zzekb);
                                            if (brmVar2.f24953d.zzekc) {
                                                i2 = 0;
                                            }
                                            final eht.z d4 = b2.c(i2).f();
                                            brmVar2.f24950a.a(new ehj(d4) { // from class: com.google.android.gms.internal.ads.brn

                                                /* renamed from: a  reason: collision with root package name */
                                                private final eht.z f24954a;

                                                /* JADX INFO: Access modifiers changed from: package-private */
                                                {
                                                    this.f24954a = d4;
                                                }

                                                @Override // com.google.android.gms.internal.ads.ehj
                                                public final void a(eht.n.a aVar5) {
                                                    aVar5.a(aVar5.h().k().a(this.f24954a));
                                                }
                                            });
                                            brmVar2.f24950a.a(ehn.a.b.OFFLINE_UPLOAD);
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
                afqVar = f23229a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return afqVar;
    }

    protected abstract cht a(cja cjaVar);

    @Override // com.google.android.gms.internal.ads.ait
    public final cht a(zzauj zzaujVar, int i) {
        return a(new cja(zzaujVar, i));
    }

    public abstract cty a();

    public abstract Executor b();

    public abstract ScheduledExecutorService c();

    public abstract Executor d();

    public abstract dbs e();

    public abstract atx f();

    public abstract bjg g();

    public abstract aib h();

    public abstract amq i();

    public abstract clg j();

    public abstract akw k();

    public abstract ale l();

    public abstract cjv m();

    public abstract bah n();

    public abstract cnd o();

    public abstract bbd p();

    public abstract bhz q();

    public abstract coq r();

    public abstract cat s();

    public abstract caw t();

    public abstract bsc u();

    public abstract cqd<bgy> v();
}
