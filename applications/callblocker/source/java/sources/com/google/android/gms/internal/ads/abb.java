package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.view.Surface;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/abb.class */
public final class abb implements dks, dqb, dsa<drp>, dte {

    /* renamed from: a */
    private static int f7723a;

    /* renamed from: b */
    private static int f7724b;

    /* renamed from: c */
    private final Context f7725c;

    /* renamed from: e */
    private final dli f7727e;

    /* renamed from: h */
    private final aae f7730h;

    /* renamed from: i */
    private dkt f7731i;

    /* renamed from: j */
    private ByteBuffer f7732j;

    /* renamed from: k */
    private boolean f7733k;

    /* renamed from: l */
    private abk f7734l;

    /* renamed from: m */
    private int f7735m;

    /* renamed from: n */
    private Set<WeakReference<aau>> f7736n = new HashSet();

    /* renamed from: d */
    private final aay f7726d = new aay();

    /* renamed from: f */
    private final dli f7728f = new dmj(dpa.f15274a);

    /* renamed from: g */
    private final drd f7729g = new dqy();

    public abb(Context context, aae aaeVar) {
        this.f7725c = context;
        this.f7730h = aaeVar;
        this.f7727e = new dsy(this.f7725c, dpa.f15274a, 0L, C3567ve.f17498a, this, -1);
        if (C3556uu.m7053a()) {
            String valueOf = String.valueOf(this);
            C3556uu.m7052a(new StringBuilder(String.valueOf(valueOf).length() + 28).append("ExoPlayerAdapter initialize ").append(valueOf).toString());
        }
        f7723a++;
        this.f7731i = dkx.m9279a(new dli[]{this.f7728f, this.f7727e}, this.f7729g, this.f7726d);
        this.f7731i.mo9293a(this);
    }

