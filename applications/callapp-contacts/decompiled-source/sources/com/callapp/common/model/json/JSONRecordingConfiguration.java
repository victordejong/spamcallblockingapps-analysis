package com.callapp.common.model.json;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONRecordingConfiguration.class */
public class JSONRecordingConfiguration implements Serializable {
    private static final long serialVersionUID = 7818782969504307989L;
    private int audioSource;
    private String device;
    private boolean force;
    private String manufacturer;
    private int method;
    private String model;
    private int sdkVersion;

    public JSONRecordingConfiguration() {
    }

    public JSONRecordingConfiguration(int i, String str, String str2, String str3, int i2, int i3, boolean z) {
        this.sdkVersion = i;
        this.manufacturer = str;
        this.model = str2;
        this.device = str3;
        this.method = i2;
        this.audioSource = i3;
        this.force = z;
    }

    public int getAudioSource() {
        return this.audioSource;
    }

    public String getDevice() {
        return this.device;
    }

    public String getManufacturer() {
        return this.manufacturer;
    }

    public int getMethod() {
        return this.method;
    }

    public String getModel() {
        return this.model;
    }

    public int getSdkVersion() {
        return this.sdkVersion;
    }

    public boolean isForce() {
        return this.force;
    }

    public void setAudioSource(int i) {
        this.audioSource = i;
    }

    public void setDevice(String str) {
        this.device = str;
    }

    public void setForce(boolean z) {
        this.force = z;
    }

    public void setManufacturer(String str) {
        this.manufacturer = str;
    }

    public void setMethod(int i) {
        this.method = i;
    }

    public void setModel(String str) {
        this.model = str;
    }

    public void setSdkVersion(int i) {
        this.sdkVersion = i;
    }

    public String toString() {
        return "JSONRecordingConfiguration{sdkVersion=" + this.sdkVersion + ", manufacturer='" + this.manufacturer + "', model='" + this.model + "', device='" + this.device + "', method=" + this.method + ", audioSource=" + this.audioSource + ", force=" + this.force + '}';
    }
}
