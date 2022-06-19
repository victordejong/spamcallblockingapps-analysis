package com.truecaller.referrals.data.entities;

import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import e.m.e.d0.b;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes12-dex2jar.jar:com/truecaller/referrals/data/entities/RedeemCodeResponse.class */
public class RedeemCodeResponse {
    @b("message")

    /* renamed from: a */
    public String f14471a;
    @b("referrerName")

    /* renamed from: b */
    public String f14472b;
    @b(UpdateKey.STATUS)

    /* renamed from: c */
    public String f14473c;
    @b("durationDays")

    /* renamed from: d */
    public int f14474d;

    /* loaded from: classes12-dex2jar.jar:com/truecaller/referrals/data/entities/RedeemCodeResponse$Status.class */
    public enum Status {
        ALREADY_REFERRED,
        QUOTA_OVER,
        SUCCESS,
        OLD_PROFILE,
        SELF_REFERRAL,
        CANNOT_GRANT_PREMIUM,
        INVALID_CODE,
        WAS_REFERRER
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("RedeemCodeResponse{status='");
        C22128a.m8678P0(m8728C, this.f14473c, '\'', ", daysOfPro=");
        return C22128a.m8701I2(m8728C, this.f14474d, '}');
    }
}
