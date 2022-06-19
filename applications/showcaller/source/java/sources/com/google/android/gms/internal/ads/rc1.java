package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.overlay.AbstractC5653o;
import com.google.android.gms.dynamic.AbstractC6253a;
import p020b.p036e.C1489a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/rc1.class */
public final class rc1 implements n41, AbstractC5653o {

    /* renamed from: d */
    private final Context f28842d;

    /* renamed from: e */
    private final wn0 f28843e;

    /* renamed from: f */
    private final ej2 f28844f;

    /* renamed from: g */
    private final zzcgz f28845g;

    /* renamed from: h */
    private final zzazj f28846h;

    /* renamed from: i */
    AbstractC6253a f28847i;

    public rc1(Context context, wn0 wn0Var, ej2 ej2Var, zzcgz zzcgzVar, zzazj zzazjVar) {
        this.f28842d = context;
        this.f28843e = wn0Var;
        this.f28844f = ej2Var;
        this.f28845g = zzcgzVar;
        this.f28846h = zzazjVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC5653o
    /* renamed from: a */
    public final void mo9244a() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC5653o
    /* renamed from: a3 */
    public final void mo9243a3() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC5653o
    /* renamed from: a6 */
    public final void mo9242a6(int i) {
        this.f28847i = null;
    }

    @Override // com.google.android.gms.internal.ads.n41
    /* renamed from: d */
    public final void mo10505d() {
        zzbzl zzbzlVar;
        zzbzm zzbzmVar;
        zzazj zzazjVar = this.f28846h;
        if ((zzazjVar == zzazj.REWARD_BASED_VIDEO_AD || zzazjVar == zzazj.INTERSTITIAL || zzazjVar == zzazj.APP_OPEN) && this.f28844f.f22208P && this.f28843e != null && C5667s.m18145s().mo12112U(this.f28842d)) {
            zzcgz zzcgzVar = this.f28845g;
            int i = zzcgzVar.f33855e;
            int i2 = zzcgzVar.f33856f;
            StringBuilder sb = new StringBuilder(23);
            sb.append(i);
            sb.append(".");
            sb.append(i2);
            String sb2 = sb.toString();
            String m16576a = this.f28844f.f22210R.m16576a();
            if (this.f28844f.f22210R.m16575b() == 1) {
                zzbzl zzbzlVar2 = zzbzl.VIDEO;
                zzbzmVar = zzbzm.DEFINED_BY_JAVASCRIPT;
                zzbzlVar = zzbzlVar2;
            } else {
                zzbzm zzbzmVar2 = this.f28844f.f22213U == 2 ? zzbzm.UNSPECIFIED : zzbzm.BEGIN_TO_RENDER;
                zzbzlVar = zzbzl.HTML_DISPLAY;
                zzbzmVar = zzbzmVar2;
            }
            AbstractC6253a mo12110b = C5667s.m18145s().mo12110b(sb2, this.f28843e.mo7956F(), "", "javascript", m16576a, zzbzmVar, zzbzlVar, this.f28844f.f22236i0);
            this.f28847i = mo12110b;
            if (mo12110b == null) {
                return;
            }
            C5667s.m18145s().mo12107e(this.f28847i, (View) this.f28843e);
            this.f28843e.mo7965A0(this.f28847i);
            C5667s.m18145s().zzf(this.f28847i);
            this.f28843e.mo7959D0("onSdkLoaded", new C1489a());
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC5653o
    /* renamed from: e */
    public final void mo9240e() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC5653o
    /* renamed from: m2 */
    public final void mo9237m2() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC5653o
    /* renamed from: y4 */
    public final void mo9229y4() {
        wn0 wn0Var;
        if (this.f28847i == null || (wn0Var = this.f28843e) == null) {
            return;
        }
        wn0Var.mo7959D0("onSdkImpression", new C1489a());
    }
}
