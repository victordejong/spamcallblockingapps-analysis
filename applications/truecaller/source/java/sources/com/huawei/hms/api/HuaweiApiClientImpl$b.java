package com.huawei.hms.api;

import android.os.Handler;
import android.os.Message;
import com.huawei.hms.support.log.HMSLog;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/api/HuaweiApiClientImpl$b.class */
public class HuaweiApiClientImpl$b implements Handler.Callback {

    /* renamed from: a */
    public final /* synthetic */ HuaweiApiClientImpl f7281a;

    public HuaweiApiClientImpl$b(HuaweiApiClientImpl huaweiApiClientImpl) {
        this.f7281a = huaweiApiClientImpl;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message == null || message.what != 2) {
            return false;
        }
        HMSLog.m37195e("HuaweiApiClientImpl", "In connect, bind core service time out");
        if (HuaweiApiClientImpl.b(this.f7281a).get() != 5) {
            return true;
        }
        HuaweiApiClientImpl.a(this.f7281a, 1);
        HuaweiApiClientImpl.c(this.f7281a);
        return true;
    }
}
