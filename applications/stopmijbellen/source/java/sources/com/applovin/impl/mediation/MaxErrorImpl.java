package com.applovin.impl.mediation;

import android.support.p012v4.media.C0082b;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.MaxAdWaterfallInfo;
import com.applovin.mediation.MaxError;
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/MaxErrorImpl.class */
public class MaxErrorImpl implements MaxError {
    private String adLoadFailureInfo;
    private final int errorCode;
    private final String errorMessage;
    private String loadTag;
    private MaxAdWaterfallInfo waterfall;

    public MaxErrorImpl(int i) {
        this(i, "");
    }

    public MaxErrorImpl(int i, String str) {
        this.errorCode = i;
        this.errorMessage = StringUtils.emptyIfNull(str);
    }

    public MaxErrorImpl(String str) {
        this(-1, str);
    }

    @Override // com.applovin.mediation.MaxError
    public String getAdLoadFailureInfo() {
        return this.adLoadFailureInfo;
    }

    @Override // com.applovin.mediation.MaxError
    public int getCode() {
        return this.errorCode;
    }

    public int getErrorCode() {
        return this.errorCode;
    }

    public String getErrorMessage() {
        return this.errorMessage;
    }

    public String getLoadTag() {
        return this.loadTag;
    }

    @Override // com.applovin.mediation.MaxError
    public String getMessage() {
        return this.errorMessage;
    }

    @Override // com.applovin.mediation.MaxError
    public MaxAdWaterfallInfo getWaterfall() {
        return this.waterfall;
    }

    public void setAdLoadFailureInfo(String str) {
        this.adLoadFailureInfo = str;
    }

    public void setLoadTag(String str) {
        this.loadTag = str;
    }

    public void setWaterfall(MaxAdWaterfallInfo maxAdWaterfallInfo) {
        this.waterfall = maxAdWaterfallInfo;
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("MaxError{code=");
        m8752j.append(getCode());
        m8752j.append(", message='");
        m8752j.append(getMessage());
        m8752j.append('\'');
        m8752j.append('}');
        return m8752j.toString();
    }
}
