package com.huawei.hms.api;

import android.os.Handler;
import android.os.Message;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/api/BindingFailedResolution$a.class */
public class BindingFailedResolution$a implements Handler.Callback {

    /* renamed from: a */
    public final /* synthetic */ BindingFailedResolution f7263a;

    public BindingFailedResolution$a(BindingFailedResolution bindingFailedResolution) {
        this.f7263a = bindingFailedResolution;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message == null || message.what != 3) {
            return false;
        }
        BindingFailedResolution.a(this.f7263a, 8);
        return true;
    }
}
