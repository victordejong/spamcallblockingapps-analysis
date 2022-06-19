package com.huawei.hms.push.ups.entity;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/push/ups/entity/CodeResult.class */
public class CodeResult {

    /* renamed from: a */
    public int f7774a;

    /* renamed from: b */
    public String f7775b;

    public CodeResult() {
    }

    public CodeResult(int i) {
        this.f7774a = i;
    }

    public CodeResult(int i, String str) {
        this.f7774a = i;
        this.f7775b = str;
    }

    public String getReason() {
        return this.f7775b;
    }

    public int getReturnCode() {
        return this.f7774a;
    }

    public void setReason(String str) {
        this.f7775b = str;
    }

    public void setReturnCode(int i) {
        this.f7774a = i;
    }
}