    /* renamed from: a */
    private final dqg m13684a(Uri uri, String str) {
        dro droVar;
        if (!this.f7733k || this.f7732j.limit() <= 0) {
            dro droVar2 = this.f7730h.f7618h > 0 ? new dro(this, str) { // from class: com.google.android.gms.internal.ads.abd

                /* renamed from: a */
                private final abb f7739a;

                /* renamed from: b */
                private final String f7740b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f7739a = this;
                    this.f7740b = str;
                }

                @Override // com.google.android.gms.internal.ads.dro
                /* renamed from: a */
                public final drp mo8814a() {
                    return this.f7739a.m13675b(this.f7740b);
                }
            } : new dro(this, str) { // from class: com.google.android.gms.internal.ads.abc

                /* renamed from: a */
                private final abb f7737a;

                /* renamed from: b */
                private final String f7738b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f7737a = this;
                    this.f7738b = str;
                }

                @Override // com.google.android.gms.internal.ads.dro
                /* renamed from: a */
                public final drp mo8814a() {
                    return this.f7737a.m13680a(this.f7738b);
                }
            };
            dro droVar3 = droVar2;
            if (this.f7730h.f7619i) {
                droVar3 = new dro(this, droVar2) { // from class: com.google.android.gms.internal.ads.abf

                    /* renamed from: a */
                    private final abb f7743a;

                    /* renamed from: b */
                    private final dro f7744b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f7743a = this;
                        this.f7744b = droVar2;
                    }

                    @Override // com.google.android.gms.internal.ads.dro
                    /* renamed from: a */
                    public final drp mo8814a() {
                        return this.f7743a.m13681a(this.f7744b);
                    }
                };
            }
            droVar = droVar3;
            if (this.f7732j.limit() > 0) {
                byte[] bArr = new byte[this.f7732j.limit()];
                this.f7732j.get(bArr);
                droVar = new dro(droVar3, bArr) { // from class: com.google.android.gms.internal.ads.abe

                    /* renamed from: a */
                    private final dro f7741a;

                    /* renamed from: b */
                    private final byte[] f7742b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f7741a = droVar3;
                        this.f7742b = bArr;
                    }

                    @Override // com.google.android.gms.internal.ads.dro
                    /* renamed from: a */
                    public final drp mo8814a() {
                        dro droVar6 = this.f7741a;
                        byte[] bArr2 = this.f7742b;
                        return new abj(new drm(bArr2), bArr2.length, droVar6.mo8814a());
                    }
                };
            }
        } else {
            byte[] bArr2 = new byte[this.f7732j.limit()];
            this.f7732j.get(bArr2);
            droVar = new dro(bArr2) { // from class: com.google.android.gms.internal.ads.aba

                /* renamed from: a */
                private final byte[] f7722a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f7722a = bArr2;
                }

                @Override // com.google.android.gms.internal.ads.dro
                /* renamed from: a */
                public final drp mo8814a() {
                    return new drm(this.f7722a);
                }
            };
        }
        return new dqc(uri, droVar, abi.f7747a, this.f7730h.f7620j, C3567ve.f17498a, this, null, this.f7730h.f7616f);
    }

    /* renamed from: b */
    public static int m13676b() {
        return f7723a;
    }

    /* renamed from: c */
    public static int m13673c() {
        return f7724b;
    }

    /* renamed from: a */
    public final dkt m13687a() {
        return this.f7731i;
    }

    /* renamed from: a */
    public final /* synthetic */ drp m13681a(dro droVar) {
        return new aaw(this.f7725c, droVar.mo8814a(), this, new aaz(this) { // from class: com.google.android.gms.internal.ads.abg

            /* renamed from: a */
            private final abb f7745a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7745a = this;
            }

            @Override // com.google.android.gms.internal.ads.aaz
            /* renamed from: a */
            public final void mo13669a(boolean z, long j) {
                this.f7745a.m13679a(z, j);
            }
        });
    }

    /* renamed from: a */
    public final /* synthetic */ drp m13680a(String str) {
        return new drr(str, null, this.f7730h.f7619i ? null : this, this.f7730h.f7614d, this.f7730h.f7615e, true, null);
    }

    /* renamed from: a */
    public final void m13686a(float f, boolean z) {
        if (this.f7731i == null) {
            return;
        }
        dku dkuVar = new dku(this.f7728f, 2, Float.valueOf(f));
        if (z) {
            this.f7731i.mo9287b(dkuVar);
        } else {
            this.f7731i.mo9290a(dkuVar);
        }
    }

    /* renamed from: a */
    public final void m13685a(int i) {
        for (WeakReference<aau> weakReference : this.f7736n) {
            aau aauVar = weakReference.get();
            if (aauVar != null) {
                aauVar.m13703a(i);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dte
    /* renamed from: a */
    public final void mo8634a(int i, int i2, int i3, float f) {
        if (this.f7734l != null) {
            this.f7734l.mo13639a(i, i2);
        }
    }

    @Override // com.google.android.gms.internal.ads.dte
    /* renamed from: a */
    public final void mo8633a(int i, long j) {
    }

    @Override // com.google.android.gms.internal.ads.dte
    /* renamed from: a */
    public final void mo8632a(Surface surface) {
    }

    /* renamed from: a */
    public final void m13683a(Surface surface, boolean z) {
        if (this.f7731i == null) {
            return;
        }
        dku dkuVar = new dku(this.f7727e, 1, surface);
        if (z) {
            this.f7731i.mo9287b(dkuVar);
        } else {
            this.f7731i.mo9290a(dkuVar);
        }
    }

    /* renamed from: a */
    public final void m13682a(abk abkVar) {
        this.f7734l = abkVar;
    }

    @Override // com.google.android.gms.internal.ads.dte
    /* renamed from: a */
    public final void mo8631a(dlf dlfVar) {
    }

    @Override // com.google.android.gms.internal.ads.dks
    /* renamed from: a */
    public final void mo9303a(dlj dljVar) {
    }

    @Override // com.google.android.gms.internal.ads.dks
    /* renamed from: a */
    public final void mo9302a(dln dlnVar, Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.dte
    /* renamed from: a */
    public final void mo8630a(dmt dmtVar) {
    }

    @Override // com.google.android.gms.internal.ads.dks
    /* renamed from: a */
    public final void mo9301a(dqv dqvVar, drg drgVar) {
    }

    @Override // com.google.android.gms.internal.ads.dks
    /* renamed from: a */
    public final void mo9300a(zzgq zzgqVar) {
        if (this.f7734l != null) {
            this.f7734l.mo13637a("onPlayerError", zzgqVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.dqb
    /* renamed from: a */
    public final void mo8901a(IOException iOException) {
        if (this.f7734l != null) {
            this.f7734l.mo13637a("onLoadError", iOException);
        }
    }

    @Override // com.google.android.gms.internal.ads.dsa
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo8767a(drp drpVar) {
    }

    @Override // com.google.android.gms.internal.ads.dsa
    /* renamed from: a */
    public final /* synthetic */ void mo8766a(drp drpVar, int i) {
        this.f7735m += i;
    }

    @Override // com.google.android.gms.internal.ads.dsa
    /* renamed from: a */
    public final /* synthetic */ void mo8765a(drp drpVar, drq drqVar) {
        this.f7735m = 0;
    }

    @Override // com.google.android.gms.internal.ads.dte
    /* renamed from: a */
    public final void mo8629a(String str, long j, long j2) {
    }

    @Override // com.google.android.gms.internal.ads.dks
    /* renamed from: a */
    public final void mo9299a(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.dks
    /* renamed from: a */
    public final void mo9298a(boolean z, int i) {
        if (this.f7734l != null) {
            this.f7734l.mo13633b(i);
        }
    }

    /* renamed from: a */
    public final /* synthetic */ void m13679a(boolean z, long j) {
        if (this.f7734l != null) {
            this.f7734l.mo13635a(z, j);
        }
    }

    /* renamed from: a */
    public final void m13678a(Uri[] uriArr, String str) {
        m13677a(uriArr, str, ByteBuffer.allocate(0), false);
    }

    /* renamed from: a */
    public final void m13677a(Uri[] uriArr, String str, ByteBuffer byteBuffer, boolean z) {
        dqh dqhVar;
        if (this.f7731i == null) {
            return;
        }
        this.f7732j = byteBuffer;
        this.f7733k = z;
        if (uriArr.length == 1) {
            dqhVar = m13684a(uriArr[0], str);
        } else {
            dqg[] dqgVarArr = new dqg[uriArr.length];
            for (int i = 0; i < uriArr.length; i++) {
                dqgVarArr[i] = m13684a(uriArr[i], str);
            }
            dqhVar = new dqh(dqgVarArr);
        }
        this.f7731i.mo9292a(dqhVar);
        f7724b++;
    }

    /* renamed from: b */
    public final /* synthetic */ drp m13675b(String str) {
        aau aauVar = new aau(str, this.f7730h.f7619i ? null : this, this.f7730h.f7614d, this.f7730h.f7615e, this.f7730h.f7618h);
        this.f7736n.add(new WeakReference<>(aauVar));
        return aauVar;
    }

    @Override // com.google.android.gms.internal.ads.dte
    /* renamed from: b */
    public final void mo8628b(dmt dmtVar) {
    }

    /* renamed from: b */
    public final void m13674b(boolean z) {
        if (this.f7731i == null) {
            return;
        }
        for (int i = 0; i < this.f7731i.mo9284e(); i++) {
            this.f7729g.m8829a(i, !z);
        }
    }

    /* renamed from: d */
    public final aay m13672d() {
        return this.f7726d;
    }

    /* renamed from: e */
    public final void m13671e() {
        if (this.f7731i != null) {
            this.f7731i.mo9288b(this);
            this.f7731i.mo9285d();
            this.f7731i = null;
            f7724b--;
        }
    }

    /* renamed from: f */
    public final long m13670f() {
        return this.f7735m;
    }

    public final void finalize() {
        f7723a--;
        if (C3556uu.m7053a()) {
            String valueOf = String.valueOf(this);
            C3556uu.m7052a(new StringBuilder(String.valueOf(valueOf).length() + 26).append("ExoPlayerAdapter finalize ").append(valueOf).toString());
        }
    }

    @Override // com.google.android.gms.internal.ads.dks
    /* renamed from: g */
    public final void mo9297g() {
    }
}
