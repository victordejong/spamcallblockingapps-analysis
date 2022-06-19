package com.amazonaws.services.p101s3.model;
/* renamed from: com.amazonaws.services.s3.model.MultiFactorAuthentication */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/MultiFactorAuthentication.class */
public class MultiFactorAuthentication {
    private String deviceSerialNumber;
    private String token;

    public MultiFactorAuthentication(String str, String str2) {
        this.deviceSerialNumber = str;
        this.token = str2;
    }

    public String getDeviceSerialNumber() {
        return this.deviceSerialNumber;
    }

    public String getToken() {
        return this.token;
    }

    public void setDeviceSerialNumber(String str) {
        this.deviceSerialNumber = str;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public MultiFactorAuthentication withDeviceSerialNumber(String str) {
        setDeviceSerialNumber(str);
        return this;
    }

    public MultiFactorAuthentication withToken(String str) {
        setToken(str);
        return this;
    }
}
