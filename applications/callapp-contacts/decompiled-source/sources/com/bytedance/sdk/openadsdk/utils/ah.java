package com.bytedance.sdk.openadsdk.utils;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/ah.class */
public class ah extends Handler {

    /* renamed from: a  reason: collision with root package name */
    private final WeakReference<a> f10285a;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/ah$a.class */
    public interface a {
        void a(Message message);
    }

    public ah(Looper looper, a aVar) {
        super(looper);
        this.f10285a = new WeakReference<>(aVar);
    }

    public ah(a aVar) {
        this.f10285a = new WeakReference<>(aVar);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        a aVar = this.f10285a.get();
        if (aVar != null && message != null) {
            aVar.a(message);
        }
    }
}
