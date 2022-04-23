package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.internal.ads.asy;
import java.util.Iterator;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bxj.class */
public final class bxj<AdT, AdapterT, ListenerT extends asy> implements bsk<AdT> {

    /* renamed from: a  reason: collision with root package name */
    final bss<AdT, AdapterT, ListenerT> f25334a;

    /* renamed from: b  reason: collision with root package name */
    private final bsm<AdapterT, ListenerT> f25335b;

    /* renamed from: c  reason: collision with root package name */
    private final cti f25336c;

    /* renamed from: d  reason: collision with root package name */
    private final dbs f25337d;

    public bxj(cti ctiVar, dbs dbsVar, bsm<AdapterT, ListenerT> bsmVar, bss<AdT, AdapterT, ListenerT> bssVar) {
        this.f25336c = ctiVar;
        this.f25337d = dbsVar;
        this.f25334a = bssVar;
        this.f25335b = bsmVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(String str, int i) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 31);
        sb.append("Error from: ");
        sb.append(str);
        sb.append(", code: ");
        sb.append(i);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.bsk
    public final boolean a(cpk cpkVar, cov covVar) {
        return !covVar.s.isEmpty();
    }

    @Override // com.google.android.gms.internal.ads.bsk
    public final dbt<AdT> b(final cpk cpkVar, final cov covVar) {
        final bsn<AdapterT, ListenerT> bsnVar;
        Iterator<String> it2 = covVar.s.iterator();
        while (true) {
            if (!it2.hasNext()) {
                bsnVar = null;
                break;
            }
            try {
                bsnVar = this.f25335b.a(it2.next(), covVar.u);
                break;
            } catch (zzdpq e) {
            }
        }
        if (bsnVar == null) {
            return dbh.a((Throwable) new zzcwa("unable to instantiate mediation adapter class"));
        }
        zp zpVar = new zp();
        bsnVar.f25014c.a(new bxp(this, bsnVar, zpVar));
        if (covVar.H) {
            Bundle bundle = cpkVar.f26221a.f26209a.f26227d.zzcih;
            Bundle bundle2 = bundle.getBundle(AdMobAdapter.class.getName());
            Bundle bundle3 = bundle2;
            if (bundle2 == null) {
                bundle3 = new Bundle();
                bundle.putBundle(AdMobAdapter.class.getName(), bundle3);
            }
            bundle3.putBoolean("render_test_ad_label", true);
        }
        return this.f25336c.a((cti) ctj.ADAPTER_LOAD_AD_SYN).a(new csr(this, cpkVar, covVar, bsnVar) { // from class: com.google.android.gms.internal.ads.bxm

            /* renamed from: a  reason: collision with root package name */
            private final bxj f25343a;

            /* renamed from: b  reason: collision with root package name */
            private final cpk f25344b;

            /* renamed from: c  reason: collision with root package name */
            private final cov f25345c;

            /* renamed from: d  reason: collision with root package name */
            private final bsn f25346d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25343a = this;
                this.f25344b = cpkVar;
                this.f25345c = covVar;
                this.f25346d = bsnVar;
            }

            @Override // com.google.android.gms.internal.ads.csr
            public final void a() {
                bxj bxjVar = this.f25343a;
                bxjVar.f25334a.a(this.f25344b, this.f25345c, this.f25346d);
            }
        }, this.f25337d).a((csz<?>) ctj.ADAPTER_LOAD_AD_ACK).a((dbt) zpVar).a((csz<O2>) ctj.ADAPTER_WRAP_ADAPTER).a(new css(this, cpkVar, covVar, bsnVar) { // from class: com.google.android.gms.internal.ads.bxl

            /* renamed from: a  reason: collision with root package name */
            private final bxj f25339a;

            /* renamed from: b  reason: collision with root package name */
            private final cpk f25340b;

            /* renamed from: c  reason: collision with root package name */
            private final cov f25341c;

            /* renamed from: d  reason: collision with root package name */
            private final bsn f25342d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25339a = this;
                this.f25340b = cpkVar;
                this.f25341c = covVar;
                this.f25342d = bsnVar;
            }

            @Override // com.google.android.gms.internal.ads.css
            public final Object a(Object obj) {
                bxj bxjVar = this.f25339a;
                return bxjVar.f25334a.b(this.f25340b, this.f25341c, this.f25342d);
            }
        }).a();
    }
}
