package com.google.android.gms.ads.mediation;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.NativeAd;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/UnifiedNativeAdMapper.class */
public class UnifiedNativeAdMapper {

    /* renamed from: a */
    public String f22880a;

    /* renamed from: b */
    public List<NativeAd.Image> f22881b;

    /* renamed from: c */
    public String f22882c;

    /* renamed from: d */
    public NativeAd.Image f22883d;

    /* renamed from: e */
    public String f22884e;

    /* renamed from: f */
    public String f22885f;

    /* renamed from: g */
    public Double f22886g;

    /* renamed from: h */
    public String f22887h;

    /* renamed from: i */
    public String f22888i;

    /* renamed from: j */
    public VideoController f22889j;

    /* renamed from: k */
    public boolean f22890k;

    /* renamed from: l */
    public View f22891l;

    /* renamed from: m */
    public View f22892m;

    /* renamed from: n */
    public Object f22893n;

    /* renamed from: o */
    public Bundle f22894o = new Bundle();

    /* renamed from: p */
    public boolean f22895p;

    /* renamed from: q */
    public boolean f22896q;

    /* renamed from: r */
    public float f22897r;

    public View getAdChoicesContent() {
        return this.f22891l;
    }

    public final String getAdvertiser() {
        return this.f22885f;
    }

    public final String getBody() {
        return this.f22882c;
    }

    public final String getCallToAction() {
        return this.f22884e;
    }

    public float getCurrentTime() {
        return 0.0f;
    }

    public float getDuration() {
        return 0.0f;
    }

    public final Bundle getExtras() {
        return this.f22894o;
    }

    public final String getHeadline() {
        return this.f22880a;
    }

    public final NativeAd.Image getIcon() {
        return this.f22883d;
    }

    public final List<NativeAd.Image> getImages() {
        return this.f22881b;
    }

    public float getMediaContentAspectRatio() {
        return this.f22897r;
    }

    public final boolean getOverrideClickHandling() {
        return this.f22896q;
    }

    public final boolean getOverrideImpressionRecording() {
        return this.f22895p;
    }

    public final String getPrice() {
        return this.f22888i;
    }

    public final Double getStarRating() {
        return this.f22886g;
    }

    public final String getStore() {
        return this.f22887h;
    }

    public final VideoController getVideoController() {
        return this.f22889j;
    }

    public void handleClick(View view) {
    }

    public boolean hasVideoContent() {
        return this.f22890k;
    }

    public void recordImpression() {
    }

    public void setAdChoicesContent(View view) {
        this.f22891l = view;
    }

    public final void setAdvertiser(String str) {
        this.f22885f = str;
    }

    public final void setBody(String str) {
        this.f22882c = str;
    }

    public final void setCallToAction(String str) {
        this.f22884e = str;
    }

    public final void setExtras(Bundle bundle) {
        this.f22894o = bundle;
    }

    public void setHasVideoContent(boolean z) {
        this.f22890k = z;
    }

    public final void setHeadline(String str) {
        this.f22880a = str;
    }

    public final void setIcon(NativeAd.Image image) {
        this.f22883d = image;
    }

    public final void setImages(List<NativeAd.Image> list) {
        this.f22881b = list;
    }

    public void setMediaContentAspectRatio(float f) {
        this.f22897r = f;
    }

    public void setMediaView(View view) {
        this.f22892m = view;
    }

    public final void setOverrideClickHandling(boolean z) {
        this.f22896q = z;
    }

    public final void setOverrideImpressionRecording(boolean z) {
        this.f22895p = z;
    }

    public final void setPrice(String str) {
        this.f22888i = str;
    }

    public final void setStarRating(Double d) {
        this.f22886g = d;
    }

    public final void setStore(String str) {
        this.f22887h = str;
    }

    public void trackViews(View view, Map<String, View> map, Map<String, View> map2) {
    }

    public void untrackView(View view) {
    }

    public final void zza(VideoController videoController) {
        this.f22889j = videoController;
    }

    public final View zzadh() {
        return this.f22892m;
    }

    public final Object zzjx() {
        return this.f22893n;
    }

    public final void zzn(Object obj) {
        this.f22893n = obj;
    }
}
