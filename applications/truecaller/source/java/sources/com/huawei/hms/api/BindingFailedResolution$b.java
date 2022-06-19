package com.huawei.hms.api;

import android.os.Handler;
import android.os.Message;
import com.huawei.hms.support.log.HMSLog;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/api/BindingFailedResolution$b.class */
public class BindingFailedResolution$b implements Handler.Callback {

    /* renamed from: a */
    public final /* synthetic */ BindingFailedResolution f7264a;

    public BindingFailedResolution$b(BindingFailedResolution bindingFailedResolution) {
        this.f7264a = bindingFailedResolution;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message == null || message.what != 2) {
            return false;
        }
        HMSLog.m37195e("BindingFailedResolution", "In connect, bind core try timeout");
        BindingFailedResolution.a(this.f7264a, false);
        return true;
    }
}
