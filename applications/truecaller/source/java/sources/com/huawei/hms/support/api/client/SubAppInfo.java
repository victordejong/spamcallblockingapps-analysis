package com.huawei.hms.support.api.client;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/support/api/client/SubAppInfo.class */
public class SubAppInfo {

    /* renamed from: a */
    private String f7793a;

    public SubAppInfo(SubAppInfo subAppInfo) {
        if (subAppInfo != null) {
            this.f7793a = subAppInfo.getSubAppID();
        }
    }

    public SubAppInfo(String str) {
        this.f7793a = str;
    }

    public String getSubAppID() {
        return this.f7793a;
    }

    public void setSubAppInfoID(String str) {
        this.f7793a = str;
    }
}
