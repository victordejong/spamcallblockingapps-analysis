package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.internal.overlay.zzl;
import com.google.android.gms.ads.internal.overlay.zzp;
import com.google.android.gms.ads.reward.AdMetadataListener;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aue.class */
public final class aue extends AdMetadataListener implements AppEventListener, zzp, aro, asd, ash, atk, atu, eir {

    /* renamed from: a */
    final avj f43178a = new avj(this);

    /* renamed from: b */
    private bza f43179b;

    /* renamed from: c */
    private bzz f43180c;

    /* renamed from: d */
    private ckb f43181d;

    /* renamed from: e */
    private cnc f43182e;

    /* renamed from: a */
    private static <T> void m18403a(T t, avm<T> avmVar) {
        if (t != null) {
            avmVar.mo18382a(t);
        }
    }

    @Override // com.google.android.gms.internal.ads.atk
    /* renamed from: a */
    public final void mo17433a() {
        m18403a(this.f43181d, auq.f43194a);
    }

    @Override // com.google.android.gms.internal.ads.aro
    /* renamed from: a */
    public final void mo17405a(AbstractC12939tp abstractC12939tp, String str, String str2) {
        m18403a(this.f43179b, new avm(abstractC12939tp, str, str2) { // from class: com.google.android.gms.internal.ads.avi

            /* renamed from: a */
            private final AbstractC12939tp f43213a;

            /* renamed from: b */
            private final String f43214b;

            /* renamed from: c */
            private final String f43215c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f43213a = abstractC12939tp;
                this.f43214b = str;
                this.f43215c = str2;
            }

            @Override // com.google.android.gms.internal.ads.avm
            /* renamed from: a */
            public final void mo18382a(Object obj) {
            }
        });
        m18403a(this.f43182e, new avm(abstractC12939tp, str, str2) { // from class: com.google.android.gms.internal.ads.avh

            /* renamed from: a */
            private final AbstractC12939tp f43210a;

            /* renamed from: b */
            private final String f43211b;

            /* renamed from: c */
            private final String f43212c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f43210a = abstractC12939tp;
                this.f43211b = str;
                this.f43212c = str2;
            }

            @Override // com.google.android.gms.internal.ads.avm
            /* renamed from: a */
            public final void mo18382a(Object obj) {
                ((cnc) obj).mo17405a(this.f43210a, this.f43211b, this.f43212c);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.atu
    /* renamed from: a */
    public final void mo17403a(zzvv zzvvVar) {
        m18403a(this.f43179b, new avm(zzvvVar) { // from class: com.google.android.gms.internal.ads.aum

            /* renamed from: a */
            private final zzvv f43189a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f43189a = zzvvVar;
            }

            @Override // com.google.android.gms.internal.ads.avm
            /* renamed from: a */
            public final void mo18382a(Object obj) {
                ((bza) obj).mo17403a(this.f43189a);
            }
        });
        m18403a(this.f43182e, new avm(zzvvVar) { // from class: com.google.android.gms.internal.ads.aup

            /* renamed from: a */
            private final zzvv f43193a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f43193a = zzvvVar;
            }

            @Override // com.google.android.gms.internal.ads.avm
            /* renamed from: a */
            public final void mo18382a(Object obj) {
                ((cnc) obj).mo17403a(this.f43193a);
            }
        });
        m18403a(this.f43181d, new avm(zzvvVar) { // from class: com.google.android.gms.internal.ads.auo

            /* renamed from: a */
            private final zzvv f43192a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f43192a = zzvvVar;
            }

            @Override // com.google.android.gms.internal.ads.avm
            /* renamed from: a */
            public final void mo18382a(Object obj) {
                ((ckb) obj).mo17403a(this.f43192a);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.asd
    /* renamed from: a_ */
    public final void mo17402a_(zzvh zzvhVar) {
        m18403a(this.f43182e, new avm(zzvhVar) { // from class: com.google.android.gms.internal.ads.auw

            /* renamed from: a */
            private final zzvh f43199a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f43199a = zzvhVar;
            }

            @Override // com.google.android.gms.internal.ads.avm
            /* renamed from: a */
            public final void mo18382a(Object obj) {
                ((cnc) obj).mo17402a_(this.f43199a);
            }
        });
        m18403a(this.f43179b, new avm(zzvhVar) { // from class: com.google.android.gms.internal.ads.auv

            /* renamed from: a */
            private final zzvh f43198a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f43198a = zzvhVar;
            }

            @Override // com.google.android.gms.internal.ads.avm
            /* renamed from: a */
            public final void mo18382a(Object obj) {
                ((bza) obj).mo17402a_(this.f43198a);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.ash
    /* renamed from: b */
    public final void mo17547b() {
        m18403a(this.f43179b, aur.f43195a);
    }

    @Override // com.google.android.gms.internal.ads.aro
    /* renamed from: c */
    public final void mo17401c() {
        m18403a(this.f43179b, auh.f43184a);
        m18403a(this.f43182e, aug.f43183a);
    }

    @Override // com.google.android.gms.internal.ads.aro
    /* renamed from: d */
    public final void mo17400d() {
        m18403a(this.f43179b, auu.f43197a);
        m18403a(this.f43182e, avb.f43204a);
    }

    @Override // com.google.android.gms.internal.ads.aro
    /* renamed from: e */
    public final void mo17399e() {
        m18403a(this.f43179b, ave.f43207a);
        m18403a(this.f43182e, avd.f43206a);
    }

    @Override // com.google.android.gms.internal.ads.aro
    /* renamed from: f */
    public final void mo17398f() {
        m18403a(this.f43179b, avg.f43209a);
        m18403a(this.f43182e, avf.f43208a);
    }

    @Override // com.google.android.gms.internal.ads.aro
    /* renamed from: g */
    public final void mo17397g() {
        m18403a(this.f43179b, auj.f43186a);
        m18403a(this.f43182e, aui.f43185a);
    }

    @Override // com.google.android.gms.internal.ads.eir
    public final void onAdClicked() {
        m18403a(this.f43179b, aul.f43188a);
        m18403a(this.f43180c, auk.f43187a);
    }

    @Override // com.google.android.gms.ads.reward.AdMetadataListener
    public final void onAdMetadataChanged() {
        m18403a(this.f43182e, aus.f43196a);
    }

    @Override // com.google.android.gms.ads.doubleclick.AppEventListener
    public final void onAppEvent(String str, String str2) {
        m18403a(this.f43179b, new avm(str, str2) { // from class: com.google.android.gms.internal.ads.aun

            /* renamed from: a */
            private final String f43190a;

            /* renamed from: b */
            private final String f43191b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f43190a = str;
                this.f43191b = str2;
            }

            @Override // com.google.android.gms.internal.ads.avm
            /* renamed from: a */
            public final void mo18382a(Object obj) {
                ((bza) obj).onAppEvent(this.f43190a, this.f43191b);
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onPause() {
        m18403a(this.f43181d, auz.f43202a);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onResume() {
        m18403a(this.f43181d, avc.f43205a);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onUserLeaveHint() {
        m18403a(this.f43181d, ava.f43203a);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zza(zzl zzlVar) {
        m18403a(this.f43181d, new avm(zzlVar) { // from class: com.google.android.gms.internal.ads.aux

            /* renamed from: a */
            private final zzl f43200a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f43200a = zzlVar;
            }

            @Override // com.google.android.gms.internal.ads.avm
            /* renamed from: a */
            public final void mo18382a(Object obj) {
                ((ckb) obj).zza(this.f43200a);
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zzvz() {
        m18403a(this.f43181d, auy.f43201a);
    }
}
