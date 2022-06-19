package com.mopub.nativeads;

import android.view.View;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/StaticNativeAd.class */
public abstract class StaticNativeAd extends BaseNativeAd implements ImpressionInterface, ClickInterface {

    /* renamed from: e */
    public String f5269e;

    /* renamed from: f */
    public String f5270f;

    /* renamed from: g */
    public String f5271g;

    /* renamed from: h */
    public String f5272h;

    /* renamed from: i */
    public String f5273i;

    /* renamed from: j */
    public String f5274j;

    /* renamed from: k */
    public Double f5275k;

    /* renamed from: l */
    public String f5276l;

    /* renamed from: m */
    public String f5277m;

    /* renamed from: n */
    public String f5278n;

    /* renamed from: o */
    public boolean f5279o;

    /* renamed from: p */
    public int f5280p = 1000;

    /* renamed from: q */
    public int f5281q = 50;

    /* renamed from: r */
    public Integer f5282r = null;

    /* renamed from: s */
    public final Map<String, Object> f5283s = new HashMap();

    public final void addExtra(String str, Object obj) {
        if (!Preconditions.NoThrow.checkNotNull(str, "addExtra key is not allowed to be null")) {
            return;
        }
        this.f5283s.put(str, obj);
    }

    @Override // com.mopub.nativeads.BaseNativeAd
    public void clear(View view) {
    }

    @Override // com.mopub.nativeads.BaseNativeAd
    public void destroy() {
        invalidate();
    }

    public final String getCallToAction() {
        return this.f5272h;
    }

    public final String getClickDestinationUrl() {
        return this.f5271g;
    }

    public final Object getExtra(String str) {
        if (!Preconditions.NoThrow.checkNotNull(str, "getExtra key is not allowed to be null")) {
            return null;
        }
        return this.f5283s.get(str);
    }

    public final Map<String, Object> getExtras() {
        return new HashMap(this.f5283s);
    }

    public final String getIconImageUrl() {
        return this.f5270f;
    }

    @Override // com.mopub.nativeads.ImpressionInterface
    public final int getImpressionMinPercentageViewed() {
        return this.f5281q;
    }

    @Override // com.mopub.nativeads.ImpressionInterface
    public final int getImpressionMinTimeViewed() {
        return this.f5280p;
    }

    @Override // com.mopub.nativeads.ImpressionInterface
    public final Integer getImpressionMinVisiblePx() {
        return this.f5282r;
    }

    public final String getMainImageUrl() {
        return this.f5269e;
    }

    public final String getPrivacyInformationIconClickThroughUrl() {
        return this.f5276l;
    }

    public String getPrivacyInformationIconImageUrl() {
        return this.f5277m;
    }

    public String getSponsored() {
        return this.f5278n;
    }

    public final Double getStarRating() {
        return this.f5275k;
    }

    public final String getText() {
        return this.f5274j;
    }

    public final String getTitle() {
        return this.f5273i;
    }

    public void handleClick(View view) {
    }

    @Override // com.mopub.nativeads.ImpressionInterface
    public final boolean isImpressionRecorded() {
        return this.f5279o;
    }

    @Override // com.mopub.nativeads.BaseNativeAd
    public void prepare(View view) {
    }

    public void recordImpression(View view) {
    }

    public final void setCallToAction(String str) {
        this.f5272h = str;
    }

    public final void setClickDestinationUrl(String str) {
        this.f5271g = str;
    }

    public final void setIconImageUrl(String str) {
        this.f5270f = str;
    }

    public final void setImpressionMinPercentageViewed(int i) {
        if (i >= 0 && i <= 100) {
            this.f5281q = i;
            return;
        }
        MoPubLog.AdLogEvent adLogEvent = MoPubLog.AdLogEvent.CUSTOM;
        MoPubLog.log(adLogEvent, "Ignoring impressionMinTimeViewed that's not a percent [0, 100]: " + i);
    }

    public final void setImpressionMinTimeViewed(int i) {
        if (i > 0) {
            this.f5280p = i;
            return;
        }
        MoPubLog.AdLogEvent adLogEvent = MoPubLog.AdLogEvent.CUSTOM;
        MoPubLog.log(adLogEvent, "Ignoring non-positive impressionMinTimeViewed: " + i);
    }

    public final void setImpressionMinVisiblePx(Integer num) {
        if (num != null && num.intValue() > 0) {
            this.f5282r = num;
            return;
        }
        MoPubLog.AdLogEvent adLogEvent = MoPubLog.AdLogEvent.CUSTOM;
        MoPubLog.log(adLogEvent, "Ignoring null or non-positive impressionMinVisiblePx: " + num);
    }

    @Override // com.mopub.nativeads.ImpressionInterface
    public final void setImpressionRecorded() {
        this.f5279o = true;
    }

    public final void setMainImageUrl(String str) {
        this.f5269e = str;
    }

    public final void setPrivacyInformationIconClickThroughUrl(String str) {
        this.f5276l = str;
    }

    public final void setPrivacyInformationIconImageUrl(String str) {
        this.f5277m = str;
    }

    public final void setSponsored(String str) {
        this.f5278n = str;
    }

    public final void setStarRating(Double d) {
        if (d == null) {
            d = null;
        } else if (d.doubleValue() < 0.0d || d.doubleValue() > 5.0d) {
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Ignoring attempt to set invalid star rating (" + d + "). Must be between 0.0 and 5.0.");
            return;
        }
        this.f5275k = d;
    }

    public final void setText(String str) {
        this.f5274j = str;
    }

    public final void setTitle(String str) {
        this.f5273i = str;
    }
}
