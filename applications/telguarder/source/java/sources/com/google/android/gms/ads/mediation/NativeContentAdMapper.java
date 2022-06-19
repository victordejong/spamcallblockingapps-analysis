package com.google.android.gms.ads.mediation;

import com.google.android.gms.ads.formats.NativeAd;
import java.util.List;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/NativeContentAdMapper.class */
public class NativeContentAdMapper extends NativeAdMapper {
    private String zzdvw;
    private String zzeuu;
    private List<NativeAd.Image> zzeuv;
    private String zzeux;
    private NativeAd.Image zzevd;
    private String zzeve;

    public final String getAdvertiser() {
        return this.zzeve;
    }

    public final String getBody() {
        return this.zzdvw;
    }

    public final String getCallToAction() {
        return this.zzeux;
    }

    public final String getHeadline() {
        return this.zzeuu;
    }

    public final List<NativeAd.Image> getImages() {
        return this.zzeuv;
    }

    public final NativeAd.Image getLogo() {
        return this.zzevd;
    }

    public final void setAdvertiser(String str) {
        this.zzeve = str;
    }

    public final void setBody(String str) {
        this.zzdvw = str;
    }

    public final void setCallToAction(String str) {
        this.zzeux = str;
    }

    public final void setHeadline(String str) {
        this.zzeuu = str;
    }

    public final void setImages(List<NativeAd.Image> list) {
        this.zzeuv = list;
    }

    public final void setLogo(NativeAd.Image image) {
        this.zzevd = image;
    }
}
