package com.callapp.common.model.json;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONClientConfiguration.class */
public class JSONClientConfiguration implements Serializable {
    private static final long serialVersionUID = -7504969660423890558L;
    private String apkOrigin;
    private int callAppVersion;
    private boolean callappPlus;
    private int density;
    private String encodedDeviceId;
    private boolean hasTelephony;
    private int height;
    private String manufacturer;
    private String model;
    private int osVersion;
    private String phoneNumber;
    private boolean setupCompleted;
    private int width;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        JSONClientConfiguration jSONClientConfiguration = (JSONClientConfiguration) obj;
        if (this.callAppVersion != jSONClientConfiguration.callAppVersion || this.density != jSONClientConfiguration.density || this.hasTelephony != jSONClientConfiguration.hasTelephony || this.height != jSONClientConfiguration.height || this.osVersion != jSONClientConfiguration.osVersion || this.width != jSONClientConfiguration.width) {
            return false;
        }
        String str = this.manufacturer;
        if (str != null) {
            if (!str.equals(jSONClientConfiguration.manufacturer)) {
                return false;
            }
        } else if (jSONClientConfiguration.manufacturer != null) {
            return false;
        }
        String str2 = this.model;
        String str3 = jSONClientConfiguration.model;
        return str2 != null ? str2.equals(str3) : str3 == null;
    }

    public String getApkOrigin() {
        return this.apkOrigin;
    }

    public int getCallAppVersion() {
        return this.callAppVersion;
    }

    public int getDensity() {
        return this.density;
    }

    public String getEncodedDeviceId() {
        return this.encodedDeviceId;
    }

    public int getHeight() {
        return this.height;
    }

    public String getManufacturer() {
        return this.manufacturer;
    }

    public String getModel() {
        return this.model;
    }

    public int getOsVersion() {
        return this.osVersion;
    }

    public String getPhoneNumber() {
        return this.phoneNumber;
    }

    public int getWidth() {
        return this.width;
    }

    public int hashCode() {
        String str = this.manufacturer;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.model;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (((((((((((((hashCode * 31) + i) * 31) + this.osVersion) * 31) + this.width) * 31) + this.height) * 31) + this.callAppVersion) * 31) + this.density) * 31) + (this.hasTelephony ? 1 : 0);
    }

    public boolean isCallappPlus() {
        return this.callappPlus;
    }

    public boolean isHasTelephony() {
        return this.hasTelephony;
    }

    public boolean isSetupCompleted() {
        return this.setupCompleted;
    }

    public void setApkOrigin(String str) {
        this.apkOrigin = str;
    }

    public void setCallAppVersion(int i) {
        this.callAppVersion = i;
    }

    public void setCallappPlus(boolean z) {
        this.callappPlus = z;
    }

    public void setDensity(int i) {
        this.density = i;
    }

    public void setEncodedDeviceId(String str) {
        this.encodedDeviceId = str;
    }

    public void setHasTelephony(boolean z) {
        this.hasTelephony = z;
    }

    public void setHeight(int i) {
        this.height = i;
    }

    public void setManufacturer(String str) {
        this.manufacturer = str;
    }

    public void setModel(String str) {
        this.model = str;
    }

    public void setOsVersion(int i) {
        this.osVersion = i;
    }

    public void setPhoneNumber(String str) {
        this.phoneNumber = str;
    }

    public void setSetupCompleted(boolean z) {
        this.setupCompleted = z;
    }

    public void setWidth(int i) {
        this.width = i;
    }

    public String toString() {
        return String.format("DeviceId: %s Manufacturer: %s  Model: %s  hasTelephony: %s  Width: %d  Height: %d  Density: %d  Android OS Version: %d  Client Version: %s APK origin: %s", this.encodedDeviceId, this.manufacturer, this.model, Boolean.valueOf(this.hasTelephony), Integer.valueOf(this.width), Integer.valueOf(this.height), Integer.valueOf(this.density), Integer.valueOf(this.osVersion), Integer.valueOf(this.callAppVersion), this.apkOrigin);
    }
}
