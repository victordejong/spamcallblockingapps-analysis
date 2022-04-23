package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.mediation.NativeContentAdMapper;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.d;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/nw.class */
public final class nw extends nf {

    /* renamed from: a  reason: collision with root package name */
    private final NativeContentAdMapper f28243a;

    public nw(NativeContentAdMapper nativeContentAdMapper) {
        this.f28243a = nativeContentAdMapper;
    }

    @Override // com.google.android.gms.internal.ads.nc
    public final String a() {
        return this.f28243a.getHeadline();
    }

    @Override // com.google.android.gms.internal.ads.nc
    public final void a(b bVar) {
        this.f28243a.handleClick((View) d.a(bVar));
    }

    @Override // com.google.android.gms.internal.ads.nc
    public final void a(b bVar, b bVar2, b bVar3) {
        this.f28243a.trackViews((View) d.a(bVar), (HashMap) d.a(bVar2), (HashMap) d.a(bVar3));
    }

    @Override // com.google.android.gms.internal.ads.nc
    public final List b() {
        List<NativeAd.Image> images = this.f28243a.getImages();
        if (images == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (NativeAd.Image image : images) {
            arrayList.add(new de(image.getDrawable(), image.getUri(), image.getScale(), image.getWidth(), image.getHeight()));
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.nc
    public final void b(b bVar) {
        this.f28243a.trackView((View) d.a(bVar));
    }

    @Override // com.google.android.gms.internal.ads.nc
    public final String c() {
        return this.f28243a.getBody();
    }

    @Override // com.google.android.gms.internal.ads.nc
    public final void c(b bVar) {
        this.f28243a.untrackView((View) d.a(bVar));
    }

    @Override // com.google.android.gms.internal.ads.nc
    public final dr d() {
        NativeAd.Image logo = this.f28243a.getLogo();
        if (logo != null) {
            return new de(logo.getDrawable(), logo.getUri(), logo.getScale(), logo.getWidth(), logo.getHeight());
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.nc
    public final String e() {
        return this.f28243a.getCallToAction();
    }

    @Override // com.google.android.gms.internal.ads.nc
    public final String f() {
        return this.f28243a.getAdvertiser();
    }

    @Override // com.google.android.gms.internal.ads.nc
    public final void g() {
        this.f28243a.recordImpression();
    }

    @Override // com.google.android.gms.internal.ads.nc
    public final boolean h() {
        return this.f28243a.getOverrideImpressionRecording();
    }

    @Override // com.google.android.gms.internal.ads.nc
    public final boolean i() {
        return this.f28243a.getOverrideClickHandling();
    }

    @Override // com.google.android.gms.internal.ads.nc
    public final Bundle j() {
        return this.f28243a.getExtras();
    }

    @Override // com.google.android.gms.internal.ads.nc
    public final b k() {
        View adChoicesContent = this.f28243a.getAdChoicesContent();
        if (adChoicesContent == null) {
            return null;
        }
        return d.a(adChoicesContent);
    }

    @Override // com.google.android.gms.internal.ads.nc
    public final emk l() {
        if (this.f28243a.getVideoController() != null) {
            return this.f28243a.getVideoController().zzdz();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.nc
    public final dj m() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.nc
    public final b n() {
        View zzafo = this.f28243a.zzafo();
        if (zzafo == null) {
            return null;
        }
        return d.a(zzafo);
    }

    @Override // com.google.android.gms.internal.ads.nc
    public final b o() {
        return null;
    }
}
