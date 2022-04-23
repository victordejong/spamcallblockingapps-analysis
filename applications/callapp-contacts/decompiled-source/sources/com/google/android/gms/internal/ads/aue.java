package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.internal.overlay.zzl;
import com.google.android.gms.ads.internal.overlay.zzp;
import com.google.android.gms.ads.reward.AdMetadataListener;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aue.class */
public final class aue extends AdMetadataListener implements AppEventListener, zzp, aro, asd, ash, atk, atu, eir {

    /* renamed from: a  reason: collision with root package name */
    final avj f23890a = new avj(this);

    /* renamed from: b  reason: collision with root package name */
    private bza f23891b;

    /* renamed from: c  reason: collision with root package name */
    private bzz f23892c;

    /* renamed from: d  reason: collision with root package name */
    private ckb f23893d;
    private cnc e;

    private static <T> void a(T t, avm<T> avmVar) {
        if (t != null) {
            avmVar.a(t);
        }
    }

    @Override // com.google.android.gms.internal.ads.atk
    public final void a() {
        a(this.f23893d, auq.f23905a);
    }

    @Override // com.google.android.gms.internal.ads.aro
    public final void a(final tp tpVar, final String str, final String str2) {
        a(this.f23891b, new avm(tpVar, str, str2) { // from class: com.google.android.gms.internal.ads.avi

            /* renamed from: a  reason: collision with root package name */
            private final tp f23924a;

            /* renamed from: b  reason: collision with root package name */
            private final String f23925b;

            /* renamed from: c  reason: collision with root package name */
            private final String f23926c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23924a = tpVar;
                this.f23925b = str;
                this.f23926c = str2;
            }

            @Override // com.google.android.gms.internal.ads.avm
            public final void a(Object obj) {
            }
        });
        a(this.e, new avm(tpVar, str, str2) { // from class: com.google.android.gms.internal.ads.avh

            /* renamed from: a  reason: collision with root package name */
            private final tp f23921a;

            /* renamed from: b  reason: collision with root package name */
            private final String f23922b;

            /* renamed from: c  reason: collision with root package name */
            private final String f23923c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23921a = tpVar;
                this.f23922b = str;
                this.f23923c = str2;
            }

            @Override // com.google.android.gms.internal.ads.avm
            public final void a(Object obj) {
                ((cnc) obj).a(this.f23921a, this.f23922b, this.f23923c);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.atu
    public final void a(final zzvv zzvvVar) {
        a(this.f23891b, new avm(zzvvVar) { // from class: com.google.android.gms.internal.ads.aum

            /* renamed from: a  reason: collision with root package name */
            private final zzvv f23900a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23900a = zzvvVar;
            }

            @Override // com.google.android.gms.internal.ads.avm
            public final void a(Object obj) {
                ((bza) obj).a(this.f23900a);
            }
        });
        a(this.e, new avm(zzvvVar) { // from class: com.google.android.gms.internal.ads.aup

            /* renamed from: a  reason: collision with root package name */
            private final zzvv f23904a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23904a = zzvvVar;
            }

            @Override // com.google.android.gms.internal.ads.avm
            public final void a(Object obj) {
                ((cnc) obj).a(this.f23904a);
            }
        });
        a(this.f23893d, new avm(zzvvVar) { // from class: com.google.android.gms.internal.ads.auo

            /* renamed from: a  reason: collision with root package name */
            private final zzvv f23903a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23903a = zzvvVar;
            }

            @Override // com.google.android.gms.internal.ads.avm
            public final void a(Object obj) {
                ((ckb) obj).a(this.f23903a);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.asd
    public final void a_(final zzvh zzvhVar) {
        a(this.e, new avm(zzvhVar) { // from class: com.google.android.gms.internal.ads.auw

            /* renamed from: a  reason: collision with root package name */
            private final zzvh f23910a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23910a = zzvhVar;
            }

            @Override // com.google.android.gms.internal.ads.avm
            public final void a(Object obj) {
                ((cnc) obj).a_(this.f23910a);
            }
        });
        a(this.f23891b, new avm(zzvhVar) { // from class: com.google.android.gms.internal.ads.auv

            /* renamed from: a  reason: collision with root package name */
            private final zzvh f23909a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23909a = zzvhVar;
            }

            @Override // com.google.android.gms.internal.ads.avm
            public final void a(Object obj) {
                ((bza) obj).a_(this.f23909a);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.ash
    public final void b() {
        a(this.f23891b, aur.f23906a);
    }

    @Override // com.google.android.gms.internal.ads.aro
    public final void c() {
        a(this.f23891b, auh.f23895a);
        a(this.e, aug.f23894a);
    }

    @Override // com.google.android.gms.internal.ads.aro
    public final void d() {
        a(this.f23891b, auu.f23908a);
        a(this.e, avb.f23915a);
    }

    @Override // com.google.android.gms.internal.ads.aro
    public final void e() {
        a(this.f23891b, ave.f23918a);
        a(this.e, avd.f23917a);
    }

    @Override // com.google.android.gms.internal.ads.aro
    public final void f() {
        a(this.f23891b, avg.f23920a);
        a(this.e, avf.f23919a);
    }

    @Override // com.google.android.gms.internal.ads.aro
    public final void g() {
        a(this.f23891b, auj.f23897a);
        a(this.e, aui.f23896a);
    }

    @Override // com.google.android.gms.internal.ads.eir
    public final void onAdClicked() {
        a(this.f23891b, aul.f23899a);
        a(this.f23892c, auk.f23898a);
    }

    @Override // com.google.android.gms.ads.reward.AdMetadataListener
    public final void onAdMetadataChanged() {
        a(this.e, aus.f23907a);
    }

    @Override // com.google.android.gms.ads.doubleclick.AppEventListener
    public final void onAppEvent(final String str, final String str2) {
        a(this.f23891b, new avm(str, str2) { // from class: com.google.android.gms.internal.ads.aun

            /* renamed from: a  reason: collision with root package name */
            private final String f23901a;

            /* renamed from: b  reason: collision with root package name */
            private final String f23902b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23901a = str;
                this.f23902b = str2;
            }

            @Override // com.google.android.gms.internal.ads.avm
            public final void a(Object obj) {
                ((bza) obj).onAppEvent(this.f23901a, this.f23902b);
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onPause() {
        a(this.f23893d, auz.f23913a);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onResume() {
        a(this.f23893d, avc.f23916a);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onUserLeaveHint() {
        a(this.f23893d, ava.f23914a);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zza(final zzl zzlVar) {
        a(this.f23893d, new avm(zzlVar) { // from class: com.google.android.gms.internal.ads.aux

            /* renamed from: a  reason: collision with root package name */
            private final zzl f23911a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23911a = zzlVar;
            }

            @Override // com.google.android.gms.internal.ads.avm
            public final void a(Object obj) {
                ((ckb) obj).zza(this.f23911a);
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zzvz() {
        a(this.f23893d, auy.f23912a);
    }
}
