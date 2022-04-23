package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import p131c.p161d.p170b.p224d.p252g.p253a.BinderC4160w;
import p131c.p161d.p170b.p224d.p252g.p253a.BinderC4197x;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzagk.class */
public final class zzagk {

    /* renamed from: a */
    public final NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener f24081a;

    /* renamed from: b */
    public final NativeCustomTemplateAd.OnCustomClickListener f24082b;

    /* renamed from: c */
    public NativeCustomTemplateAd f24083c;

    public zzagk(NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener onCustomTemplateAdLoadedListener, NativeCustomTemplateAd.OnCustomClickListener onCustomClickListener) {
        this.f24081a = onCustomTemplateAdLoadedListener;
        this.f24082b = onCustomClickListener;
    }

    /* renamed from: a */
    public final NativeCustomTemplateAd m16778a(zzafa zzafaVar) {
        synchronized (this) {
            if (this.f24083c != null) {
                return this.f24083c;
            }
            zzafb zzafbVar = new zzafb(zzafaVar);
            this.f24083c = zzafbVar;
            return zzafbVar;
        }
    }

    /* renamed from: a */
    public final zzafl m16779a() {
        return new BinderC4160w(this, null);
    }

    /* renamed from: b */
    public final zzafk m16775b() {
        if (this.f24082b == null) {
            return null;
        }
        return new BinderC4197x(this, null);
    }
}
