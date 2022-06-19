package com.bytedance.sdk.adnet.p143d;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;
/* renamed from: com.bytedance.sdk.adnet.d.i */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/d/i.class */
public class HandlerC4237i extends Handler {

    /* renamed from: a */
    private final WeakReference<AbstractC4238a> f15499a;

    /* renamed from: com.bytedance.sdk.adnet.d.i$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/d/i$a.class */
    public interface AbstractC4238a {
        /* renamed from: a */
        void mo36069a(Message message);
    }

    public HandlerC4237i(Looper looper, AbstractC4238a abstractC4238a) {
        super(looper);
        this.f15499a = new WeakReference<>(abstractC4238a);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        AbstractC4238a abstractC4238a = this.f15499a.get();
        if (abstractC4238a == null || message == null) {
            return;
        }
        abstractC4238a.mo36069a(message);
    }
}
