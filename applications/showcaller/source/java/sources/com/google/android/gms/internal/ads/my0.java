package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.dynamic.AbstractC6253a;
import p020b.p036e.C1489a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/my0.class */
public final class my0 implements n41, s31 {

    /* renamed from: d */
    private final Context f26905d;

    /* renamed from: e */
    private final wn0 f26906e;

    /* renamed from: f */
    private final ej2 f26907f;

    /* renamed from: g */
    private final zzcgz f26908g;

    /* renamed from: h */
    private AbstractC6253a f26909h;

    /* renamed from: i */
    private boolean f26910i;

    public my0(Context context, wn0 wn0Var, ej2 ej2Var, zzcgz zzcgzVar) {
        this.f26905d = context;
        this.f26906e = wn0Var;
        this.f26907f = ej2Var;
        this.f26908g = zzcgzVar;
    }

    /* renamed from: a */
    private final void m13061a() {
        zzbzl zzbzlVar;
        zzbzm zzbzmVar;
        synchronized (this) {
            if (!this.f26907f.f22208P) {
                return;
            }
            if (this.f26906e == null) {
                return;
            }
            if (!C5667s.m18145s().mo12112U(this.f26905d)) {
                return;
            }
            zzcgz zzcgzVar = this.f26908g;
            int i = zzcgzVar.f33855e;
            int i2 = zzcgzVar.f33856f;
            StringBuilder sb = new StringBuilder(23);
            sb.append(i);
            sb.append(".");
            sb.append(i2);
            String sb2 = sb.toString();
            String m16576a = this.f26907f.f22210R.m16576a();
            if (this.f26907f.f22210R.m16575b() == 1) {
                zzbzlVar = zzbzl.VIDEO;
                zzbzmVar = zzbzm.DEFINED_BY_JAVASCRIPT;
            } else {
                zzbzlVar = zzbzl.HTML_DISPLAY;
                zzbzmVar = this.f26907f.f22229f == 1 ? zzbzm.ONE_PIXEL : zzbzm.BEGIN_TO_RENDER;
            }
            AbstractC6253a mo12110b = C5667s.m18145s().mo12110b(sb2, this.f26906e.mo7956F(), "", "javascript", m16576a, zzbzmVar, zzbzlVar, this.f26907f.f22236i0);
            this.f26909h = mo12110b;
            wn0 wn0Var = this.f26906e;
            if (mo12110b == null) {
                return;
            }
            C5667s.m18145s().mo12107e(this.f26909h, (View) wn0Var);
            this.f26906e.mo7965A0(this.f26909h);
            C5667s.m18145s().zzf(this.f26909h);
            this.f26910i = true;
            this.f26906e.mo7959D0("onSdkLoaded", new C1489a());
        }
    }

    @Override // com.google.android.gms.internal.ads.n41
    /* renamed from: d */
    public final void mo10505d() {
        synchronized (this) {
            if (this.f26910i) {
                return;
            }
            m13061a();
        }
    }

    @Override // com.google.android.gms.internal.ads.s31
    public final void zzg() {
        wn0 wn0Var;
        synchronized (this) {
            if (!this.f26910i) {
                m13061a();
            }
            if (!this.f26907f.f22208P || this.f26909h == null || (wn0Var = this.f26906e) == null) {
                return;
            }
            wn0Var.mo7959D0("onSdkImpression", new C1489a());
        }
    }
}
