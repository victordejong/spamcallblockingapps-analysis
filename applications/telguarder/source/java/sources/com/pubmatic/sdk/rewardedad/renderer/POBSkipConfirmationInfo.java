package com.pubmatic.sdk.rewardedad.renderer;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/rewardedad/renderer/POBSkipConfirmationInfo.class */
public class POBSkipConfirmationInfo {

    /* renamed from: a */
    private String f861a;

    /* renamed from: b */
    private String f862b;

    /* renamed from: c */
    private String f863c;

    /* renamed from: d */
    private String f864d;

    public POBSkipConfirmationInfo(String str, String str2, String str3, String str4) {
        this.f861a = str;
        this.f862b = str2;
        this.f863c = str3;
        this.f864d = str4;
    }

    public String getCloseText() {
        return this.f864d;
    }

    public String getMessage() {
        return this.f862b;
    }

    public String getResumeText() {
        return this.f863c;
    }

    public String getTitle() {
        return this.f861a;
    }
}
