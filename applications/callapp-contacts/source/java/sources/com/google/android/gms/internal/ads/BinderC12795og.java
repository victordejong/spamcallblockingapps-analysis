package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.dynamic.BinderC12129d;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.og */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/og.class */
public final class BinderC12795og extends AbstractBinderC12768ng {

    /* renamed from: a */
    private final UnifiedNativeAdMapper f49631a;

    public BinderC12795og(UnifiedNativeAdMapper unifiedNativeAdMapper) {
        this.f49631a = unifiedNativeAdMapper;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12769nh
    /* renamed from: a */
    public final String mo14328a() {
        return this.f49631a.getHeadline();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12769nh
    /* renamed from: a */
    public final void mo14327a(AbstractC12126b abstractC12126b) {
        this.f49631a.handleClick((View) BinderC12129d.m18980a(abstractC12126b));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12769nh
    /* renamed from: a */
    public final void mo14326a(AbstractC12126b abstractC12126b, AbstractC12126b abstractC12126b2, AbstractC12126b abstractC12126b3) {
        this.f49631a.trackViews((View) BinderC12129d.m18980a(abstractC12126b), (HashMap) BinderC12129d.m18980a(abstractC12126b2), (HashMap) BinderC12129d.m18980a(abstractC12126b3));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12769nh
    /* renamed from: b */
    public final List mo14325b() {
        List<NativeAd.Image> images = this.f49631a.getImages();
        ArrayList arrayList = new ArrayList();
        if (images != null) {
            for (NativeAd.Image image : images) {
                arrayList.add(new BinderC12325de(image.getDrawable(), image.getUri(), image.getScale(), image.getWidth(), image.getHeight()));
            }
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12769nh
    /* renamed from: b */
    public final void mo14324b(AbstractC12126b abstractC12126b) {
        this.f49631a.untrackView((View) BinderC12129d.m18980a(abstractC12126b));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12769nh
    /* renamed from: c */
    public final String mo14323c() {
        return this.f49631a.getBody();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12769nh
    /* renamed from: d */
    public final AbstractC12394dr mo14322d() {
        NativeAd.Image icon = this.f49631a.getIcon();
        if (icon != null) {
            return new BinderC12325de(icon.getDrawable(), icon.getUri(), icon.getScale(), icon.getWidth(), icon.getHeight());
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12769nh
    /* renamed from: e */
    public final String mo14321e() {
        return this.f49631a.getCallToAction();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12769nh
    /* renamed from: f */
    public final String mo14320f() {
        return this.f49631a.getAdvertiser();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12769nh
    /* renamed from: g */
    public final double mo14319g() {
        if (this.f49631a.getStarRating() != null) {
            return this.f49631a.getStarRating().doubleValue();
        }
        return -1.0d;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12769nh
    /* renamed from: h */
    public final String mo14318h() {
        return this.f49631a.getStore();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12769nh
    /* renamed from: i */
    public final String mo14317i() {
        return this.f49631a.getPrice();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12769nh
    /* renamed from: j */
    public final emk mo14316j() {
        if (this.f49631a.getVideoController() != null) {
            return this.f49631a.getVideoController().zzdz();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12769nh
    /* renamed from: k */
    public final AbstractC12371dj mo14315k() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12769nh
    /* renamed from: l */
    public final AbstractC12126b mo14314l() {
        View adChoicesContent = this.f49631a.getAdChoicesContent();
        if (adChoicesContent == null) {
            return null;
        }
        return BinderC12129d.m18979a(adChoicesContent);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12769nh
    /* renamed from: m */
    public final AbstractC12126b mo14313m() {
        View zzafo = this.f49631a.zzafo();
        if (zzafo == null) {
            return null;
        }
        return BinderC12129d.m18979a(zzafo);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12769nh
    /* renamed from: n */
    public final AbstractC12126b mo14312n() {
        Object zzka = this.f49631a.zzka();
        if (zzka == null) {
            return null;
        }
        return BinderC12129d.m18979a(zzka);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12769nh
    /* renamed from: o */
    public final Bundle mo14311o() {
        return this.f49631a.getExtras();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12769nh
    /* renamed from: p */
    public final boolean mo14310p() {
        return this.f49631a.getOverrideImpressionRecording();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12769nh
    /* renamed from: q */
    public final boolean mo14309q() {
        return this.f49631a.getOverrideClickHandling();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12769nh
    /* renamed from: r */
    public final void mo14308r() {
        this.f49631a.recordImpression();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12769nh
    /* renamed from: s */
    public final float mo14307s() {
        return this.f49631a.getMediaContentAspectRatio();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12769nh
    /* renamed from: t */
    public final float mo14306t() {
        return this.f49631a.getDuration();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12769nh
    /* renamed from: u */
    public final float mo14305u() {
        return this.f49631a.getCurrentTime();
    }
}
