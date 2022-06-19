package com.google.android.gms.internal.ads;

import android.view.ViewGroup;
import android.view.ViewParent;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bta.class */
public final class bta implements crh<akk> {

    /* renamed from: a */
    private final /* synthetic */ alh f12208a;

    /* renamed from: b */
    private final /* synthetic */ bsx f12209b;

    public bta(bsx bsxVar, alh alhVar) {
        this.f12209b = bsxVar;
        this.f12208a = alhVar;
    }

    @Override // com.google.android.gms.internal.ads.crh
    /* renamed from: a */
    public final /* synthetic */ void mo6719a(akk akkVar) {
        akk akkVar2;
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        arz arzVar;
        akk akkVar3;
        akk akkVar4 = akkVar;
        synchronized (this.f12209b) {
            this.f12209b.f12205m = null;
            akkVar2 = this.f12209b.f12204l;
            if (akkVar2 != null) {
                akkVar3 = this.f12209b.f12204l;
                akkVar3.mo12297k();
            }
            this.f12209b.f12204l = akkVar4;
            viewGroup = this.f12209b.f12195c;
            viewGroup.removeAllViews();
            if (akkVar4.mo12962a() != null) {
                ViewParent parent = akkVar4.mo12962a().getParent();
                if (parent instanceof ViewGroup) {
                    String mo7936k = this.f12209b.mo7936k();
                    C3556uu.m6745e(new StringBuilder(String.valueOf(mo7936k).length() + 78).append("Banner view provided from ").append(mo7936k).append(" already has a parent view. Removing its old parent.").toString());
                    ((ViewGroup) parent).removeView(akkVar4.mo12962a());
                }
            }
            viewGroup2 = this.f12209b.f12195c;
            viewGroup2.addView(akkVar4.mo12962a());
            akkVar4.mo12299g_();
            arzVar = this.f12209b.f12200h;
            arzVar.m12787a(akkVar4.mo12956e());
        }
    }

    @Override // com.google.android.gms.internal.ads.crh
    /* renamed from: a */
    public final void mo6718a(Throwable th) {
        arz arzVar;
        synchronized (this.f12209b) {
            this.f12209b.f12205m = null;
            this.f12208a.mo12972a().mo11258a(zzcjk.m6639a(th));
            arzVar = this.f12209b.f12200h;
            arzVar.m12787a(60);
            chp.m11298a(th, "BannerAdManagerShim.onFailure");
        }
    }
}
