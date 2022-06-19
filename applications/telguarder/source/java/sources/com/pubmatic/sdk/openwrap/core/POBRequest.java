package com.pubmatic.sdk.openwrap.core;

import com.pubmatic.sdk.common.base.POBAdRequest;
import com.pubmatic.sdk.common.utility.POBUtils;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/core/POBRequest.class */
public class POBRequest implements POBAdRequest {

    /* renamed from: a */
    private final POBImpression[] f739a;

    /* renamed from: b */
    private final int f740b;

    /* renamed from: c */
    private final String f741c;

    /* renamed from: d */
    private int f742d = 5;

    /* renamed from: e */
    private boolean f743e;

    /* renamed from: f */
    private Integer f744f;

    /* renamed from: g */
    private boolean f745g;

    /* renamed from: h */
    private Boolean f746h;

    /* renamed from: i */
    private String f747i;

    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/core/POBRequest$API.class */
    public enum API {
        VPAID1(1),
        VPAID2(2),
        MRAID1(3),
        ORMMA(4),
        MRAID2(5),
        MRAID3(6),
        OMSDK(7);
        

        /* renamed from: a */
        private final int f749a;

        API(int i) {
            this.f749a = i;
        }

        public int getValue() {
            return this.f749a;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/core/POBRequest$AdPosition.class */
    public enum AdPosition {
        UNKNOWN(0),
        ABOVE_THE_FOLD(1),
        BELOW_THE_FOLD(3),
        HEADER(4),
        FOOTER(5),
        SIDEBAR(6),
        FULL_SCREEN(7);
        

        /* renamed from: a */
        private final int f751a;

        AdPosition(int i) {
            this.f751a = i;
        }

        public int getValue() {
            return this.f751a;
        }
    }

    private POBRequest(String str, int i, POBImpression... pOBImpressionArr) {
        this.f741c = str;
        this.f740b = i;
        this.f739a = pOBImpressionArr;
    }

    public static POBRequest createInstance(String str, int i, POBImpression... pOBImpressionArr) {
        if (POBUtils.isNullOrEmpty(str) || POBUtils.isNull(pOBImpressionArr) || pOBImpressionArr.length <= 0) {
            return null;
        }
        return new POBRequest(str, i, pOBImpressionArr);
    }

    /* renamed from: a */
    public boolean m839a() {
        return this.f743e;
    }

    public void enableBidSummary(boolean z) {
        this.f743e = z;
    }

    public void enableDebugState(boolean z) {
        this.f745g = z;
    }

    public void enableTestMode(boolean z) {
        this.f746h = Boolean.valueOf(z);
    }

    public String getAdServerUrl() {
        return this.f747i;
    }

    public String getAdUnitId() {
        POBImpression[] impressions = getImpressions();
        return (impressions == null || impressions.length <= 0) ? "" : impressions[0].getAdUnitId();
    }

    public POBImpression[] getImpressions() {
        POBImpression[] pOBImpressionArr = this.f739a;
        if (pOBImpressionArr == null || pOBImpressionArr.length <= 0) {
            return null;
        }
        return (POBImpression[]) Arrays.copyOf(pOBImpressionArr, pOBImpressionArr.length);
    }

    public int getNetworkTimeout() {
        return this.f742d;
    }

    public int getProfileId() {
        return this.f740b;
    }

    public String getPubId() {
        return this.f741c;
    }

    public Boolean getTestMode() {
        return this.f746h;
    }

    public Integer getVersionId() {
        return this.f744f;
    }

    public boolean isDebugStateEnabled() {
        return this.f745g;
    }

    public void setAdServerUrl(String str) {
        this.f747i = str;
    }

    public void setNetworkTimeout(int i) {
        if (i > 0) {
            this.f742d = i;
        }
    }

    public void setVersionId(int i) {
        this.f744f = Integer.valueOf(i);
    }
}
