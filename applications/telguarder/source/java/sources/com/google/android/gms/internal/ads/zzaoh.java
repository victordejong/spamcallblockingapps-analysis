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
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaoh.class */
public final class zzaoh extends zzanq {
    private final NativeAppInstallAdMapper zzdob;

    public zzaoh(NativeAppInstallAdMapper nativeAppInstallAdMapper) {
        this.zzdob = nativeAppInstallAdMapper;
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final String getBody() {
        return this.zzdob.getBody();
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final String getCallToAction() {
        return this.zzdob.getCallToAction();
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final Bundle getExtras() {
        return this.zzdob.getExtras();
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final String getHeadline() {
        return this.zzdob.getHeadline();
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final List getImages() {
        List<NativeAd.Image> images = this.zzdob.getImages();
        if (images != null) {
            ArrayList arrayList = new ArrayList();
            for (NativeAd.Image image : images) {
                arrayList.add(new zzaed(image.getDrawable(), image.getUri(), image.getScale(), image.getWidth(), image.getHeight()));
            }
            return arrayList;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final boolean getOverrideClickHandling() {
        return this.zzdob.getOverrideClickHandling();
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final boolean getOverrideImpressionRecording() {
        return this.zzdob.getOverrideImpressionRecording();
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final String getPrice() {
        return this.zzdob.getPrice();
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final double getStarRating() {
        return this.zzdob.getStarRating();
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final String getStore() {
        return this.zzdob.getStore();
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final zzzc getVideoController() {
        if (this.zzdob.getVideoController() != null) {
            return this.zzdob.getVideoController().zzdw();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final void recordImpression() {
        this.zzdob.recordImpression();
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final void zzc(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        this.zzdob.trackViews((View) ObjectWrapper.unwrap(iObjectWrapper), (HashMap) ObjectWrapper.unwrap(iObjectWrapper2), (HashMap) ObjectWrapper.unwrap(iObjectWrapper3));
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final zzaer zztn() {
        NativeAd.Image icon = this.zzdob.getIcon();
        if (icon != null) {
            return new zzaed(icon.getDrawable(), icon.getUri(), icon.getScale(), icon.getWidth(), icon.getHeight());
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final zzaej zzto() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final IObjectWrapper zztp() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final void zzu(IObjectWrapper iObjectWrapper) {
        this.zzdob.handleClick((View) ObjectWrapper.unwrap(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final void zzv(IObjectWrapper iObjectWrapper) {
        this.zzdob.trackView((View) ObjectWrapper.unwrap(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final IObjectWrapper zzvg() {
        View adChoicesContent = this.zzdob.getAdChoicesContent();
        if (adChoicesContent == null) {
            return null;
        }
        return ObjectWrapper.wrap(adChoicesContent);
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final IObjectWrapper zzvh() {
        View zzaet = this.zzdob.zzaet();
        if (zzaet == null) {
            return null;
        }
        return ObjectWrapper.wrap(zzaet);
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final void zzw(IObjectWrapper iObjectWrapper) {
        this.zzdob.untrackView((View) ObjectWrapper.unwrap(iObjectWrapper));
    }
}
