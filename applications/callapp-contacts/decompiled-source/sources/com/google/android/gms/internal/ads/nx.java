package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.mediation.NativeAppInstallAdMapper;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.d;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/nx.class */
public final class nx extends na {

    /* renamed from: a  reason: collision with root package name */
    private final NativeAppInstallAdMapper f28244a;

    public nx(NativeAppInstallAdMapper nativeAppInstallAdMapper) {
        this.f28244a = nativeAppInstallAdMapper;
    }

    @Override // com.google.android.gms.internal.ads.nb
    public final String a() {
        return this.f28244a.getHeadline();
    }

    @Override // com.google.android.gms.internal.ads.nb
    public final void a(b bVar) {
        this.f28244a.handleClick((View) d.a(bVar));
    }

    @Override // com.google.android.gms.internal.ads.nb
    public final void a(b bVar, b bVar2, b bVar3) {
        this.f28244a.trackViews((View) d.a(bVar), (HashMap) d.a(bVar2), (HashMap) d.a(bVar3));
    }

    @Override // com.google.android.gms.internal.ads.nb
    public final List b() {
        List<NativeAd.Image> images = this.f28244a.getImages();
        if (images == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (NativeAd.Image image : images) {
            arrayList.add(new de(image.getDrawable(), image.getUri(), image.getScale(), image.getWidth(), image.getHeight()));
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.nb
    public final void b(b bVar) {
        this.f28244a.trackView((View) d.a(bVar));
    }

    @Override // com.google.android.gms.internal.ads.nb
    public final String c() {
        return this.f28244a.getBody();
    }

    @Override // com.google.android.gms.internal.ads.nb
    public final void c(b bVar) {
        this.f28244a.untrackView((View) d.a(bVar));
    }

    @Override // com.google.android.gms.internal.ads.nb
    public final dr d() {
        NativeAd.Image icon = this.f28244a.getIcon();
        if (icon != null) {
            return new de(icon.getDrawable(), icon.getUri(), icon.getScale(), icon.getWidth(), icon.getHeight());
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.nb
    public final String e() {
        return this.f28244a.getCallToAction();
    }

    @Override // com.google.android.gms.internal.ads.nb
    public final double f() {
        return this.f28244a.getStarRating();
    }

    @Override // com.google.android.gms.internal.ads.nb
    public final String g() {
        return this.f28244a.getStore();
    }

    @Override // com.google.android.gms.internal.ads.nb
    public final String h() {
        return this.f28244a.getPrice();
    }

    @Override // com.google.android.gms.internal.ads.nb
    public final void i() {
        this.f28244a.recordImpression();
    }

    @Override // com.google.android.gms.internal.ads.nb
    public final boolean j() {
        return this.f28244a.getOverrideImpressionRecording();
    }

    @Override // com.google.android.gms.internal.ads.nb
    public final boolean k() {
        return this.f28244a.getOverrideClickHandling();
    }

    @Override // com.google.android.gms.internal.ads.nb
    public final Bundle l() {
        return this.f28244a.getExtras();
    }

    @Override // com.google.android.gms.internal.ads.nb
    public final emk m() {
        if (this.f28244a.getVideoController() != null) {
            return this.f28244a.getVideoController().zzdz();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.nb
    public final b n() {
        View adChoicesContent = this.f28244a.getAdChoicesContent();
        if (adChoicesContent == null) {
            return null;
        }
        return d.a(adChoicesContent);
    }

    @Override // com.google.android.gms.internal.ads.nb
    public final dj o() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.nb
    public final b p() {
        View zzafo = this.f28244a.zzafo();
        if (zzafo == null) {
            return null;
        }
        return d.a(zzafo);
    }

    @Override // com.google.android.gms.internal.ads.nb
    public final b q() {
        return null;
    }
}
