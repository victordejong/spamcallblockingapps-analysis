package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.C2305g;
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.ads.internal.overlay.AbstractC2333t;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.C2327n;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/boo.class */
public final class boo implements awx {

    /* renamed from: a */
    private final Context f11688a;

    /* renamed from: b */
    private final C3647yd f11689b;

    /* renamed from: c */
    private final crt<avs> f11690c;

    /* renamed from: d */
    private final cgr f11691d;

    /* renamed from: e */
    private final act f11692e;

    /* JADX INFO: Access modifiers changed from: private */
    public boo(Context context, C3647yd c3647yd, crt<avs> crtVar, cgr cgrVar, act actVar) {
        this.f11688a = context;
        this.f11689b = c3647yd;
        this.f11690c = crtVar;
        this.f11691d = cgrVar;
        this.f11692e = actVar;
    }

    @Override // com.google.android.gms.internal.ads.awx
    /* renamed from: a */
    public final void mo11680a(boolean z, Context context) {
        avs avsVar = (avs) crg.m10773b(this.f11690c);
        this.f11692e.mo13452b(true);
        C2341q.m14744c();
        C2305g c2305g = new C2305g(false, C3567ve.m6946m(this.f11688a), false, 0.0f, -1, z, this.f11691d.f12960F, false);
        C2341q.m14745b();
        C2327n.m14751a(context, new AdOverlayInfoParcel((dxs) null, avsVar.mo12401j(), (AbstractC2333t) null, this.f11692e, this.f11691d.f12962H, this.f11689b, this.f11691d.f13003y, c2305g, this.f11691d.f12994p.f13013b, this.f11691d.f12994p.f13012a), true);
    }
}
