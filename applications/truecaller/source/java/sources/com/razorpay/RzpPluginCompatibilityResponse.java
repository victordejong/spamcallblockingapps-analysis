package com.razorpay;

import proguard.annotation.Keep;
import proguard.annotation.KeepClassMembers;
@Keep
@KeepClassMembers
/* loaded from: classes3-dex2jar.jar:com/razorpay/RzpPluginCompatibilityResponse.class */
public class RzpPluginCompatibilityResponse {
    private String errorMessage;
    private boolean isCompatible;

    public RzpPluginCompatibilityResponse(boolean z, String str) {
        this.isCompatible = z;
        this.errorMessage = str;
    }

    public String getErrorMessage() {
        String str = this.errorMessage;
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        return str2;
    }

    public boolean isCompatible() {
        return this.isCompatible;
    }
}
