package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.internal.overlay.zzx;
import com.google.android.gms.ads.internal.zza;
import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bih.class */
public final class bih {

    /* renamed from: a  reason: collision with root package name */
    final arj f24504a;

    /* renamed from: b  reason: collision with root package name */
    final asp f24505b;

    /* renamed from: c  reason: collision with root package name */
    final avz f24506c;

    /* renamed from: d  reason: collision with root package name */
    final aju f24507d;
    final zza e;
    final vy f;
    final avn g;
    private final ate h;
    private final atj i;
    private final Executor j;
    private final ayh k;
    private final asj l;
    private final die m;
    private final brs n;
    private final cus o;
    private final bli p;
    private final cty q;

    public bih(arj arjVar, asp aspVar, ate ateVar, atj atjVar, avz avzVar, Executor executor, ayh ayhVar, aju ajuVar, zza zzaVar, asj asjVar, vy vyVar, die dieVar, avn avnVar, brs brsVar, cus cusVar, bli bliVar, cty ctyVar) {
        this.f24504a = arjVar;
        this.f24505b = aspVar;
        this.h = ateVar;
        this.i = atjVar;
        this.f24506c = avzVar;
        this.j = executor;
        this.k = ayhVar;
        this.f24507d = ajuVar;
        this.e = zzaVar;
        this.l = asjVar;
        this.f = vyVar;
        this.m = dieVar;
        this.g = avnVar;
        this.n = brsVar;
        this.o = cusVar;
        this.p = bliVar;
        this.q = ctyVar;
    }

    public static dbt<?> a(adt adtVar, String str, String str2) {
        final zp zpVar = new zp();
        adtVar.B().a(new afd(zpVar) { // from class: com.google.android.gms.internal.ads.bis

            /* renamed from: a  reason: collision with root package name */
            private final zp f24519a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24519a = zpVar;
            }

            @Override // com.google.android.gms.internal.ads.afd
            public final void zzam(boolean z) {
                zp zpVar2 = this.f24519a;
                if (z) {
                    zpVar2.set(null);
                } else {
                    zpVar2.setException(new Exception("Ad Web View failed to load."));
                }
            }
        });
        adtVar.a(str, str2, (String) null);
        return zpVar;
    }

    public final void a(final adt adtVar, boolean z, hk hkVar) {
        cxx cxxVar;
        adtVar.B().a(new eir(this) { // from class: com.google.android.gms.internal.ads.bik

            /* renamed from: a  reason: collision with root package name */
            private final bih f24510a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24510a = this;
            }

            @Override // com.google.android.gms.internal.ads.eir
            public final void onAdClicked() {
                this.f24510a.f24504a.onAdClicked();
            }
        }, this.h, this.i, new gq(this) { // from class: com.google.android.gms.internal.ads.bij

            /* renamed from: a  reason: collision with root package name */
            private final bih f24509a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24509a = this;
            }

            @Override // com.google.android.gms.internal.ads.gq
            public final void a(String str, String str2) {
                this.f24509a.f24506c.a(str, str2);
            }
        }, new zzx(this) { // from class: com.google.android.gms.internal.ads.bim

            /* renamed from: a  reason: collision with root package name */
            private final bih f24512a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24512a = this;
            }

            @Override // com.google.android.gms.ads.internal.overlay.zzx
            public final void zzws() {
                this.f24512a.f24505b.b();
            }
        }, z, hkVar, this.e, new bir(this), this.f, this.n, this.o, this.p, this.q);
        adtVar.setOnTouchListener(new View.OnTouchListener(this) { // from class: com.google.android.gms.internal.ads.bil

            /* renamed from: a  reason: collision with root package name */
            private final bih f24511a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24511a = this;
            }

            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                bih bihVar = this.f24511a;
                bihVar.e.recordClick();
                if (bihVar.f == null) {
                    return false;
                }
                bihVar.f.c();
                return false;
            }
        });
        adtVar.setOnClickListener(new View.OnClickListener(this) { // from class: com.google.android.gms.internal.ads.bio

            /* renamed from: a  reason: collision with root package name */
            private final bih f24514a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24514a = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                bih bihVar = this.f24514a;
                bihVar.e.recordClick();
                if (bihVar.f != null) {
                    bihVar.f.c();
                }
            }
        });
        if (((Boolean) ekb.e().a(aq.bA)).booleanValue() && (cxxVar = this.m.f26844b) != null) {
            cxxVar.zzb(adtVar.s());
        }
        this.k.a(adtVar, this.j);
        this.k.a(new eeg(adtVar) { // from class: com.google.android.gms.internal.ads.bin

            /* renamed from: a  reason: collision with root package name */
            private final adt f24513a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24513a = adtVar;
            }

            @Override // com.google.android.gms.internal.ads.eeg
            public final void a(eeh eehVar) {
                this.f24513a.B().a(eehVar.f27729d.left, eehVar.f27729d.top);
            }
        }, this.j);
        this.k.a(adtVar.s());
        adtVar.a("/trackActiveViewUnit", new hi(this, adtVar) { // from class: com.google.android.gms.internal.ads.biq

            /* renamed from: a  reason: collision with root package name */
            private final bih f24516a;

            /* renamed from: b  reason: collision with root package name */
            private final adt f24517b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24516a = this;
                this.f24517b = adtVar;
            }

            @Override // com.google.android.gms.internal.ads.hi
            public final void a(Object obj, Map map) {
                bih bihVar = this.f24516a;
                bihVar.f24507d.a(this.f24517b);
            }
        });
        this.f24507d.a((Object) adtVar);
        if (!((Boolean) ekb.e().a(aq.aw)).booleanValue()) {
            asj asjVar = this.l;
            adtVar.getClass();
            asjVar.a(ayi.a(new asn(asjVar, new aza(adtVar) { // from class: com.google.android.gms.internal.ads.bip

                /* renamed from: a  reason: collision with root package name */
                private final adt f24515a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f24515a = adtVar;
                }

                @Override // com.google.android.gms.internal.ads.aza
                public final void a() {
                    this.f24515a.destroy();
                }
            }), this.j));
        }
    }
}
