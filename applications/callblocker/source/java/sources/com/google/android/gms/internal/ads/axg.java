package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.internal.ads.dwv;
import javax.annotation.ParametersAreNonnullByDefault;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/axg.class */
public final class axg implements AbstractC2792app, auf {

    /* renamed from: a */
    private final C3505sx f10507a;

    /* renamed from: b */
    private final Context f10508b;

    /* renamed from: c */
    private final C3509ta f10509c;

    /* renamed from: d */
    private final View f10510d;

    /* renamed from: e */
    private String f10511e;

    /* renamed from: f */
    private final dwv.C3021a.EnumC3022a f10512f;

    public axg(C3505sx c3505sx, Context context, C3509ta c3509ta, View view, dwv.C3021a.EnumC3022a enumC3022a) {
        this.f10507a = c3505sx;
        this.f10508b = context;
        this.f10509c = c3509ta;
        this.f10510d = view;
        this.f10512f = enumC3022a;
    }

    @Override // com.google.android.gms.internal.ads.auf
    /* renamed from: a */
    public final void mo12359a() {
        this.f10511e = this.f10509c.m7151b(this.f10508b);
        String valueOf = String.valueOf(this.f10511e);
        String valueOf2 = String.valueOf(this.f10512f == dwv.C3021a.EnumC3022a.REWARD_BASED_VIDEO_AD ? "/Rewarded" : "/Interstitial");
        this.f10511e = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2792app
    @ParametersAreNonnullByDefault
    /* renamed from: a */
    public final void mo11421a(AbstractC3445qr abstractC3445qr, String str, String str2) {
        if (this.f10509c.m7166a(this.f10508b)) {
            try {
                this.f10509c.m7160a(this.f10508b, this.f10509c.m7145e(this.f10508b), this.f10507a.m7171a(), abstractC3445qr.mo7292a(), abstractC3445qr.mo7291b());
            } catch (RemoteException e) {
                C3556uu.m6746d("Remote Exception to get reward item.", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2792app
    /* renamed from: c */
    public final void mo11414c() {
        if (this.f10510d != null && this.f10511e != null) {
            this.f10509c.m7148c(this.f10510d.getContext(), this.f10511e);
        }
        this.f10507a.m7169a(true);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2792app
    /* renamed from: d */
    public final void mo11413d() {
        this.f10507a.m7169a(false);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2792app
    /* renamed from: f */
    public final void mo11412f() {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2792app
    /* renamed from: g */
    public final void mo11411g() {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2792app
    /* renamed from: h */
    public final void mo11410h() {
    }
}
