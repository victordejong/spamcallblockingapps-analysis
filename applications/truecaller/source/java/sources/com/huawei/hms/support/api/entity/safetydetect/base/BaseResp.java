package com.huawei.hms.support.api.entity.safetydetect.base;

import com.huawei.hms.core.aidl.annotation.Packed;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/support/api/entity/safetydetect/base/BaseResp.class */
public class BaseResp {
    @Packed
    private String errorReason;
    @Packed
    private int rtnCode;

    public String getErrorReason() {
        return this.errorReason;
    }

    public int getRtnCode() {
        return this.rtnCode;
    }

    public void setErrorReason(String str) {
        this.errorReason = str;
    }

    public void setRtnCode(int i) {
        this.rtnCode = i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("rtnCode=");
        m8728C.append(getRtnCode());
        m8728C.append("|errorReason=");
        m8728C.append(getErrorReason());
        return m8728C.toString();
    }
}
