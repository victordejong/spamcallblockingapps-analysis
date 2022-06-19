package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.internal.overlay.zzx;
import com.google.android.gms.ads.internal.zza;
import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bih.class */
public final class bih {

    /* renamed from: a */
    final arj f44024a;

    /* renamed from: b */
    final asp f44025b;

    /* renamed from: c */
    final avz f44026c;

    /* renamed from: d */
    final aju f44027d;

    /* renamed from: e */
    final zza f44028e;

    /* renamed from: f */
    final AbstractC13002vy f44029f;

    /* renamed from: g */
    final avn f44030g;

    /* renamed from: h */
    private final ate f44031h;

    /* renamed from: i */
    private final atj f44032i;

    /* renamed from: j */
    private final Executor f44033j;

    /* renamed from: k */
    private final ayh f44034k;

    /* renamed from: l */
    private final asj f44035l;

    /* renamed from: m */
    private final die f44036m;

    /* renamed from: n */
    private final brs f44037n;

    /* renamed from: o */
    private final cus f44038o;

    /* renamed from: p */
    private final bli f44039p;

    /* renamed from: q */
    private final cty f44040q;

    public bih(arj arjVar, asp aspVar, ate ateVar, atj atjVar, avz avzVar, Executor executor, ayh ayhVar, aju ajuVar, zza zzaVar, asj asjVar, AbstractC13002vy abstractC13002vy, die dieVar, avn avnVar, brs brsVar, cus cusVar, bli bliVar, cty ctyVar) {
        this.f44024a = arjVar;
        this.f44025b = aspVar;
        this.f44031h = ateVar;
        this.f44032i = atjVar;
        this.f44026c = avzVar;
        this.f44033j = executor;
        this.f44034k = ayhVar;
        this.f44027d = ajuVar;
        this.f44028e = zzaVar;
        this.f44035l = asjVar;
        this.f44029f = abstractC13002vy;
        this.f44036m = dieVar;
        this.f44030g = avnVar;
        this.f44037n = brsVar;
        this.f44038o = cusVar;
        this.f44039p = bliVar;
        this.f44040q = ctyVar;
    }

    /* renamed from: a */
    public static dbt<?> m17827a(adt adtVar, String str, String str2) {
        C13103zp c13103zp = new C13103zp();
        adtVar.mo13808B().mo18789a(new afd(c13103zp) { // from class: com.google.android.gms.internal.ads.bis

            /* renamed from: a */
            private final C13103zp f44052a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f44052a = c13103zp;
            }

            @Override // com.google.android.gms.internal.ads.afd
            public final void zzam(boolean z) {
                C13103zp c13103zp2 = this.f44052a;
                if (z) {
                    c13103zp2.set(null);
                } else {
                    c13103zp2.setException(new Exception("Ad Web View failed to load."));
                }
            }
        });
        adtVar.mo13771a(str, str2, (String) null);
        return c13103zp;
    }

    /* renamed from: a */
    public final void m17826a(adt adtVar, boolean z, AbstractC12609hk abstractC12609hk) {
        cxx cxxVar;
        adtVar.mo13808B().mo18787a(new eir(this) { // from class: com.google.android.gms.internal.ads.bik

            /* renamed from: a */
            private final bih f44043a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f44043a = this;
            }

            @Override // com.google.android.gms.internal.ads.eir
            public final void onAdClicked() {
                this.f44043a.f44024a.onAdClicked();
            }
        }, this.f44031h, this.f44032i, new AbstractC12588gq(this) { // from class: com.google.android.gms.internal.ads.bij

            /* renamed from: a */
            private final bih f44042a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f44042a = this;
            }

            @Override // com.google.android.gms.internal.ads.AbstractC12588gq
            /* renamed from: a */
            public final void mo14636a(String str, String str2) {
                this.f44042a.f44026c.mo14636a(str, str2);
            }
        }, new zzx(this) { // from class: com.google.android.gms.internal.ads.bim

            /* renamed from: a */
            private final bih f44045a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f44045a = this;
            }

            @Override // com.google.android.gms.ads.internal.overlay.zzx
            public final void zzws() {
                this.f44045a.f44025b.m18426b();
            }
        }, z, abstractC12609hk, this.f44028e, new bir(this), this.f44029f, this.f44037n, this.f44038o, this.f44039p, this.f44040q);
        adtVar.setOnTouchListener(new View.OnTouchListener(this) { // from class: com.google.android.gms.internal.ads.bil

            /* renamed from: a */
            private final bih f44044a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f44044a = this;
            }

            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                bih bihVar = this.f44044a;
                bihVar.f44028e.recordClick();
                if (bihVar.f44029f != null) {
                    bihVar.f44029f.mo14058c();
                    return false;
                }
                return false;
            }
        });
        adtVar.setOnClickListener(new View.OnClickListener(this) { // from class: com.google.android.gms.internal.ads.bio

            /* renamed from: a */
            private final bih f44047a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f44047a = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                bih bihVar = this.f44047a;
                bihVar.f44028e.recordClick();
                if (bihVar.f44029f != null) {
                    bihVar.f44029f.mo14058c();
                }
            }
        });
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42691bA)).booleanValue() && (cxxVar = this.f44036m.f47085b) != null) {
            cxxVar.zzb(adtVar.mo13731s());
        }
        this.f44034k.m18372a(adtVar, this.f44033j);
        this.f44034k.m18372a(new eeg(adtVar) { // from class: com.google.android.gms.internal.ads.bin

            /* renamed from: a */
            private final adt f44046a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f44046a = adtVar;
            }

            @Override // com.google.android.gms.internal.ads.eeg
            /* renamed from: a */
            public final void mo13778a(eeh eehVar) {
                this.f44046a.mo13808B().mo18791a(eehVar.f48866d.left, eehVar.f48866d.top);
            }
        }, this.f44033j);
        this.f44034k.m18323a(adtVar.mo13731s());
        adtVar.mo13772a("/trackActiveViewUnit", new AbstractC12607hi(this, adtVar) { // from class: com.google.android.gms.internal.ads.biq

            /* renamed from: a */
            private final bih f44049a;

            /* renamed from: b */
            private final adt f44050b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f44049a = this;
                this.f44050b = adtVar;
            }

            @Override // com.google.android.gms.internal.ads.AbstractC12607hi
            /* renamed from: a */
            public final void mo14250a(Object obj, Map map) {
                bih bihVar = this.f44049a;
                bihVar.f44027d.m18630a(this.f44050b);
            }
        });
        this.f44027d.m18629a((Object) adtVar);
        if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42686aw)).booleanValue()) {
            asj asjVar = this.f44035l;
            adtVar.getClass();
            asjVar.m18373a(ayi.m18321a(new asn(asjVar, new aza(adtVar) { // from class: com.google.android.gms.internal.ads.bip

                /* renamed from: a */
                private final adt f44048a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f44048a = adtVar;
                }

                @Override // com.google.android.gms.internal.ads.aza
                /* renamed from: a */
                public final void mo17825a() {
                    this.f44048a.destroy();
                }
            }), this.f44033j));
        }
    }
}
