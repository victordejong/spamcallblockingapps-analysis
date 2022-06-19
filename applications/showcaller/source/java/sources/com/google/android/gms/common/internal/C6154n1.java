package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import java.util.HashMap;
/* renamed from: com.google.android.gms.common.internal.n1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/n1.class */
public final class C6154n1 implements Handler.Callback {

    /* renamed from: d */
    final /* synthetic */ C6157o1 f19580d;

    public /* synthetic */ C6154n1(C6157o1 c6157o1, C6146l1 c6146l1) {
        this.f19580d = c6157o1;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        HashMap hashMap;
        HashMap hashMap2;
        HashMap hashMap3;
        HashMap hashMap4;
        HashMap hashMap5;
        int i = message.what;
        if (i == 0) {
            hashMap = this.f19580d.f19581d;
            synchronized (hashMap) {
                C6143k1 c6143k1 = (C6143k1) message.obj;
                hashMap2 = this.f19580d.f19581d;
                ServiceConnectionC6150m1 serviceConnectionC6150m1 = (ServiceConnectionC6150m1) hashMap2.get(c6143k1);
                if (serviceConnectionC6150m1 != null && serviceConnectionC6150m1.m17033h()) {
                    if (serviceConnectionC6150m1.m17036e()) {
                        serviceConnectionC6150m1.m17039b("GmsClientSupervisor");
                    }
                    hashMap3 = this.f19580d.f19581d;
                    hashMap3.remove(c6143k1);
                }
            }
            return true;
        } else if (i != 1) {
            return false;
        } else {
            hashMap4 = this.f19580d.f19581d;
            synchronized (hashMap4) {
                C6143k1 c6143k12 = (C6143k1) message.obj;
                hashMap5 = this.f19580d.f19581d;
                ServiceConnectionC6150m1 serviceConnectionC6150m12 = (ServiceConnectionC6150m1) hashMap5.get(c6143k12);
                if (serviceConnectionC6150m12 != null && serviceConnectionC6150m12.m17035f() == 3) {
                    String valueOf = String.valueOf(c6143k12);
                    StringBuilder sb = new StringBuilder(valueOf.length() + 47);
                    sb.append("Timeout waiting for ServiceConnection callback ");
                    sb.append(valueOf);
                    Log.e("GmsClientSupervisor", sb.toString(), new Exception());
                    ComponentName m17031j = serviceConnectionC6150m12.m17031j();
                    ComponentName componentName = m17031j;
                    if (m17031j == null) {
                        componentName = c6143k12.m17047b();
                    }
                    ComponentName componentName2 = componentName;
                    if (componentName == null) {
                        String m17048a = c6143k12.m17048a();
                        C6155o.m17018j(m17048a);
                        componentName2 = new ComponentName(m17048a, "unknown");
                    }
                    serviceConnectionC6150m12.onServiceDisconnected(componentName2);
                }
            }
            return true;
        }
    }
}
