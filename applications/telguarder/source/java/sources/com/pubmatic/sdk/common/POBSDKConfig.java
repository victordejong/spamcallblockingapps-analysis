package com.pubmatic.sdk.common;

import com.pubmatic.sdk.common.log.PMLog;
import com.pubmatic.sdk.common.models.POBApplicationInfo;
import com.pubmatic.sdk.common.models.POBLocation;
import com.pubmatic.sdk.common.models.POBUserInfo;
import com.pubmatic.sdk.common.viewability.POBHTMLMeasurementProvider;
import com.pubmatic.sdk.common.viewability.POBVideoMeasurementProvider;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/POBSDKConfig.class */
public class POBSDKConfig {

    /* renamed from: d */
    private Boolean f363d;

    /* renamed from: e */
    private POBLocation f364e;

    /* renamed from: h */
    private POBUserInfo f367h;

    /* renamed from: i */
    private POBApplicationInfo f368i;

    /* renamed from: j */
    private Boolean f369j;

    /* renamed from: k */
    private String f370k;

    /* renamed from: l */
    private String f371l;

    /* renamed from: a */
    private boolean f360a = true;

    /* renamed from: b */
    private long f361b = 600000;

    /* renamed from: c */
    private boolean f362c = true;

    /* renamed from: f */
    private boolean f365f = true;

    /* renamed from: g */
    private boolean f366g = true;

    public void allowAdvertisingId(boolean z) {
        this.f366g = z;
    }

    public void allowLocationAccess(boolean z) {
        this.f360a = z;
    }

    public POBApplicationInfo getApplicationInfo() {
        return this.f368i;
    }

    public String getCCPA() {
        return this.f371l;
    }

    public String getGdprConsent() {
        return this.f370k;
    }

    public POBHTMLMeasurementProvider getHtmlMeasurementProvider() {
        POBHTMLMeasurementProvider pOBHTMLMeasurementProvider;
        try {
            pOBHTMLMeasurementProvider = (POBHTMLMeasurementProvider) Class.forName("com.pubmatic.sdk.omsdk.POBHTMLMeasurement").getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | SecurityException | InvocationTargetException e) {
            PMLog.error("OMSDK", "%s", e.getMessage());
            pOBHTMLMeasurementProvider = null;
        }
        return pOBHTMLMeasurementProvider;
    }

    public POBLocation getLocation() {
        return this.f364e;
    }

    public long getLocationDetectionDurationInMillis() {
        return this.f361b;
    }

    public POBUserInfo getUserInfo() {
        return this.f367h;
    }

    public POBVideoMeasurementProvider getVideoMeasurementProvider() {
        POBVideoMeasurementProvider pOBVideoMeasurementProvider;
        try {
            pOBVideoMeasurementProvider = (POBVideoMeasurementProvider) Class.forName("com.pubmatic.sdk.omsdk.POBVideoMeasurement").getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | SecurityException | InvocationTargetException e) {
            PMLog.error("OMSDK", "%s", e.getMessage());
            pOBVideoMeasurementProvider = null;
        }
        return pOBVideoMeasurementProvider;
    }

    public boolean isAllowAdvertisingId() {
        return this.f366g;
    }

    public Boolean isCoppa() {
        return this.f363d;
    }

    public Boolean isGdprEnabled() {
        return this.f369j;
    }

    public boolean isLocationAccessAllowed() {
        return this.f360a;
    }

    public boolean isRequestSecureCreative() {
        return this.f365f;
    }

    public boolean isUseInternalBrowser() {
        return this.f362c;
    }

    public void setApplicationInfo(POBApplicationInfo pOBApplicationInfo) {
        this.f368i = pOBApplicationInfo;
    }

    public void setCCPA(String str) {
        this.f371l = str;
    }

    public void setCoppa(boolean z) {
        this.f363d = Boolean.valueOf(z);
    }

    public void setGdprConsent(String str) {
        this.f370k = str;
    }

    public void setGdprEnabled(Boolean bool) {
        this.f369j = bool;
    }

    public void setLocation(POBLocation pOBLocation) {
        this.f364e = pOBLocation;
    }

    public void setLocationDetectionDurationInMillis(long j) {
        this.f361b = j;
    }

    public void setRequestSecureCreative(boolean z) {
        this.f365f = z;
    }

    public void setUseInternalBrowser(boolean z) {
        this.f362c = z;
    }

    public void setUserInfo(POBUserInfo pOBUserInfo) {
        this.f367h = pOBUserInfo;
    }
}
