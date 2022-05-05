package com.facebook.ads;

import androidx.annotation.Keep;
import java.io.Serializable;
@Keep
/* loaded from: classes-dex2jar.jar:com/facebook/ads/RewardData.class */
public class RewardData implements Serializable {
    public static final long serialVersionUID = -6264212909606201882L;
    public String mCurrency;
    public int mQuantity;
    public String mUserID;

    public RewardData(String str, String str2) {
        this(str, str2, 0);
    }

    public RewardData(String str, String str2, int i) {
        this.mUserID = str;
        this.mCurrency = str2;
        this.mQuantity = i;
    }

    public String getCurrency() {
        return this.mCurrency;
    }

    public int getQuantity() {
        return this.mQuantity;
    }

    public String getUserID() {
        return this.mUserID;
    }
}
