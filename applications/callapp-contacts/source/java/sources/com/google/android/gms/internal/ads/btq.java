package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.dynamic.BinderC12129d;
import java.util.concurrent.ExecutionException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/btq.class */
public final class btq implements bss<alq, AbstractC12807os, buh> {

    /* renamed from: a */
    final Context f44719a;

    /* renamed from: b */
    View f44720b;

    /* renamed from: c */
    AbstractC12753mt f44721c;

    /* renamed from: d */
    private final amn f44722d;

    public btq(Context context, amn amnVar) {
        this.f44719a = context;
        this.f44722d = amnVar;
    }

    /* renamed from: a */
    private final View m17612a(cov covVar) throws zzdpq {
        try {
            View view = (View) BinderC12129d.m18980a(this.f44721c.mo14438a());
            boolean mo14437b = this.f44721c.mo14437b();
            if (view == null) {
                throw new zzdpq(new Exception("BannerRtbAdapterWrapper interscrollerView should not be null"));
            }
            if (!mo14437b) {
                return view;
            }
            try {
                return (View) daj.m16941a(dbh.m16899a((Object) null), new daq(this, view, covVar) { // from class: com.google.android.gms.internal.ads.bts

                    /* renamed from: a */
                    private final btq f44726a;

                    /* renamed from: b */
                    private final View f44727b;

                    /* renamed from: c */
                    private final cov f44728c;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f44726a = this;
                        this.f44727b = view;
                        this.f44728c = covVar;
                    }

                    @Override // com.google.android.gms.internal.ads.daq
                    public final dbt zzf(Object obj) {
                        btq btqVar = this.f44726a;
                        return dbh.m16899a(zzbos.m13722a(btqVar.f44719a, this.f44727b, this.f44728c));
                    }
                }, C13091zd.f50122e).get();
            } catch (InterruptedException | ExecutionException e) {
                throw new zzdpq(e);
            }
        } catch (RemoteException e2) {
            throw new zzdpq(e2);
        }
    }

    /* renamed from: a */
    public static final /* synthetic */ emk m17613a(bsn bsnVar) throws zzdpq {
        try {
            return ((AbstractC12807os) bsnVar.f44640b).mo14263c();
        } catch (RemoteException e) {
            throw new zzdpq(e);
        }
    }

    @Override // com.google.android.gms.internal.ads.bss
    /* renamed from: a */
    public final void mo17593a(cpk cpkVar, cov covVar, bsn<AbstractC12807os, buh> bsnVar) throws zzdpq {
        try {
            bsnVar.f44640b.mo14277a(covVar.f46240T);
            if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42900ey)).booleanValue() || !covVar.f46249ab) {
                bsnVar.f44640b.mo14275a(covVar.f46235O, covVar.f46274u.toString(), cpkVar.f46318a.f46306a.f46324d, BinderC12129d.m18979a(this.f44719a), new btu(this, bsnVar), bsnVar.f44641c, cpkVar.f46318a.f46306a.f46325e);
            } else {
                bsnVar.f44640b.mo14265b(covVar.f46235O, covVar.f46274u.toString(), cpkVar.f46318a.f46306a.f46324d, BinderC12129d.m18979a(this.f44719a), new btu(this, bsnVar), bsnVar.f44641c, cpkVar.f46318a.f46306a.f46325e);
            }
        } catch (RemoteException e) {
            throw new zzdpq(e);
        }
    }

    @Override // com.google.android.gms.internal.ads.bss
    /* renamed from: b */
    public final /* synthetic */ alq mo17592b(cpk cpkVar, cov covVar, bsn<AbstractC12807os, buh> bsnVar) throws zzdpq, zzcwo {
        View m17612a = (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42900ey)).booleanValue() || !covVar.f46249ab) ? this.f44720b : m17612a(covVar);
        alt mo18560a = this.f44722d.mo18560a(new aof(cpkVar, covVar, bsnVar.f44639a), new alx(m17612a, null, new anq(bsnVar) { // from class: com.google.android.gms.internal.ads.btt

            /* renamed from: a */
            private final bsn f44729a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f44729a = bsnVar;
            }

            @Override // com.google.android.gms.internal.ads.anq
            /* renamed from: a */
            public final emk mo17577a() {
                return btq.m17613a(this.f44729a);
            }
        }, covVar.f46273t.get(0)));
        mo18560a.mo18576j().m18323a(m17612a);
        bsnVar.f44641c.m17606a((AbstractC12752ms) mo18560a.mo18522g());
        return mo18560a.mo18578h();
    }
}
