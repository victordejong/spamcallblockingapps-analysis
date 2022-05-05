package com.privacystar.core.service.network.model.request;

import com.google.gson.GsonBuilder;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.privacystar.core.service.network.model.component.BasePayload;
import com.privacystar.core.service.network.model.component.CallerIdObject;
import com.privacystar.core.service.network.model.component.UserObject;
import com.privacystar.core.service.network.model.request.LookupRequest;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.io.Serializable;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/request/BulkLookupRequest.class */
public class BulkLookupRequest implements Serializable {
    @SerializedName("payload")
    @Expose
    private Payload payload;
    @SerializedName("user")
    @Expose
    private UserObject user;

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/request/BulkLookupRequest$Payload.class */
    public class Payload extends BasePayload implements Serializable {
        @SerializedName("devid")
        @Expose
        private String mDeviceId;
        @SerializedName("type")
        @Expose
        private LookupRequest.LookupType mLookupType = LookupRequest.LookupType.BULK;
        @SerializedName("bulk")
        @Expose
        private List<CallerIdObject> numbers;
        @SerializedName(SettingsJsonConstants.APP_KEY)
        @Expose
        private String packageName;

        public Payload() {
        }

        public String getDeviceId() {
            return this.mDeviceId;
        }

        public LookupRequest.LookupType getLookupType() {
            return this.mLookupType;
        }

        public List<CallerIdObject> getNumbers() {
            return this.numbers;
        }

        public String getPackageName() {
            return this.packageName;
        }

        public void setDeviceId(String str) {
            this.mDeviceId = str;
        }

        public void setLookupType(LookupRequest.LookupType lookupType) {
            this.mLookupType = lookupType;
        }

        public void setNumbers(List<CallerIdObject> list) {
            this.numbers = list;
        }

        public void setPackageName(String str) {
            this.packageName = str;
        }

        public String toString() {
            return new GsonBuilder().setPrettyPrinting().create().toJson(this);
        }

        public Payload withDevid(String str) {
            this.mDeviceId = str;
            return this;
        }

        public Payload withLookupType(LookupRequest.LookupType lookupType) {
            this.mLookupType = lookupType;
            return this;
        }

        public Payload withNumbers(List<CallerIdObject> list) {
            this.numbers = list;
            return this;
        }

        public Payload withPackageName(String str) {
            this.packageName = str;
            return this;
        }
    }

    public Payload getPayload() {
        return this.payload;
    }

    public UserObject getUser() {
        return this.user;
    }

    public Payload instantiatePayload() {
        return new Payload();
    }

    public void setPayload(Payload payload) {
        this.payload = payload;
    }

    public void setUser(UserObject userObject) {
        this.user = userObject;
    }

    public String toString() {
        return new GsonBuilder().setPrettyPrinting().create().toJson(this);
    }

    public BulkLookupRequest withPayload(Payload payload) {
        this.payload = payload;
        return this;
    }

    public BulkLookupRequest withUser(UserObject userObject) {
        this.user = userObject;
        return this;
    }
}
