package com.google.android.gms.ads.mediation;

import com.google.android.gms.ads.formats.NativeAd;
import java.util.List;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/mediation/NativeAppInstallAdMapper.class */
public class NativeAppInstallAdMapper extends NativeAdMapper {
    public String zzbla;
    public List<NativeAd.Image> zzblb;
    public String zzblc;
    public String zzble;
    public double zzblf;
    public String zzblg;
    public String zzblh;
    public NativeAd.Image zzdjk;

    public final String getBody() {
        return this.zzblc;
    }

    public final String getCallToAction() {
        return this.zzble;
    }

    public final String getHeadline() {
        return this.zzbla;
    }

    public final NativeAd.Image getIcon() {
        return this.zzdjk;
    }

    public final List<NativeAd.Image> getImages() {
        return this.zzblb;
    }

    public final String getPrice() {
        return this.zzblh;
    }

    public final double getStarRating() {
        return this.zzblf;
    }

    public final String getStore() {
        return this.zzblg;
    }

    public final void setBody(String str) {
        this.zzblc = str;
    }

    public final void setCallToAction(String str) {
        this.zzble = str;
    }

    public final void setHeadline(String str) {
        this.zzbla = str;
    }

    public final void setIcon(NativeAd.Image image) {
        this.zzdjk = image;
    }

    public final void setImages(List<NativeAd.Image> list) {
        this.zzblb = list;
    }

    public final void setPrice(String str) {
        this.zzblh = str;
    }

    public final void setStarRating(double d) {
        this.zzblf = d;
    }

    public final void setStore(String str) {
        this.zzblg = str;
    }
}
