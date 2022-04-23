package com.mopub.nativeads;

import android.view.View;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/StaticNativeAd.class */
public abstract class StaticNativeAd extends BaseNativeAd implements ClickInterface, ImpressionInterface {
    private static final int DEFAULT_IMPRESSION_MIN_PERCENTAGE_VIEWED = 50;
    private static final int DEFAULT_IMPRESSION_MIN_TIME_VIEWED_MS = 1000;
    static final double MAX_STAR_RATING = 5.0d;
    static final double MIN_STAR_RATING = 0.0d;
    private String mCallToAction;
    private String mClickDestinationUrl;
    private String mIconImageUrl;
    private boolean mImpressionRecorded;
    private String mMainImageUrl;
    private String mPrivacyInformationIconClickThroughUrl;
    private String mPrivacyInformationIconImageUrl;
    private String mSponsored;
    private Double mStarRating;
    private String mText;
    private String mTitle;
    private int mImpressionMinTimeViewed = 1000;
    private int mImpressionMinPercentageViewed = 50;
    private Integer mImpressionMinVisiblePx = null;
    private final Map<String, Object> mExtras = new HashMap();

    public final void addExtra(String str, Object obj) {
        if (Preconditions.NoThrow.checkNotNull(str, "addExtra key is not allowed to be null")) {
            this.mExtras.put(str, obj);
        }
    }

    @Override // com.mopub.nativeads.BaseNativeAd
    public void clear(View view) {
    }

    @Override // com.mopub.nativeads.BaseNativeAd
    public void destroy() {
        invalidate();
    }

    public final String getCallToAction() {
        return this.mCallToAction;
    }

    public final String getClickDestinationUrl() {
        return this.mClickDestinationUrl;
    }

    public final Object getExtra(String str) {
        if (!Preconditions.NoThrow.checkNotNull(str, "getExtra key is not allowed to be null")) {
            return null;
        }
        return this.mExtras.get(str);
    }

    public final Map<String, Object> getExtras() {
        return new HashMap(this.mExtras);
    }

    public final String getIconImageUrl() {
        return this.mIconImageUrl;
    }

    @Override // com.mopub.nativeads.ImpressionInterface
    public final int getImpressionMinPercentageViewed() {
        return this.mImpressionMinPercentageViewed;
    }

    @Override // com.mopub.nativeads.ImpressionInterface
    public final int getImpressionMinTimeViewed() {
        return this.mImpressionMinTimeViewed;
    }

    @Override // com.mopub.nativeads.ImpressionInterface
    public final Integer getImpressionMinVisiblePx() {
        return this.mImpressionMinVisiblePx;
    }

    public final String getMainImageUrl() {
        return this.mMainImageUrl;
    }

    public final String getPrivacyInformationIconClickThroughUrl() {
        return this.mPrivacyInformationIconClickThroughUrl;
    }

    public String getPrivacyInformationIconImageUrl() {
        return this.mPrivacyInformationIconImageUrl;
    }

    public String getSponsored() {
        return this.mSponsored;
    }

    public final Double getStarRating() {
        return this.mStarRating;
    }

    public final String getText() {
        return this.mText;
    }

    public final String getTitle() {
        return this.mTitle;
    }

    public void handleClick(View view) {
    }

    @Override // com.mopub.nativeads.ImpressionInterface
    public final boolean isImpressionRecorded() {
        return this.mImpressionRecorded;
    }

    @Override // com.mopub.nativeads.BaseNativeAd
    public void prepare(View view) {
    }

    public void recordImpression(View view) {
    }

    public final void setCallToAction(String str) {
        this.mCallToAction = str;
    }

    public final void setClickDestinationUrl(String str) {
        this.mClickDestinationUrl = str;
    }

    public final void setIconImageUrl(String str) {
        this.mIconImageUrl = str;
    }

    public final void setImpressionMinPercentageViewed(int i) {
        if (i < 0 || i > 100) {
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Ignoring impressionMinTimeViewed that's not a percent [0, 100]: ".concat(String.valueOf(i)));
        } else {
            this.mImpressionMinPercentageViewed = i;
        }
    }

    public final void setImpressionMinTimeViewed(int i) {
        if (i > 0) {
            this.mImpressionMinTimeViewed = i;
        } else {
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Ignoring non-positive impressionMinTimeViewed: ".concat(String.valueOf(i)));
        }
    }

    public final void setImpressionMinVisiblePx(Integer num) {
        if (num == null || num.intValue() <= 0) {
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Ignoring null or non-positive impressionMinVisiblePx: ".concat(String.valueOf(num)));
        } else {
            this.mImpressionMinVisiblePx = num;
        }
    }

    @Override // com.mopub.nativeads.ImpressionInterface
    public final void setImpressionRecorded() {
        this.mImpressionRecorded = true;
    }

    public final void setMainImageUrl(String str) {
        this.mMainImageUrl = str;
    }

    public final void setPrivacyInformationIconClickThroughUrl(String str) {
        this.mPrivacyInformationIconClickThroughUrl = str;
    }

    public final void setPrivacyInformationIconImageUrl(String str) {
        this.mPrivacyInformationIconImageUrl = str;
    }

    public final void setSponsored(String str) {
        this.mSponsored = str;
    }

    public final void setStarRating(Double d2) {
        if (d2 == null) {
            this.mStarRating = null;
        } else if (d2.doubleValue() < MIN_STAR_RATING || d2.doubleValue() > MAX_STAR_RATING) {
            MoPubLog.AdLogEvent adLogEvent = MoPubLog.AdLogEvent.CUSTOM;
            MoPubLog.log(adLogEvent, "Ignoring attempt to set invalid star rating (" + d2 + "). Must be between 0.0 and 5.0.");
        } else {
            this.mStarRating = d2;
        }
    }

    public final void setText(String str) {
        this.mText = str;
    }

    public final void setTitle(String str) {
        this.mTitle = str;
    }
}
