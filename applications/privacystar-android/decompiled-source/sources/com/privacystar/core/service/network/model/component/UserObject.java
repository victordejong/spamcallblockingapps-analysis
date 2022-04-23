package com.privacystar.core.service.network.model.component;

import com.google.gson.GsonBuilder;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.io.Serializable;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/component/UserObject.class */
public class UserObject implements Serializable {
    @SerializedName("apk")
    @Expose
    private String apkVersion;
    @SerializedName("devid")
    @Expose
    private String deviceId;
    @SerializedName(SettingsJsonConstants.APP_KEY)
    @Expose
    private String packageName;
    @SerializedName("token")
    @Expose
    private String token;

    public String getApkVersion() {
        return this.apkVersion;
    }

    public String getDeviceId() {
        return this.deviceId;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public String getToken() {
        return this.token;
    }

    public void setApkVersion(String str) {
        this.apkVersion = str;
    }

    public void setDeviceId(String str) {
        this.deviceId = str;
    }

    public void setPackageName(String str) {
        this.packageName = str;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public String toString() {
        return new GsonBuilder().setPrettyPrinting().create().toJson(this);
    }

    public UserObject withApk(String str) {
        this.apkVersion = str;
        return this;
    }

    public UserObject withDevid(String str) {
        this.deviceId = str;
        return this;
    }

    public UserObject withPackageName(String str) {
        this.packageName = str;
        return this;
    }

    public UserObject withToken(String str) {
        this.token = str;
        return this;
    }
}
