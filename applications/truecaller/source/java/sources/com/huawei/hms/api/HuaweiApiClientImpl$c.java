package com.huawei.hms.api;

import android.os.Handler;
import android.os.Message;
import com.huawei.hms.support.log.HMSLog;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/api/HuaweiApiClientImpl$c.class */
public class HuaweiApiClientImpl$c implements Handler.Callback {

    /* renamed from: a */
    public final /* synthetic */ HuaweiApiClientImpl f7282a;

    public HuaweiApiClientImpl$c(HuaweiApiClientImpl huaweiApiClientImpl) {
        this.f7282a = huaweiApiClientImpl;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message == null || message.what != 3) {
            return false;
        }
        HMSLog.m37195e("HuaweiApiClientImpl", "In connect, process time out");
        if (HuaweiApiClientImpl.b(this.f7282a).get() != 2) {
            return true;
        }
        HuaweiApiClientImpl.a(this.f7282a, 1);
        HuaweiApiClientImpl.c(this.f7282a);
        return true;
    }
}
