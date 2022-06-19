package io.bidmachine;

import com.explorestack.protobuf.Struct;
import com.explorestack.protobuf.Value;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.bidmachine.core.Logger;
import io.bidmachine.core.Utils;
import io.bidmachine.models.ISessionAdParams;
import io.bidmachine.models.RequestParams;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/SessionAdParams.class */
public class SessionAdParams extends RequestParams<SessionAdParams> implements ISessionAdParams<SessionAdParams> {
    private int clickCount;
    private Float clickRate;
    private int completedVideosCount;
    private Float completionRate;
    private Integer impressionCount;
    private Boolean isUserClickedOnLastAd;
    private String lastAdDomain;
    private String lastBundle;
    private Integer sessionDuration;
    private int videoImpressionCount;

    private void updateClickRate() {
        Integer num = this.impressionCount;
        if (num == null || num.intValue() == 0) {
            return;
        }
        this.clickRate = Float.valueOf((this.clickCount / this.impressionCount.intValue()) * 100.0f);
    }

    private void updateCompletionRate() {
        int i = this.videoImpressionCount;
        if (i == 0) {
            return;
        }
        this.completionRate = Float.valueOf((this.completedVideosCount / i) * 100.0f);
    }

    public void addClick() {
        this.clickCount++;
        updateClickRate();
        this.isUserClickedOnLastAd = Boolean.TRUE;
    }

    public void addCompletedVideo() {
        this.completedVideosCount++;
        updateCompletionRate();
    }

    public void addImpression() {
        Integer num = this.impressionCount;
        if (num == null) {
            this.impressionCount = 1;
        } else {
            this.impressionCount = Integer.valueOf(num.intValue() + 1);
        }
        updateClickRate();
    }

    public void addVideoImpression() {
        this.videoImpressionCount++;
        updateCompletionRate();
    }

    public void clear() {
        this.sessionDuration = null;
        this.impressionCount = null;
        this.clickRate = null;
        this.isUserClickedOnLastAd = null;
        this.completionRate = null;
        this.lastBundle = null;
        this.lastAdDomain = null;
        this.clickCount = 0;
        this.videoImpressionCount = 0;
        this.completedVideosCount = 0;
    }

    public void fillUserExtension(Struct.Builder builder) {
        if (this.sessionDuration != null) {
            builder.putFields("sessionduration", Value.newBuilder().setNumberValue(this.sessionDuration.intValue()).build());
        }
        if (this.impressionCount != null) {
            builder.putFields("impdepth", Value.newBuilder().setNumberValue(this.impressionCount.intValue()).build());
        }
        if (this.clickRate != null) {
            builder.putFields("clickrate", Value.newBuilder().setNumberValue(this.clickRate.floatValue()).build());
        }
        if (this.isUserClickedOnLastAd != null) {
            builder.putFields("lastclick", Value.newBuilder().setNumberValue((this.isUserClickedOnLastAd.booleanValue() ? 4607182418800017408 : null) == 1 ? 1.0d : 0.0d).build());
        }
        if (this.completionRate != null) {
            builder.putFields("completionrate", Value.newBuilder().setNumberValue(this.completionRate.floatValue()).build());
        }
        if (this.lastBundle != null) {
            builder.putFields("lastbundle", Value.newBuilder().setStringValue(this.lastBundle).build());
        }
        if (this.lastAdDomain != null) {
            builder.putFields("lastadomain", Value.newBuilder().setStringValue(this.lastAdDomain).build());
        }
    }

    int getClickCount() {
        return this.clickCount;
    }

    Float getClickRate() {
        return this.clickRate;
    }

    public int getCompletedVideosCount() {
        return this.completedVideosCount;
    }

    Float getCompletionRate() {
        return this.completionRate;
    }

    Integer getImpressionCount() {
        return this.impressionCount;
    }

    public String getLastAdDomain() {
        return this.lastAdDomain;
    }

    public String getLastBundle() {
        return this.lastBundle;
    }

    Integer getSessionDuration() {
        return this.sessionDuration;
    }

    Boolean getUserClickedOnLastAd() {
        return this.isUserClickedOnLastAd;
    }

    public int getVideoImpressionCount() {
        return this.videoImpressionCount;
    }

    public void merge(SessionAdParams sessionAdParams) {
        this.sessionDuration = (Integer) Utils.oneOf(this.sessionDuration, sessionAdParams.sessionDuration);
        this.impressionCount = (Integer) Utils.oneOf(this.impressionCount, sessionAdParams.impressionCount);
        this.clickRate = (Float) Utils.oneOf(this.clickRate, sessionAdParams.clickRate);
        this.isUserClickedOnLastAd = (Boolean) Utils.oneOf(this.isUserClickedOnLastAd, sessionAdParams.isUserClickedOnLastAd);
        this.completionRate = (Float) Utils.oneOf(this.completionRate, sessionAdParams.completionRate);
    }

    @Override // io.bidmachine.models.ISessionAdParams
    public SessionAdParams setClickRate(Float f) {
        if (f.floatValue() < BitmapDescriptorFactory.HUE_RED || f.floatValue() > 100.0f) {
            Logger.log("click rate be between 0 and 100");
        } else {
            this.clickRate = f;
        }
        return this;
    }

    @Override // io.bidmachine.models.ISessionAdParams
    public SessionAdParams setCompletionRate(Float f) {
        if (f.floatValue() < BitmapDescriptorFactory.HUE_RED || f.floatValue() > 100.0f) {
            Logger.log("click rate be between 0 and 100");
        } else {
            this.completionRate = f;
        }
        return this;
    }

    @Override // io.bidmachine.models.ISessionAdParams
    public SessionAdParams setImpressionCount(Integer num) {
        if (num.intValue() >= 0) {
            this.impressionCount = num;
        } else {
            Logger.log("impression count shouldn't be negative");
        }
        return this;
    }

    @Override // io.bidmachine.models.ISessionAdParams
    public SessionAdParams setIsUserClickedOnLastAd(Boolean bool) {
        this.isUserClickedOnLastAd = bool;
        return this;
    }

    public void setLastAdDomain(String str) {
        this.lastAdDomain = str;
    }

    public void setLastBundle(String str) {
        this.lastBundle = str;
    }

    @Override // io.bidmachine.models.ISessionAdParams
    public SessionAdParams setSessionDuration(Integer num) {
        if (num.intValue() >= 0) {
            this.sessionDuration = num;
        } else {
            Logger.log("session duration shouldn't be negative");
        }
        return this;
    }
}
