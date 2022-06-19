package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.internal.ads.asy;
import java.util.Iterator;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bxj.class */
public final class bxj<AdT, AdapterT, ListenerT extends asy> implements bsk<AdT> {

    /* renamed from: a */
    final bss<AdT, AdapterT, ListenerT> f45022a;

    /* renamed from: b */
    private final bsm<AdapterT, ListenerT> f45023b;

    /* renamed from: c */
    private final cti f45024c;

    /* renamed from: d */
    private final dbs f45025d;

    public bxj(cti ctiVar, dbs dbsVar, bsm<AdapterT, ListenerT> bsmVar, bss<AdT, AdapterT, ListenerT> bssVar) {
        this.f45024c = ctiVar;
        this.f45025d = dbsVar;
        this.f45022a = bssVar;
        this.f45023b = bsmVar;
    }

    /* renamed from: a */
    public static String m17586a(String str, int i) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 31);
        sb.append("Error from: ");
        sb.append(str);
        sb.append(", code: ");
        sb.append(i);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.bsk
    /* renamed from: a */
    public final boolean mo17575a(cpk cpkVar, cov covVar) {
        return !covVar.f46272s.isEmpty();
    }

    @Override // com.google.android.gms.internal.ads.bsk
    /* renamed from: b */
    public final dbt<AdT> mo17574b(cpk cpkVar, cov covVar) {
        bsn<AdapterT, ListenerT> bsnVar;
        Iterator<String> it2 = covVar.f46272s.iterator();
        while (true) {
            if (!it2.hasNext()) {
                bsnVar = null;
                break;
            }
            try {
                bsnVar = this.f45023b.mo17588a(it2.next(), covVar.f46274u);
                break;
            } catch (zzdpq e) {
            }
        }
        if (bsnVar == null) {
            return dbh.m16898a((Throwable) new zzcwa("unable to instantiate mediation adapter class"));
        }
        C13103zp c13103zp = new C13103zp();
        bsnVar.f44641c.mo17607a(new bxp(this, bsnVar, c13103zp));
        if (covVar.f46228H) {
            Bundle bundle = cpkVar.f46318a.f46306a.f46324d.zzcih;
            Bundle bundle2 = bundle.getBundle(AdMobAdapter.class.getName());
            Bundle bundle3 = bundle2;
            if (bundle2 == null) {
                bundle3 = new Bundle();
                bundle.putBundle(AdMobAdapter.class.getName(), bundle3);
            }
            bundle3.putBoolean("render_test_ad_label", true);
        }
        return this.f45024c.m17260a((cti) ctj.ADAPTER_LOAD_AD_SYN).m17254a(new csr(this, cpkVar, covVar, bsnVar) { // from class: com.google.android.gms.internal.ads.bxm

            /* renamed from: a */
            private final bxj f45031a;

            /* renamed from: b */
            private final cpk f45032b;

            /* renamed from: c */
            private final cov f45033c;

            /* renamed from: d */
            private final bsn f45034d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f45031a = this;
                this.f45032b = cpkVar;
                this.f45033c = covVar;
                this.f45034d = bsnVar;
            }

            @Override // com.google.android.gms.internal.ads.csr
            /* renamed from: a */
            public final void mo17264a() {
                bxj bxjVar = this.f45031a;
                bxjVar.f45022a.mo17593a(this.f45032b, this.f45033c, this.f45034d);
            }
        }, this.f45025d).m17244a((csz<?>) ctj.ADAPTER_LOAD_AD_ACK).m17246a((dbt) c13103zp).m17244a((csz<O2>) ctj.ADAPTER_WRAP_ADAPTER).m17249a(new css(this, cpkVar, covVar, bsnVar) { // from class: com.google.android.gms.internal.ads.bxl

            /* renamed from: a */
            private final bxj f45027a;

            /* renamed from: b */
            private final cpk f45028b;

            /* renamed from: c */
            private final cov f45029c;

            /* renamed from: d */
            private final bsn f45030d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f45027a = this;
                this.f45028b = cpkVar;
                this.f45029c = covVar;
                this.f45030d = bsnVar;
            }

            @Override // com.google.android.gms.internal.ads.css
            /* renamed from: a */
            public final Object mo17263a(Object obj) {
                bxj bxjVar = this.f45027a;
                return bxjVar.f45022a.mo17592b(this.f45028b, this.f45029c, this.f45030d);
            }
        }).m17251a();
    }
}
