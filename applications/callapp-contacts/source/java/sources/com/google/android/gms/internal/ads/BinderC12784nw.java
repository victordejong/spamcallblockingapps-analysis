package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.mediation.NativeContentAdMapper;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.dynamic.BinderC12129d;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.nw */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/nw.class */
public final class BinderC12784nw extends AbstractBinderC12767nf {

    /* renamed from: a */
    private final NativeContentAdMapper f49607a;

    public BinderC12784nw(NativeContentAdMapper nativeContentAdMapper) {
        this.f49607a = nativeContentAdMapper;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12764nc
    /* renamed from: a */
    public final String mo14410a() {
        return this.f49607a.getHeadline();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12764nc
    /* renamed from: a */
    public final void mo14409a(AbstractC12126b abstractC12126b) {
        this.f49607a.handleClick((View) BinderC12129d.m18980a(abstractC12126b));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12764nc
    /* renamed from: a */
    public final void mo14408a(AbstractC12126b abstractC12126b, AbstractC12126b abstractC12126b2, AbstractC12126b abstractC12126b3) {
        this.f49607a.trackViews((View) BinderC12129d.m18980a(abstractC12126b), (HashMap) BinderC12129d.m18980a(abstractC12126b2), (HashMap) BinderC12129d.m18980a(abstractC12126b3));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12764nc
    /* renamed from: b */
    public final List mo14407b() {
        List<NativeAd.Image> images = this.f49607a.getImages();
        if (images != null) {
            ArrayList arrayList = new ArrayList();
            for (NativeAd.Image image : images) {
                arrayList.add(new BinderC12325de(image.getDrawable(), image.getUri(), image.getScale(), image.getWidth(), image.getHeight()));
            }
            return arrayList;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12764nc
    /* renamed from: b */
    public final void mo14406b(AbstractC12126b abstractC12126b) {
        this.f49607a.trackView((View) BinderC12129d.m18980a(abstractC12126b));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12764nc
    /* renamed from: c */
    public final String mo14405c() {
        return this.f49607a.getBody();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12764nc
    /* renamed from: c */
    public final void mo14404c(AbstractC12126b abstractC12126b) {
        this.f49607a.untrackView((View) BinderC12129d.m18980a(abstractC12126b));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12764nc
    /* renamed from: d */
    public final AbstractC12394dr mo14403d() {
        NativeAd.Image logo = this.f49607a.getLogo();
        if (logo != null) {
            return new BinderC12325de(logo.getDrawable(), logo.getUri(), logo.getScale(), logo.getWidth(), logo.getHeight());
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12764nc
    /* renamed from: e */
    public final String mo14402e() {
        return this.f49607a.getCallToAction();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12764nc
    /* renamed from: f */
    public final String mo14401f() {
        return this.f49607a.getAdvertiser();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12764nc
    /* renamed from: g */
    public final void mo14400g() {
        this.f49607a.recordImpression();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12764nc
    /* renamed from: h */
    public final boolean mo14399h() {
        return this.f49607a.getOverrideImpressionRecording();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12764nc
    /* renamed from: i */
    public final boolean mo14398i() {
        return this.f49607a.getOverrideClickHandling();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12764nc
    /* renamed from: j */
    public final Bundle mo14397j() {
        return this.f49607a.getExtras();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12764nc
    /* renamed from: k */
    public final AbstractC12126b mo14396k() {
        View adChoicesContent = this.f49607a.getAdChoicesContent();
        if (adChoicesContent == null) {
            return null;
        }
        return BinderC12129d.m18979a(adChoicesContent);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12764nc
    /* renamed from: l */
    public final emk mo14395l() {
        if (this.f49607a.getVideoController() != null) {
            return this.f49607a.getVideoController().zzdz();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12764nc
    /* renamed from: m */
    public final AbstractC12371dj mo14394m() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12764nc
    /* renamed from: n */
    public final AbstractC12126b mo14393n() {
        View zzafo = this.f49607a.zzafo();
        if (zzafo == null) {
            return null;
        }
        return BinderC12129d.m18979a(zzafo);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12764nc
    /* renamed from: o */
    public final AbstractC12126b mo14392o() {
        return null;
    }
}
