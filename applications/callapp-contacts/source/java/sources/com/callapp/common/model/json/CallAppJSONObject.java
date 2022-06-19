package com.callapp.common.model.json;

import com.fasterxml.jackson.annotation.JsonIgnore;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/CallAppJSONObject.class */
public class CallAppJSONObject implements Serializable {
    @JsonIgnore
    private boolean fromDevice;
    @JsonIgnore
    private final boolean isFromUserProfile;

    public CallAppJSONObject() {
        this.isFromUserProfile = false;
    }

    public CallAppJSONObject(boolean z) {
        this.isFromUserProfile = z;
    }

    @JsonIgnore
    public boolean isFromDevice() {
        return this.fromDevice;
    }

    @JsonIgnore
    public boolean isFromUserProfile() {
        return this.isFromUserProfile;
    }

    public void setFromDevice(boolean z) {
        this.fromDevice = z;
    }
}
