package com.bytedance.sdk.adnet.d;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/d/i.class */
public class i extends Handler {

    /* renamed from: a  reason: collision with root package name */
    private final WeakReference<a> f8358a;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/d/i$a.class */
    public interface a {
        void a(Message message);
    }

    public i(Looper looper, a aVar) {
        super(looper);
        this.f8358a = new WeakReference<>(aVar);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        a aVar = this.f8358a.get();
        if (aVar != null && message != null) {
            aVar.a(message);
        }
    }
}
