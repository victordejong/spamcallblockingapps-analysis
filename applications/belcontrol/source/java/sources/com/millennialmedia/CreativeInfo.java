package com.millennialmedia;

import android.text.TextUtils;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/CreativeInfo.class */
public final class CreativeInfo {
    private String creativeId;
    private String demandSource;

    public CreativeInfo(String str, String str2) {
        setCreativeId(str);
        setDemandSource(str2);
    }

    private void setCreativeId(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.creativeId = str;
        }
    }

    private void setDemandSource(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.demandSource = str;
        }
    }

    public String getCreativeId() {
        return this.creativeId;
    }

    public String getDemandSource() {
        return this.demandSource;
    }

    public String toString() {
        return "CreativeInfo{ creativeId='" + this.creativeId + "', demandSource='" + this.demandSource + "'}";
    }
}
