package com.huawei.hms.push;

import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;
/* renamed from: com.huawei.hms.push.t */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/push/t.class */
public class HandlerC2442t extends Handler {

    /* renamed from: a */
    public WeakReference<AbstractC2443a> f7770a;

    /* renamed from: com.huawei.hms.push.t$a */
    /* loaded from: classes3-dex2jar.jar:com/huawei/hms/push/t$a.class */
    public interface AbstractC2443a {
        void handleMessage(Message message);
    }

    public HandlerC2442t(AbstractC2443a abstractC2443a) {
        this.f7770a = new WeakReference<>(abstractC2443a);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        super.handleMessage(message);
        AbstractC2443a abstractC2443a = this.f7770a.get();
        if (abstractC2443a != null) {
            abstractC2443a.handleMessage(message);
        }
    }
}
