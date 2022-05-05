package com.privacystar.core.service.network.model.component;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/component/BasePayload.class */
public abstract class BasePayload implements Serializable {
    @SerializedName("devtz")
    @Expose
    protected String mDeviceTimeZone;
    @SerializedName("devts")
    @Expose
    protected Long mDeviceTimestamp;
    @SerializedName("devds")
    @Expose
    protected Boolean mIsDstActive;

    public String getDeviceTimeZone() {
        return this.mDeviceTimeZone;
    }

    public Long getDeviceTimestamp() {
        return this.mDeviceTimestamp;
    }

    public Boolean getIsDstActive() {
        return this.mIsDstActive;
    }

    public void setDeviceTimeZone(String str) {
        this.mDeviceTimeZone = str;
    }

    public void setDeviceTimestamp(Long l) {
        this.mDeviceTimestamp = l;
    }

    public void setIsDstActive(Boolean bool) {
        this.mIsDstActive = bool;
    }

    public BasePayload withDevds(Boolean bool) {
        this.mIsDstActive = bool;
        return this;
    }

    public BasePayload withDevts(Long l) {
        this.mDeviceTimestamp = l;
        return this;
    }

    public BasePayload withDevtz(String str) {
        this.mDeviceTimeZone = str;
        return this;
    }
}
