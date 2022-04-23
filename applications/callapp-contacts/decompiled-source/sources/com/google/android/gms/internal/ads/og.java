package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.d;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/og.class */
public final class og extends ng {

    /* renamed from: a  reason: collision with root package name */
    private final UnifiedNativeAdMapper f28259a;

    public og(UnifiedNativeAdMapper unifiedNativeAdMapper) {
        this.f28259a = unifiedNativeAdMapper;
    }

    @Override // com.google.android.gms.internal.ads.nh
    public final String a() {
        return this.f28259a.getHeadline();
    }

    @Override // com.google.android.gms.internal.ads.nh
    public final void a(b bVar) {
        this.f28259a.handleClick((View) d.a(bVar));
    }

    @Override // com.google.android.gms.internal.ads.nh
    public final void a(b bVar, b bVar2, b bVar3) {
        this.f28259a.trackViews((View) d.a(bVar), (HashMap) d.a(bVar2), (HashMap) d.a(bVar3));
    }

    @Override // com.google.android.gms.internal.ads.nh
    public final List b() {
        List<NativeAd.Image> images = this.f28259a.getImages();
        ArrayList arrayList = new ArrayList();
        if (images != null) {
            for (NativeAd.Image image : images) {
                arrayList.add(new de(image.getDrawable(), image.getUri(), image.getScale(), image.getWidth(), image.getHeight()));
            }
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.nh
    public final void b(b bVar) {
        this.f28259a.untrackView((View) d.a(bVar));
    }

    @Override // com.google.android.gms.internal.ads.nh
    public final String c() {
        return this.f28259a.getBody();
    }

    @Override // com.google.android.gms.internal.ads.nh
    public final dr d() {
        NativeAd.Image icon = this.f28259a.getIcon();
        if (icon != null) {
            return new de(icon.getDrawable(), icon.getUri(), icon.getScale(), icon.getWidth(), icon.getHeight());
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.nh
    public final String e() {
        return this.f28259a.getCallToAction();
    }

    @Override // com.google.android.gms.internal.ads.nh
    public final String f() {
        return this.f28259a.getAdvertiser();
    }

    @Override // com.google.android.gms.internal.ads.nh
    public final double g() {
        if (this.f28259a.getStarRating() != null) {
            return this.f28259a.getStarRating().doubleValue();
        }
        return -1.0d;
    }

    @Override // com.google.android.gms.internal.ads.nh
    public final String h() {
        return this.f28259a.getStore();
    }

    @Override // com.google.android.gms.internal.ads.nh
    public final String i() {
        return this.f28259a.getPrice();
    }

    @Override // com.google.android.gms.internal.ads.nh
    public final emk j() {
        if (this.f28259a.getVideoController() != null) {
            return this.f28259a.getVideoController().zzdz();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.nh
    public final dj k() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.nh
    public final b l() {
        View adChoicesContent = this.f28259a.getAdChoicesContent();
        if (adChoicesContent == null) {
            return null;
        }
        return d.a(adChoicesContent);
    }

    @Override // com.google.android.gms.internal.ads.nh
    public final b m() {
        View zzafo = this.f28259a.zzafo();
        if (zzafo == null) {
            return null;
        }
        return d.a(zzafo);
    }

    @Override // com.google.android.gms.internal.ads.nh
    public final b n() {
        Object zzka = this.f28259a.zzka();
        if (zzka == null) {
            return null;
        }
        return d.a(zzka);
    }

    @Override // com.google.android.gms.internal.ads.nh
    public final Bundle o() {
        return this.f28259a.getExtras();
    }

    @Override // com.google.android.gms.internal.ads.nh
    public final boolean p() {
        return this.f28259a.getOverrideImpressionRecording();
    }

    @Override // com.google.android.gms.internal.ads.nh
    public final boolean q() {
        return this.f28259a.getOverrideClickHandling();
    }

    @Override // com.google.android.gms.internal.ads.nh
    public final void r() {
        this.f28259a.recordImpression();
    }

    @Override // com.google.android.gms.internal.ads.nh
    public final float s() {
        return this.f28259a.getMediaContentAspectRatio();
    }

    @Override // com.google.android.gms.internal.ads.nh
    public final float t() {
        return this.f28259a.getDuration();
    }

    @Override // com.google.android.gms.internal.ads.nh
    public final float u() {
        return this.f28259a.getCurrentTime();
    }
}
