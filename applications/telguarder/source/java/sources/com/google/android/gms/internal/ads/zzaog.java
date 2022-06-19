package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.mediation.NativeContentAdMapper;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaog.class */
public final class zzaog extends zzanv {
    private final NativeContentAdMapper zzdoa;

    public zzaog(NativeContentAdMapper nativeContentAdMapper) {
        this.zzdoa = nativeContentAdMapper;
    }

    @Override // com.google.android.gms.internal.ads.zzans
    public final String getAdvertiser() {
        return this.zzdoa.getAdvertiser();
    }

    @Override // com.google.android.gms.internal.ads.zzans
    public final String getBody() {
        return this.zzdoa.getBody();
    }

    @Override // com.google.android.gms.internal.ads.zzans
    public final String getCallToAction() {
        return this.zzdoa.getCallToAction();
    }

    @Override // com.google.android.gms.internal.ads.zzans
    public final Bundle getExtras() {
        return this.zzdoa.getExtras();
    }

    @Override // com.google.android.gms.internal.ads.zzans
    public final String getHeadline() {
        return this.zzdoa.getHeadline();
    }

    @Override // com.google.android.gms.internal.ads.zzans
    public final List getImages() {
        List<NativeAd.Image> images = this.zzdoa.getImages();
        if (images != null) {
            ArrayList arrayList = new ArrayList();
            for (NativeAd.Image image : images) {
                arrayList.add(new zzaed(image.getDrawable(), image.getUri(), image.getScale(), image.getWidth(), image.getHeight()));
            }
            return arrayList;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzans
    public final boolean getOverrideClickHandling() {
        return this.zzdoa.getOverrideClickHandling();
    }

    @Override // com.google.android.gms.internal.ads.zzans
    public final boolean getOverrideImpressionRecording() {
        return this.zzdoa.getOverrideImpressionRecording();
    }

    @Override // com.google.android.gms.internal.ads.zzans
    public final zzzc getVideoController() {
        if (this.zzdoa.getVideoController() != null) {
            return this.zzdoa.getVideoController().zzdw();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzans
    public final void recordImpression() {
        this.zzdoa.recordImpression();
    }

    @Override // com.google.android.gms.internal.ads.zzans
    public final void zzc(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        this.zzdoa.trackViews((View) ObjectWrapper.unwrap(iObjectWrapper), (HashMap) ObjectWrapper.unwrap(iObjectWrapper2), (HashMap) ObjectWrapper.unwrap(iObjectWrapper3));
    }

    @Override // com.google.android.gms.internal.ads.zzans
    public final zzaej zzto() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzans
    public final IObjectWrapper zztp() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzans
    public final zzaer zztq() {
        NativeAd.Image logo = this.zzdoa.getLogo();
        if (logo != null) {
            return new zzaed(logo.getDrawable(), logo.getUri(), logo.getScale(), logo.getWidth(), logo.getHeight());
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzans
    public final void zzu(IObjectWrapper iObjectWrapper) {
        this.zzdoa.handleClick((View) ObjectWrapper.unwrap(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzans
    public final void zzv(IObjectWrapper iObjectWrapper) {
        this.zzdoa.trackView((View) ObjectWrapper.unwrap(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzans
    public final IObjectWrapper zzvg() {
        View adChoicesContent = this.zzdoa.getAdChoicesContent();
        if (adChoicesContent == null) {
            return null;
        }
        return ObjectWrapper.wrap(adChoicesContent);
    }

    @Override // com.google.android.gms.internal.ads.zzans
    public final IObjectWrapper zzvh() {
        View zzaet = this.zzdoa.zzaet();
        if (zzaet == null) {
            return null;
        }
        return ObjectWrapper.wrap(zzaet);
    }

    @Override // com.google.android.gms.internal.ads.zzans
    public final void zzw(IObjectWrapper iObjectWrapper) {
        this.zzdoa.untrackView((View) ObjectWrapper.unwrap(iObjectWrapper));
    }
}
