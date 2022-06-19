package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbwy.class */
public final class zzbwy extends zzbvu {
    private final UnifiedNativeAdMapper zza;

    public zzbwy(UnifiedNativeAdMapper unifiedNativeAdMapper) {
        this.zza = unifiedNativeAdMapper;
    }

    @Override // com.google.android.gms.internal.ads.zzbvv
    public final float zzA() {
        return this.zza.getDuration();
    }

    @Override // com.google.android.gms.internal.ads.zzbvv
    public final float zzB() {
        return this.zza.getCurrentTime();
    }

    @Override // com.google.android.gms.internal.ads.zzbvv
    public final String zze() {
        return this.zza.getHeadline();
    }

    @Override // com.google.android.gms.internal.ads.zzbvv
    public final List zzf() {
        List<NativeAd.Image> images = this.zza.getImages();
        ArrayList arrayList = new ArrayList();
        if (images != null) {
            for (NativeAd.Image image : images) {
                arrayList.add(new zzblr(image.getDrawable(), image.getUri(), image.getScale(), image.zza(), image.zzb()));
            }
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzbvv
    public final String zzg() {
        return this.zza.getBody();
    }

    @Override // com.google.android.gms.internal.ads.zzbvv
    public final zzbmh zzh() {
        NativeAd.Image icon = this.zza.getIcon();
        if (icon != null) {
            return new zzblr(icon.getDrawable(), icon.getUri(), icon.getScale(), icon.zza(), icon.zzb());
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbvv
    public final String zzi() {
        return this.zza.getCallToAction();
    }

    @Override // com.google.android.gms.internal.ads.zzbvv
    public final String zzj() {
        return this.zza.getAdvertiser();
    }

    @Override // com.google.android.gms.internal.ads.zzbvv
    public final double zzk() {
        if (this.zza.getStarRating() != null) {
            return this.zza.getStarRating().doubleValue();
        }
        return -1.0d;
    }

    @Override // com.google.android.gms.internal.ads.zzbvv
    public final String zzl() {
        return this.zza.getStore();
    }

    @Override // com.google.android.gms.internal.ads.zzbvv
    public final String zzm() {
        return this.zza.getPrice();
    }

    @Override // com.google.android.gms.internal.ads.zzbvv
    public final zzbhc zzn() {
        if (this.zza.zzc() != null) {
            return this.zza.zzc().zzb();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbvv
    public final zzblz zzo() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbvv
    public final IObjectWrapper zzp() {
        View adChoicesContent = this.zza.getAdChoicesContent();
        if (adChoicesContent == null) {
            return null;
        }
        return new ObjectWrapper(adChoicesContent);
    }

    @Override // com.google.android.gms.internal.ads.zzbvv
    public final IObjectWrapper zzq() {
        View zzd = this.zza.zzd();
        if (zzd == null) {
            return null;
        }
        return new ObjectWrapper(zzd);
    }

    @Override // com.google.android.gms.internal.ads.zzbvv
    public final IObjectWrapper zzr() {
        Object zze = this.zza.zze();
        if (zze == null) {
            return null;
        }
        return new ObjectWrapper(zze);
    }

    @Override // com.google.android.gms.internal.ads.zzbvv
    public final Bundle zzs() {
        return this.zza.getExtras();
    }

    @Override // com.google.android.gms.internal.ads.zzbvv
    public final boolean zzt() {
        return this.zza.getOverrideImpressionRecording();
    }

    @Override // com.google.android.gms.internal.ads.zzbvv
    public final boolean zzu() {
        return this.zza.getOverrideClickHandling();
    }

    @Override // com.google.android.gms.internal.ads.zzbvv
    public final void zzv() {
        this.zza.recordImpression();
    }

    @Override // com.google.android.gms.internal.ads.zzbvv
    public final void zzw(IObjectWrapper iObjectWrapper) {
        this.zza.handleClick((View) ObjectWrapper.m38746B1(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzbvv
    public final void zzx(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        this.zza.trackViews((View) ObjectWrapper.m38746B1(iObjectWrapper), (HashMap) ObjectWrapper.m38746B1(iObjectWrapper2), (HashMap) ObjectWrapper.m38746B1(iObjectWrapper3));
    }

    @Override // com.google.android.gms.internal.ads.zzbvv
    public final void zzy(IObjectWrapper iObjectWrapper) {
        this.zza.untrackView((View) ObjectWrapper.m38746B1(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzbvv
    public final float zzz() {
        return this.zza.getMediaContentAspectRatio();
    }
}
