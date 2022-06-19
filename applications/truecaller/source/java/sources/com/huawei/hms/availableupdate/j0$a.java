package com.huawei.hms.availableupdate;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.huawei.hms.p095ui.SafeBundle;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/availableupdate/j0$a.class */
public class j0$a extends Handler {

    /* renamed from: a */
    public final /* synthetic */ j0 f7326a;

    public j0$a(j0 j0Var) {
        this.f7326a = j0Var;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        SafeBundle safeBundle = new SafeBundle((Bundle) message.obj);
        switch (message.what) {
            case 101:
                j0.a(this.f7326a, safeBundle);
                return;
            case 102:
                j0.b(this.f7326a, safeBundle);
                return;
            case 103:
                j0.c(this.f7326a, safeBundle);
                return;
            default:
                return;
        }
    }
}
