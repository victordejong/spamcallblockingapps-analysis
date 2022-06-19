package com.google.android.gms.ads.mediation;

import com.google.android.gms.ads.formats.NativeAd;
import java.util.List;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/NativeAppInstallAdMapper.class */
public class NativeAppInstallAdMapper extends NativeAdMapper {
    private String zzdvw;
    private String zzeuu;
    private List<NativeAd.Image> zzeuv;
    private NativeAd.Image zzeuw;
    private String zzeux;
    private double zzeuy;
    private String zzeuz;
    private String zzeva;

    public final String getBody() {
        return this.zzdvw;
    }

    public final String getCallToAction() {
        return this.zzeux;
    }

    public final String getHeadline() {
        return this.zzeuu;
    }

    public final NativeAd.Image getIcon() {
        return this.zzeuw;
    }

    public final List<NativeAd.Image> getImages() {
        return this.zzeuv;
    }

    public final String getPrice() {
        return this.zzeva;
    }

    public final double getStarRating() {
        return this.zzeuy;
    }

    public final String getStore() {
        return this.zzeuz;
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

    public final void setIcon(NativeAd.Image image) {
        this.zzeuw = image;
    }

    public final void setImages(List<NativeAd.Image> list) {
        this.zzeuv = list;
    }

    public final void setPrice(String str) {
        this.zzeva = str;
    }

    public final void setStarRating(double d) {
        this.zzeuy = d;
    }

    public final void setStore(String str) {
        this.zzeuz = str;
    }
}
