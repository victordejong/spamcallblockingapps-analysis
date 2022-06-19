package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.ads.internal.util.zzbh;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.zza;
import com.google.android.gms.dynamic.BinderC12129d;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/btm.class */
public final class btm implements bss<alq, cqe, buh> {

    /* renamed from: a */
    final Context f44706a;

    /* renamed from: b */
    private final amn f44707b;

    /* renamed from: c */
    private final Executor f44708c;

    public btm(Context context, amn amnVar, Executor executor) {
        this.f44706a = context;
        this.f44707b = amnVar;
        this.f44708c = executor;
    }

    /* renamed from: a */
    private final View m17614a(bsn<cqe, buh> bsnVar, cov covVar) throws zzdpq {
        AbstractC12753mt m17333b = bsnVar.f44640b.m17333b();
        if (m17333b == null) {
            zzd.zzex("getInterscrollerAd should not be null after loadInterscrollerAd loaded ad.");
            throw new zzdpq(new Exception("getInterscrollerAd should not be null after loadInterscrollerAd loaded ad."));
        }
        try {
            View view = (View) BinderC12129d.m18980a(m17333b.mo14438a());
            boolean mo14437b = m17333b.mo14437b();
            if (view == null) {
                throw new zzdpq(new Exception("BannerAdapterWrapper interscrollerView should not be null"));
            }
            if (!mo14437b) {
                return view;
            }
            try {
                return (View) daj.m16941a(dbh.m16899a((Object) null), new daq(this, view, covVar) { // from class: com.google.android.gms.internal.ads.bto

                    /* renamed from: a */
                    private final btm f44715a;

                    /* renamed from: b */
                    private final View f44716b;

                    /* renamed from: c */
                    private final cov f44717c;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f44715a = this;
                        this.f44716b = view;
                        this.f44717c = covVar;
                    }

                    @Override // com.google.android.gms.internal.ads.daq
                    public final dbt zzf(Object obj) {
                        btm btmVar = this.f44715a;
                        return dbh.m16899a(zzbos.m13722a(btmVar.f44706a, this.f44716b, this.f44717c));
                    }
                }, C13091zd.f50122e).get();
            } catch (InterruptedException | ExecutionException e) {
                throw new zzdpq(e);
            }
        } catch (RemoteException e2) {
            throw new zzdpq(e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.bss
    /* renamed from: a */
    public final void mo17593a(cpk cpkVar, cov covVar, bsn<cqe, buh> bsnVar) throws zzdpq {
        zzvt zzvtVar;
        zzdpq zzdpqVar;
        zzvt zzvtVar2 = cpkVar.f46318a.f46306a.f46325e;
        if (zzvtVar2.zzciy) {
            zzvtVar = new zzvt(this.f44706a, zza.zzb(zzvtVar2.width, zzvtVar2.height));
        } else {
            zzvtVar = (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42900ey)).booleanValue() || !covVar.f46249ab) ? cps.m17358a(this.f44706a, covVar.f46273t) : new zzvt(this.f44706a, zza.zzc(zzvtVar2.width, zzvtVar2.height));
        }
        if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42900ey)).booleanValue() || !covVar.f46249ab) {
            try {
                bsnVar.f44640b.f46377a.mo14361a(BinderC12129d.m18979a(this.f44706a), zzvtVar, cpkVar.f46318a.f46306a.f46324d, covVar.f46274u.toString(), zzbh.zza(covVar.f46271r), bsnVar.f44641c);
                return;
            } finally {
            }
        }
        try {
            bsnVar.f44640b.f46377a.mo14352b(BinderC12129d.m18979a(this.f44706a), zzvtVar, cpkVar.f46318a.f46306a.f46324d, covVar.f46274u.toString(), zzbh.zza(covVar.f46271r), bsnVar.f44641c);
        } finally {
        }
    }

    @Override // com.google.android.gms.internal.ads.bss
    /* renamed from: b */
    public final /* synthetic */ alq mo17592b(cpk cpkVar, cov covVar, bsn<cqe, buh> bsnVar) throws zzdpq, zzcwo {
        View m17336a = (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42900ey)).booleanValue() || !covVar.f46249ab) ? bsnVar.f44640b.m17336a() : m17614a(bsnVar, covVar);
        amn amnVar = this.f44707b;
        aof aofVar = new aof(cpkVar, covVar, bsnVar.f44639a);
        cqe cqeVar = bsnVar.f44640b;
        cqeVar.getClass();
        alt mo18560a = amnVar.mo18560a(aofVar, new alx(m17336a, null, new anq(cqeVar) { // from class: com.google.android.gms.internal.ads.btp

            /* renamed from: a */
            private final cqe f44718a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f44718a = cqeVar;
            }

            @Override // com.google.android.gms.internal.ads.anq
            /* renamed from: a */
            public final emk mo17577a() {
                return this.f44718a.m17328g();
            }
        }, covVar.f46273t.get(0)));
        mo18560a.mo18576j().m18323a(m17336a);
        mo18560a.mo18528a().m18372a(new aji(bsnVar.f44640b), this.f44708c);
        bsnVar.f44641c.m17606a((AbstractC12752ms) mo18560a.mo18523f());
        return mo18560a.mo18578h();
    }
}
