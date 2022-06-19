package com.millennialmedia.internal.adadapters;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adadapters/MediatedAdAdapter.class */
public interface MediatedAdAdapter {

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adadapters/MediatedAdAdapter$MediationInfo.class */
    public static class MediationInfo {
        public String networkId;
        public String siteId;
        public String spaceId;

        public MediationInfo(String str, String str2, String str3) {
            this.networkId = str;
            this.siteId = str2;
            this.spaceId = str3;
        }
    }

    void setMediationInfo(MediationInfo mediationInfo);
}
