package com.freshchat.consumer.sdk.service.p068e;

import com.freshchat.consumer.sdk.FreshchatConfig;
/* renamed from: com.freshchat.consumer.sdk.service.e.l */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/e/l.class */
public class C1908l implements AbstractC1906j {
    private String appId;
    private String appKey;
    private String domain;
    private boolean responseExpectationEnabled = true;
    private boolean teamMemberInfoVisible = true;
    private boolean cameraCaptureEnabled = true;

    /* renamed from: gs */
    private boolean f4753gs = false;

    /* renamed from: gt */
    private boolean f4754gt = true;
    private boolean userEventsTrackingEnabled = true;

    public C1908l(FreshchatConfig freshchatConfig) {
        m39327o(freshchatConfig.getAppId());
        m39326p(freshchatConfig.getAppKey());
        setDomain(freshchatConfig.getDomain());
        m39325w(freshchatConfig.isResponseExpectationEnabled());
        m39331d(freshchatConfig.isTeamMemberInfoVisible());
        m39329e(freshchatConfig.isCameraCaptureEnabled());
        m39328g(freshchatConfig.isGallerySelectionEnabled());
        setUserEventsTrackingEnabled(freshchatConfig.isUserEventsTrackingEnabled());
    }

    /* renamed from: d */
    public void m39331d(boolean z) {
        this.teamMemberInfoVisible = z;
    }

    /* renamed from: dI */
    public boolean m39330dI() {
        return this.f4753gs;
    }

    /* renamed from: e */
    public void m39329e(boolean z) {
        this.cameraCaptureEnabled = z;
    }

    /* renamed from: g */
    public void m39328g(boolean z) {
        this.f4754gt = z;
    }

    public String getAppId() {
        return this.appId;
    }

    public String getAppKey() {
        return this.appKey;
    }

    public String getDomain() {
        return this.domain;
    }

    public boolean isCameraCaptureEnabled() {
        return this.cameraCaptureEnabled;
    }

    public boolean isGallerySelectionEnabled() {
        return this.f4754gt;
    }

    public boolean isResponseExpectationEnabled() {
        return this.responseExpectationEnabled;
    }

    public boolean isTeamMemberInfoVisible() {
        return this.teamMemberInfoVisible;
    }

    public boolean isUserEventsTrackingEnabled() {
        return this.userEventsTrackingEnabled;
    }

    /* renamed from: o */
    public void m39327o(String str) {
        this.appId = str;
    }

    /* renamed from: p */
    public void m39326p(String str) {
        this.appKey = str;
    }

    public void setDomain(String str) {
        this.domain = str;
    }

    public void setUserEventsTrackingEnabled(boolean z) {
        this.userEventsTrackingEnabled = z;
    }

    /* renamed from: w */
    public void m39325w(boolean z) {
        this.responseExpectationEnabled = z;
    }
}
