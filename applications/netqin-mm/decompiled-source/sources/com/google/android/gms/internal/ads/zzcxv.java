package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.zzbvp;
import com.google.android.gms.internal.ads.zzctc;
import com.google.android.gms.internal.ads.zzcxv;
import com.google.android.gms.internal.ads.zzdnv;
import com.google.android.gms.internal.ads.zzdog;
import java.util.Iterator;
import p131c.p161d.p170b.p224d.p252g.p253a.C3925pq;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcxv.class */
public final class zzcxv<AdT, AdapterT, ListenerT extends zzbvp> implements zzcta<AdT> {

    /* renamed from: a */
    public final zzctb<AdapterT, ListenerT> f26721a;

    /* renamed from: b */
    public final zzcti<AdT, AdapterT, ListenerT> f26722b;

    /* renamed from: c */
    public final zzdsi f26723c;

    /* renamed from: d */
    public final zzdzb f26724d;

    public zzcxv(zzdsi zzdsiVar, zzdzb zzdzbVar, zzctb<AdapterT, ListenerT> zzctbVar, zzcti<AdT, AdapterT, ListenerT> zzctiVar) {
        this.f26723c = zzdsiVar;
        this.f26724d = zzdzbVar;
        this.f26722b = zzctiVar;
        this.f26721a = zzctbVar;
    }

    @VisibleForTesting
    /* renamed from: a */
    public static String m13800a(String str, int i) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 31);
        sb.append("Error from: ");
        sb.append(str);
        sb.append(", code: ");
        sb.append(i);
        return sb.toString();
    }

    /* renamed from: a */
    public final /* synthetic */ Object m13801a(zzdog zzdogVar, zzdnv zzdnvVar, zzctc zzctcVar, Void r9) throws Exception {
        return this.f26722b.mo13807a(zzdogVar, zzdnvVar, zzctcVar);
    }

    /* renamed from: a */
    public final /* synthetic */ void m13802a(zzdog zzdogVar, zzdnv zzdnvVar, zzctc zzctcVar) throws Exception {
        this.f26722b.mo13806b(zzdogVar, zzdnvVar, zzctcVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcta
    /* renamed from: a */
    public final boolean mo13770a(zzdog zzdogVar, zzdnv zzdnvVar) {
        return !zzdnvVar.f27603s.isEmpty();
    }

    @Override // com.google.android.gms.internal.ads.zzcta
    /* renamed from: b */
    public final zzdzc<AdT> mo13769b(final zzdog zzdogVar, final zzdnv zzdnvVar) {
        final zzctc<AdapterT, ListenerT> zzctcVar;
        Iterator<String> it = zzdnvVar.f27603s.iterator();
        while (true) {
            if (!it.hasNext()) {
                zzctcVar = null;
                break;
            }
            try {
                zzctcVar = this.f26721a.mo13804a(it.next(), zzdnvVar.f27605u);
                break;
            } catch (zzdos e) {
            }
        }
        if (zzctcVar == null) {
            return zzdyq.m12987a((Throwable) new zzcvz("unable to instantiate mediation adapter class"));
        }
        zzbcg zzbcgVar = new zzbcg();
        zzctcVar.f26498c.mo13835a(new C3925pq(this, zzctcVar, zzbcgVar));
        if (zzdnvVar.f27561H) {
            Bundle bundle = zzdogVar.f27633a.f27632a.f27642d.f29013m;
            Bundle bundle2 = bundle.getBundle(AdMobAdapter.class.getName());
            Bundle bundle3 = bundle2;
            if (bundle2 == null) {
                bundle3 = new Bundle();
                bundle.putBundle(AdMobAdapter.class.getName(), bundle3);
            }
            bundle3.putBoolean("render_test_ad_label", true);
        }
        return this.f26723c.m13273a((zzdsi) zzdsf.ADAPTER_LOAD_AD_SYN).m13267a(new zzdrs(this, zzdogVar, zzdnvVar, zzctcVar) { // from class: c.d.b.d.g.a.oq

            /* renamed from: a */
            public final zzcxv f14351a;

            /* renamed from: b */
            public final zzdog f14352b;

            /* renamed from: c */
            public final zzdnv f14353c;

            /* renamed from: d */
            public final zzctc f14354d;

            {
                this.f14351a = this;
                this.f14352b = zzdogVar;
                this.f14353c = zzdnvVar;
                this.f14354d = zzctcVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdrs
            public final void run() {
                this.f14351a.m13802a(this.f14352b, this.f14353c, this.f14354d);
            }
        }, this.f26724d).m13255a((zzdsa<?>) zzdsf.ADAPTER_LOAD_AD_ACK).m13258a((zzdzc) zzbcgVar).m13255a((zzdsa<O2>) zzdsf.ADAPTER_WRAP_ADAPTER).m13261a(new zzdrp(this, zzdogVar, zzdnvVar, zzctcVar) { // from class: c.d.b.d.g.a.nq

            /* renamed from: a */
            public final zzcxv f14265a;

            /* renamed from: b */
            public final zzdog f14266b;

            /* renamed from: c */
            public final zzdnv f14267c;

            /* renamed from: d */
            public final zzctc f14268d;

            {
                this.f14265a = this;
                this.f14266b = zzdogVar;
                this.f14267c = zzdnvVar;
                this.f14268d = zzctcVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdrp
            public final Object apply(Object obj) {
                return this.f14265a.m13801a(this.f14266b, this.f14267c, this.f14268d, (Void) obj);
            }
        }).m13263a();
    }
}
