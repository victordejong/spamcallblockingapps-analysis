package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.mediation.NativeAppInstallAdMapper;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaoe.class */
public final class zzaoe extends zzann {

    /* renamed from: a */
    public final NativeAppInstallAdMapper f24224a;

    public zzaoe(NativeAppInstallAdMapper nativeAppInstallAdMapper) {
        this.f24224a = nativeAppInstallAdMapper;
    }

    @Override // com.google.android.gms.internal.ads.zzano
    /* renamed from: D */
    public final String mo16579D() {
        return this.f24224a.getStore();
    }

    @Override // com.google.android.gms.internal.ads.zzano
    /* renamed from: J */
    public final boolean mo16578J() {
        return this.f24224a.getOverrideImpressionRecording();
    }

    @Override // com.google.android.gms.internal.ads.zzano
    /* renamed from: N */
    public final IObjectWrapper mo16577N() {
        View zzadh = this.f24224a.zzadh();
        if (zzadh == null) {
            return null;
        }
        return ObjectWrapper.m17020a(zzadh);
    }

    @Override // com.google.android.gms.internal.ads.zzano
    /* renamed from: R */
    public final IObjectWrapper mo16576R() {
        View adChoicesContent = this.f24224a.getAdChoicesContent();
        if (adChoicesContent == null) {
            return null;
        }
        return ObjectWrapper.m17020a(adChoicesContent);
    }

    @Override // com.google.android.gms.internal.ads.zzano
    /* renamed from: U */
    public final boolean mo16575U() {
        return this.f24224a.getOverrideClickHandling();
    }

    @Override // com.google.android.gms.internal.ads.zzano
    /* renamed from: a */
    public final void mo16574a(IObjectWrapper iObjectWrapper) {
        this.f24224a.untrackView((View) ObjectWrapper.m17021Q(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzano
    /* renamed from: a */
    public final void mo16573a(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        this.f24224a.trackViews((View) ObjectWrapper.m17021Q(iObjectWrapper), (HashMap) ObjectWrapper.m17021Q(iObjectWrapper2), (HashMap) ObjectWrapper.m17021Q(iObjectWrapper3));
    }

    @Override // com.google.android.gms.internal.ads.zzano
    /* renamed from: c */
    public final void mo16572c(IObjectWrapper iObjectWrapper) {
        this.f24224a.handleClick((View) ObjectWrapper.m17021Q(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzano
    /* renamed from: d */
    public final zzadw mo16571d() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzano
    /* renamed from: e */
    public final String mo16570e() {
        return this.f24224a.getHeadline();
    }

    @Override // com.google.android.gms.internal.ads.zzano
    /* renamed from: e */
    public final void mo16569e(IObjectWrapper iObjectWrapper) {
        this.f24224a.trackView((View) ObjectWrapper.m17021Q(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzano
    /* renamed from: f */
    public final String mo16568f() {
        return this.f24224a.getCallToAction();
    }

    @Override // com.google.android.gms.internal.ads.zzano
    /* renamed from: g */
    public final String mo16567g() {
        return this.f24224a.getBody();
    }

    @Override // com.google.android.gms.internal.ads.zzano
    public final Bundle getExtras() {
        return this.f24224a.getExtras();
    }

    @Override // com.google.android.gms.internal.ads.zzano
    public final double getStarRating() {
        return this.f24224a.getStarRating();
    }

    @Override // com.google.android.gms.internal.ads.zzano
    public final zzyo getVideoController() {
        if (this.f24224a.getVideoController() != null) {
            return this.f24224a.getVideoController().m18090a();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzano
    /* renamed from: h */
    public final IObjectWrapper mo16566h() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzano
    /* renamed from: i */
    public final List mo16565i() {
        List<NativeAd.Image> images = this.f24224a.getImages();
        if (images == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (NativeAd.Image image : images) {
            arrayList.add(new zzadq(image.getDrawable(), image.getUri(), image.getScale(), image.getWidth(), image.getHeight()));
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzano
    /* renamed from: m */
    public final void mo16564m() {
        this.f24224a.recordImpression();
    }

    @Override // com.google.android.gms.internal.ads.zzano
    /* renamed from: q */
    public final zzaee mo16563q() {
        NativeAd.Image icon = this.f24224a.getIcon();
        if (icon != null) {
            return new zzadq(icon.getDrawable(), icon.getUri(), icon.getScale(), icon.getWidth(), icon.getHeight());
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzano
    /* renamed from: s */
    public final String mo16562s() {
        return this.f24224a.getPrice();
    }
}
