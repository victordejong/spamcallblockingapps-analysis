package com.privacystar.core.service.network.model.request;

import com.google.gson.GsonBuilder;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.privacystar.core.service.network.model.component.EventObject;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.io.Serializable;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/request/AnalyticsEventRequest.class */
public class AnalyticsEventRequest implements Serializable {
    @SerializedName(SettingsJsonConstants.APP_KEY)
    @Expose
    private String applicationName;
    @SerializedName("pin")
    @Expose
    private String deviceId;
    @SerializedName("mod")
    @Expose
    private String deviceModel;
    @SerializedName("ets")
    @Expose
    private List<EventObject> events;
    @SerializedName("xid")
    @Expose
    private String fcmKey;
    @SerializedName("imsi")
    @Expose
    private String imsi;
    @SerializedName("manu")
    @Expose
    private String manufacturer;
    @SerializedName("mdn")
    @Expose
    private String mdn;
    @SerializedName("os")
    @Expose

    /* renamed from: os */
    private String f286os;

    public String getApplicationName() {
        return this.applicationName;
    }

    public String getDeviceId() {
        return this.deviceId;
    }

    public String getDeviceModel() {
        return this.deviceModel;
    }

    public List<EventObject> getEvents() {
        return this.events;
    }

    public String getFcmKey() {
        return this.fcmKey;
    }

    public String getImsi() {
        return this.imsi;
    }

    public String getManufacturer() {
        return this.manufacturer;
    }

    public String getMdn() {
        return this.mdn;
    }

    public String getOs() {
        return this.f286os;
    }

    public void setApplicationName(String str) {
        this.applicationName = str;
    }

    public void setDeviceId(String str) {
        this.deviceId = str;
    }

    public void setDeviceModel(String str) {
        this.deviceModel = str;
    }

    public void setEvents(List<EventObject> list) {
        this.events = list;
    }

    public void setFcmKey(String str) {
        this.fcmKey = str;
    }

    public void setImsi(String str) {
        this.imsi = str;
    }

    public void setManufacturer(String str) {
        this.manufacturer = str;
    }

    public void setMdn(String str) {
        this.mdn = str;
    }

    public void setOs(String str) {
        this.f286os = str;
    }

    public String toString() {
        return new GsonBuilder().setPrettyPrinting().create().toJson(this);
    }

    public AnalyticsEventRequest withApplicationName(String str) {
        this.applicationName = str;
        return this;
    }

    public AnalyticsEventRequest withDeviceId(String str) {
        this.deviceId = str;
        return this;
    }

    public AnalyticsEventRequest withDeviceModel(String str) {
        this.deviceModel = str;
        return this;
    }

    public AnalyticsEventRequest withEvents(List<EventObject> list) {
        this.events = list;
        return this;
    }

    public AnalyticsEventRequest withFcmKey(String str) {
        this.fcmKey = str;
        return this;
    }

    public AnalyticsEventRequest withImsi(String str) {
        this.imsi = str;
        return this;
    }

    public AnalyticsEventRequest withManufacturer(String str) {
        this.manufacturer = str;
        return this;
    }

    public AnalyticsEventRequest withMdn(String str) {
        this.mdn = str;
        return this;
    }

    public AnalyticsEventRequest withOs(String str) {
        this.f286os = str;
        return this;
    }
}
