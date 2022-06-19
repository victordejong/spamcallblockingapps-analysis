package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.stats.C12088a;
import java.util.HashMap;
/* renamed from: com.google.android.gms.common.internal.bn */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/bn.class */
public final class C12015bn implements Handler.Callback {

    /* renamed from: a */
    final /* synthetic */ C12016bo f39526a;

    public /* synthetic */ C12015bn(C12016bo c12016bo, C12013bl c12013bl) {
        this.f39526a = c12016bo;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        HashMap hashMap;
        HashMap hashMap2;
        HashMap hashMap3;
        Handler handler;
        C12088a c12088a;
        Context context;
        HashMap hashMap4;
        HashMap hashMap5;
        int i = message.what;
        if (i == 0) {
            hashMap = this.f39526a.f39527a;
            synchronized (hashMap) {
                C12012bk c12012bk = (C12012bk) message.obj;
                hashMap2 = this.f39526a.f39527a;
                ServiceConnectionC12014bm serviceConnectionC12014bm = (ServiceConnectionC12014bm) hashMap2.get(c12012bk);
                if (serviceConnectionC12014bm != null && serviceConnectionC12014bm.m19204a()) {
                    if (serviceConnectionC12014bm.f39521c) {
                        handler = serviceConnectionC12014bm.f39525g.f39529c;
                        handler.removeMessages(1, serviceConnectionC12014bm.f39523e);
                        c12088a = serviceConnectionC12014bm.f39525g.f39530d;
                        context = serviceConnectionC12014bm.f39525g.f39528b;
                        c12088a.m19070a(context, serviceConnectionC12014bm);
                        serviceConnectionC12014bm.f39521c = false;
                        serviceConnectionC12014bm.f39520b = 2;
                    }
                    hashMap3 = this.f39526a.f39527a;
                    hashMap3.remove(c12012bk);
                }
            }
            return true;
        } else if (i != 1) {
            return false;
        } else {
            hashMap4 = this.f39526a.f39527a;
            synchronized (hashMap4) {
                C12012bk c12012bk2 = (C12012bk) message.obj;
                hashMap5 = this.f39526a.f39527a;
                ServiceConnectionC12014bm serviceConnectionC12014bm2 = (ServiceConnectionC12014bm) hashMap5.get(c12012bk2);
                if (serviceConnectionC12014bm2 != null && serviceConnectionC12014bm2.f39520b == 3) {
                    String valueOf = String.valueOf(c12012bk2);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 47);
                    sb.append("Timeout waiting for ServiceConnection callback ");
                    sb.append(valueOf);
                    Log.e("GmsClientSupervisor", sb.toString(), new Exception());
                    ComponentName componentName = serviceConnectionC12014bm2.f39524f;
                    ComponentName componentName2 = componentName;
                    if (componentName == null) {
                        componentName2 = c12012bk2.f39515b;
                    }
                    ComponentName componentName3 = componentName2;
                    if (componentName2 == null) {
                        String str = c12012bk2.f39514a;
                        C12045o.m19162a(str);
                        componentName3 = new ComponentName(str, "unknown");
                    }
                    serviceConnectionC12014bm2.onServiceDisconnected(componentName3);
                }
            }
            return true;
        }
    }
}
