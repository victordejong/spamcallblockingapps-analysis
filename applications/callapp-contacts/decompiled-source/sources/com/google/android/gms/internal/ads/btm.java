package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.ads.internal.util.zzbh;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.zza;
import com.google.android.gms.dynamic.d;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/btm.class */
public final class btm implements bss<alq, cqe, buh> {

    /* renamed from: a  reason: collision with root package name */
    final Context f25067a;

    /* renamed from: b  reason: collision with root package name */
    private final amn f25068b;

    /* renamed from: c  reason: collision with root package name */
    private final Executor f25069c;

    public btm(Context context, amn amnVar, Executor executor) {
        this.f25067a = context;
        this.f25068b = amnVar;
        this.f25069c = executor;
    }

    private final View a(bsn<cqe, buh> bsnVar, final cov covVar) throws zzdpq {
        mt b2 = bsnVar.f25013b.b();
        if (b2 != null) {
            try {
                final View view = (View) d.a(b2.a());
                boolean b3 = b2.b();
                if (view == null) {
                    throw new zzdpq(new Exception("BannerAdapterWrapper interscrollerView should not be null"));
                } else if (!b3) {
                    return view;
                } else {
                    try {
                        return (View) daj.a(dbh.a((Object) null), new daq(this, view, covVar) { // from class: com.google.android.gms.internal.ads.bto

                            /* renamed from: a  reason: collision with root package name */
                            private final btm f25074a;

                            /* renamed from: b  reason: collision with root package name */
                            private final View f25075b;

                            /* renamed from: c  reason: collision with root package name */
                            private final cov f25076c;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f25074a = this;
                                this.f25075b = view;
                                this.f25076c = covVar;
                            }

                            @Override // com.google.android.gms.internal.ads.daq
                            public final dbt zzf(Object obj) {
                                btm btmVar = this.f25074a;
                                return dbh.a(zzbos.a(btmVar.f25067a, this.f25075b, this.f25076c));
                            }
                        }, zd.e).get();
                    } catch (InterruptedException | ExecutionException e) {
                        throw new zzdpq(e);
                    }
                }
            } catch (RemoteException e2) {
                throw new zzdpq(e2);
            }
        } else {
            zzd.zzex("getInterscrollerAd should not be null after loadInterscrollerAd loaded ad.");
            throw new zzdpq(new Exception("getInterscrollerAd should not be null after loadInterscrollerAd loaded ad."));
        }
    }

    @Override // com.google.android.gms.internal.ads.bss
    public final void a(cpk cpkVar, cov covVar, bsn<cqe, buh> bsnVar) throws zzdpq {
        zzvt zzvtVar;
        zzdpq zzdpqVar;
        zzvt zzvtVar2 = cpkVar.f26221a.f26209a.e;
        if (zzvtVar2.zzciy) {
            zzvtVar = new zzvt(this.f25067a, zza.zzb(zzvtVar2.width, zzvtVar2.height));
        } else {
            zzvtVar = (!((Boolean) ekb.e().a(aq.ey)).booleanValue() || !covVar.ab) ? cps.a(this.f25067a, covVar.t) : new zzvt(this.f25067a, zza.zzc(zzvtVar2.width, zzvtVar2.height));
        }
        if (!((Boolean) ekb.e().a(aq.ey)).booleanValue() || !covVar.ab) {
            try {
                bsnVar.f25013b.f26255a.a(d.a(this.f25067a), zzvtVar, cpkVar.f26221a.f26209a.f26227d, covVar.u.toString(), zzbh.zza(covVar.r), bsnVar.f25014c);
            } finally {
            }
        } else {
            try {
                bsnVar.f25013b.f26255a.b(d.a(this.f25067a), zzvtVar, cpkVar.f26221a.f26209a.f26227d, covVar.u.toString(), zzbh.zza(covVar.r), bsnVar.f25014c);
            } finally {
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.bss
    public final /* synthetic */ alq b(cpk cpkVar, cov covVar, bsn<cqe, buh> bsnVar) throws zzdpq, zzcwo {
        View a2 = (!((Boolean) ekb.e().a(aq.ey)).booleanValue() || !covVar.ab) ? bsnVar.f25013b.a() : a(bsnVar, covVar);
        amn amnVar = this.f25068b;
        aof aofVar = new aof(cpkVar, covVar, bsnVar.f25012a);
        final cqe cqeVar = bsnVar.f25013b;
        cqeVar.getClass();
        alt a3 = amnVar.a(aofVar, new alx(a2, null, new anq(cqeVar) { // from class: com.google.android.gms.internal.ads.btp

            /* renamed from: a  reason: collision with root package name */
            private final cqe f25077a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25077a = cqeVar;
            }

            @Override // com.google.android.gms.internal.ads.anq
            public final emk a() {
                return this.f25077a.g();
            }
        }, covVar.t.get(0)));
        a3.j().a(a2);
        a3.a().a(new aji(bsnVar.f25013b), this.f25069c);
        bsnVar.f25014c.a((ms) a3.f());
        return a3.h();
    }
}
