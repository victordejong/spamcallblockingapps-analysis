package com.bytedance.sdk.openadsdk.utils;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;
/* renamed from: com.bytedance.sdk.openadsdk.utils.ah */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/ah.class */
public class HandlerC5446ah extends Handler {

    /* renamed from: a */
    private final WeakReference<AbstractC5447a> f18991a;

    /* renamed from: com.bytedance.sdk.openadsdk.utils.ah$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/ah$a.class */
    public interface AbstractC5447a {
        /* renamed from: a */
        void mo32205a(Message message);
    }

    public HandlerC5446ah(Looper looper, AbstractC5447a abstractC5447a) {
        super(looper);
        this.f18991a = new WeakReference<>(abstractC5447a);
    }

    public HandlerC5446ah(AbstractC5447a abstractC5447a) {
        this.f18991a = new WeakReference<>(abstractC5447a);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        AbstractC5447a abstractC5447a = this.f18991a.get();
        if (abstractC5447a == null || message == null) {
            return;
        }
        abstractC5447a.mo32205a(message);
    }
}
