package com.google.android.gms.ads.mediation;

import com.google.android.gms.ads.formats.NativeAd;
import java.util.List;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/mediation/NativeContentAdMapper.class */
public class NativeContentAdMapper extends NativeAdMapper {
    private String zzdxg;
    private String zzexa;
    private List<NativeAd.Image> zzexb;
    private String zzexd;
    private NativeAd.Image zzexj;
    private String zzexk;

    public final String getAdvertiser() {
        return this.zzexk;
    }

    public final String getBody() {
        return this.zzdxg;
    }

    public final String getCallToAction() {
        return this.zzexd;
    }

    public final String getHeadline() {
        return this.zzexa;
    }

    public final List<NativeAd.Image> getImages() {
        return this.zzexb;
    }

    public final NativeAd.Image getLogo() {
        return this.zzexj;
    }

    public final void setAdvertiser(String str) {
        this.zzexk = str;
    }

    public final void setBody(String str) {
        this.zzdxg = str;
    }

    public final void setCallToAction(String str) {
        this.zzexd = str;
    }

    public final void setHeadline(String str) {
        this.zzexa = str;
    }

    public final void setImages(List<NativeAd.Image> list) {
        this.zzexb = list;
    }

    public final void setLogo(NativeAd.Image image) {
        this.zzexj = image;
    }
}
