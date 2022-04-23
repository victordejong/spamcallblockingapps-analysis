package com.aotter.net.trek.model;

import androidx.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/model/VideoConfig.class */
public class VideoConfig {
    @Nullable
    public String mDiskMediaFileUrl;
    @Nullable
    public String mNetworkMediaFileUrl;
    @Nullable
    public String uID;

    @Nullable
    public String getDiskMediaFileUrl() {
        return this.mDiskMediaFileUrl;
    }

    @Nullable
    public String getNetworkMediaFileUrl() {
        return this.mNetworkMediaFileUrl;
    }

    @Nullable
    public String getuID() {
        return this.uID;
    }

    public void setDiskMediaFileUrl(@Nullable String str) {
        this.mDiskMediaFileUrl = str;
    }

    public void setNetworkMediaFileUrl(@Nullable String str) {
        this.mNetworkMediaFileUrl = str;
    }

    public void setuID(@Nullable String str) {
        this.uID = str;
    }
}
