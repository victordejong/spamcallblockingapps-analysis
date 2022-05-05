package com.tmobile.services.nameid.model;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/BasePayload.class */
public abstract class BasePayload implements Serializable {
    @SerializedName("devtz")
    @Expose
    private String mDeviceTimeZone;
    @SerializedName("devts")
    @Expose
    private Long mDeviceTimestamp;
    @SerializedName("devds")
    @Expose
    private Boolean mIsDstActive;

    public void setDeviceTimeZone(String str) {
        this.mDeviceTimeZone = str;
    }

    public void setDeviceTimestamp(Long l) {
        this.mDeviceTimestamp = l;
    }

    public void setIsDstActive(Boolean bool) {
        this.mIsDstActive = bool;
    }
}
