package com.clevertap.android.hms;

import android.content.Context;
import android.text.TextUtils;
import com.clevertap.android.sdk.CleverTapInstanceConfig;
import com.huawei.hms.aaid.HmsInstanceId;
import com.huawei.hms.api.HuaweiApiAvailability;
import com.huawei.hms.push.HmsMessaging;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1485h.p1486a.p1487a.AbstractC22668b;
import p193e.p1485h.p1486a.p1487a.AbstractC22672f;
import p193e.p1485h.p1486a.p1487a.C22670d;
import p193e.p1485h.p1486a.p1493c.C22735g0;
import p193e.p1485h.p1486a.p1493c.p1507w0.AbstractC22859a;
import p193e.p1485h.p1486a.p1493c.p1507w0.AbstractC22860b;
import p193e.p1485h.p1486a.p1493c.p1507w0.AbstractC22865g;
/* loaded from: classes-dex2jar.jar:com/clevertap/android/hms/HmsPushProvider.class */
public class HmsPushProvider implements AbstractC22859a {
    private final AbstractC22860b ctPushListener;
    private AbstractC22672f hmsSdkHandler;

    public HmsPushProvider(AbstractC22860b abstractC22860b, Context context, CleverTapInstanceConfig cleverTapInstanceConfig) {
        this.ctPushListener = abstractC22860b;
        this.hmsSdkHandler = new C22670d(context, cleverTapInstanceConfig);
    }

    @Override // p193e.p1485h.p1486a.p1493c.p1507w0.AbstractC22859a
    public int getPlatform() {
        return 1;
    }

    @Override // p193e.p1485h.p1486a.p1493c.p1507w0.AbstractC22859a
    public AbstractC22865g.EnumC22866a getPushType() {
        return AbstractC22865g.EnumC22866a.HPS;
    }

    @Override // p193e.p1485h.p1486a.p1493c.p1507w0.AbstractC22859a
    public boolean isAvailable() {
        return !TextUtils.isEmpty(((C22670d) this.hmsSdkHandler).m7981a());
    }

    @Override // p193e.p1485h.p1486a.p1493c.p1507w0.AbstractC22859a
    public boolean isSupported() {
        C22670d c22670d = (C22670d) this.hmsSdkHandler;
        Objects.requireNonNull(c22670d);
        boolean z = false;
        try {
            if (HuaweiApiAvailability.getInstance().isHuaweiMobileNoticeAvailable(c22670d.f62734a) == 0) {
                z = true;
            }
        } catch (Throwable th) {
            CleverTapInstanceConfig cleverTapInstanceConfig = c22670d.f62735b;
            cleverTapInstanceConfig.f2253n.m7855b(cleverTapInstanceConfig.m42082a("PushProvider"), C22128a.m8618h(new StringBuilder(), AbstractC22668b.f62733a, "HMS is supported check failed."));
        }
        return z;
    }

    @Override // p193e.p1485h.p1486a.p1493c.p1507w0.AbstractC22859a
    public int minSDKSupportVersionCode() {
        return 30800;
    }

    @Override // p193e.p1485h.p1486a.p1493c.p1507w0.AbstractC22859a
    public void requestToken() {
        String str;
        AbstractC22860b abstractC22860b = this.ctPushListener;
        C22670d c22670d = (C22670d) this.hmsSdkHandler;
        Objects.requireNonNull(c22670d);
        try {
            String m7981a = c22670d.m7981a();
            str = null;
            if (!TextUtils.isEmpty(m7981a)) {
                str = HmsInstanceId.getInstance(c22670d.f62734a).getToken(m7981a, HmsMessaging.DEFAULT_TOKEN_SCOPE);
            }
        } catch (Throwable th) {
            CleverTapInstanceConfig cleverTapInstanceConfig = c22670d.f62735b;
            String str2 = AbstractC22668b.f62733a;
            C22735g0 c22735g0 = cleverTapInstanceConfig.f2253n;
            cleverTapInstanceConfig.m42082a("PushProvider");
            Objects.requireNonNull(c22735g0);
            str = null;
        }
        abstractC22860b.mo7660a(str, getPushType());
    }

    public void setHmsSdkHandler(AbstractC22672f abstractC22672f) {
        this.hmsSdkHandler = abstractC22672f;
    }
}
