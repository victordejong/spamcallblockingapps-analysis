package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.mediation.NativeAppInstallAdMapper;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.dynamic.BinderC12129d;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.nx */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/nx.class */
public final class BinderC12785nx extends AbstractBinderC12762na {

    /* renamed from: a */
    private final NativeAppInstallAdMapper f49608a;

    public BinderC12785nx(NativeAppInstallAdMapper nativeAppInstallAdMapper) {
        this.f49608a = nativeAppInstallAdMapper;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12763nb
    /* renamed from: a */
    public final String mo14391a() {
        return this.f49608a.getHeadline();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12763nb
    /* renamed from: a */
    public final void mo14390a(AbstractC12126b abstractC12126b) {
        this.f49608a.handleClick((View) BinderC12129d.m18980a(abstractC12126b));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12763nb
    /* renamed from: a */
    public final void mo14389a(AbstractC12126b abstractC12126b, AbstractC12126b abstractC12126b2, AbstractC12126b abstractC12126b3) {
        this.f49608a.trackViews((View) BinderC12129d.m18980a(abstractC12126b), (HashMap) BinderC12129d.m18980a(abstractC12126b2), (HashMap) BinderC12129d.m18980a(abstractC12126b3));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12763nb
    /* renamed from: b */
    public final List mo14388b() {
        List<NativeAd.Image> images = this.f49608a.getImages();
        if (images != null) {
            ArrayList arrayList = new ArrayList();
            for (NativeAd.Image image : images) {
                arrayList.add(new BinderC12325de(image.getDrawable(), image.getUri(), image.getScale(), image.getWidth(), image.getHeight()));
            }
            return arrayList;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12763nb
    /* renamed from: b */
    public final void mo14387b(AbstractC12126b abstractC12126b) {
        this.f49608a.trackView((View) BinderC12129d.m18980a(abstractC12126b));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12763nb
    /* renamed from: c */
    public final String mo14386c() {
        return this.f49608a.getBody();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12763nb
    /* renamed from: c */
    public final void mo14385c(AbstractC12126b abstractC12126b) {
        this.f49608a.untrackView((View) BinderC12129d.m18980a(abstractC12126b));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12763nb
    /* renamed from: d */
    public final AbstractC12394dr mo14384d() {
        NativeAd.Image icon = this.f49608a.getIcon();
        if (icon != null) {
            return new BinderC12325de(icon.getDrawable(), icon.getUri(), icon.getScale(), icon.getWidth(), icon.getHeight());
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12763nb
    /* renamed from: e */
    public final String mo14383e() {
        return this.f49608a.getCallToAction();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12763nb
    /* renamed from: f */
    public final double mo14382f() {
        return this.f49608a.getStarRating();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12763nb
    /* renamed from: g */
    public final String mo14381g() {
        return this.f49608a.getStore();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12763nb
    /* renamed from: h */
    public final String mo14380h() {
        return this.f49608a.getPrice();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12763nb
    /* renamed from: i */
    public final void mo14379i() {
        this.f49608a.recordImpression();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12763nb
    /* renamed from: j */
    public final boolean mo14378j() {
        return this.f49608a.getOverrideImpressionRecording();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12763nb
    /* renamed from: k */
    public final boolean mo14377k() {
        return this.f49608a.getOverrideClickHandling();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12763nb
    /* renamed from: l */
    public final Bundle mo14376l() {
        return this.f49608a.getExtras();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12763nb
    /* renamed from: m */
    public final emk mo14375m() {
        if (this.f49608a.getVideoController() != null) {
            return this.f49608a.getVideoController().zzdz();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12763nb
    /* renamed from: n */
    public final AbstractC12126b mo14374n() {
        View adChoicesContent = this.f49608a.getAdChoicesContent();
        if (adChoicesContent == null) {
            return null;
        }
        return BinderC12129d.m18979a(adChoicesContent);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12763nb
    /* renamed from: o */
    public final AbstractC12371dj mo14373o() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12763nb
    /* renamed from: p */
    public final AbstractC12126b mo14372p() {
        View zzafo = this.f49608a.zzafo();
        if (zzafo == null) {
            return null;
        }
        return BinderC12129d.m18979a(zzafo);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12763nb
    /* renamed from: q */
    public final AbstractC12126b mo14371q() {
        return null;
    }
}
