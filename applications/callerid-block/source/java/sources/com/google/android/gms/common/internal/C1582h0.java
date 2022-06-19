package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
/* renamed from: com.google.android.gms.common.internal.h0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/h0.class */
final class C1582h0 implements Handler.Callback {

    /* renamed from: b */
    final /* synthetic */ i0 f5860b;

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i = message.what;
        if (i == 0) {
            synchronized (i0.f(this.f5860b)) {
                C1576e0 c1576e0 = (C1576e0) message.obj;
                g0 g0Var = (g0) i0.f(this.f5860b).get(c1576e0);
                if (g0Var != null && g0Var.h()) {
                    if (g0Var.e()) {
                        g0Var.b("GmsClientSupervisor");
                    }
                    i0.f(this.f5860b).remove(c1576e0);
                }
            }
            return true;
        } else if (i != 1) {
            return false;
        } else {
            synchronized (i0.f(this.f5860b)) {
                C1576e0 c1576e02 = (C1576e0) message.obj;
                g0 g0Var2 = (g0) i0.f(this.f5860b).get(c1576e02);
                if (g0Var2 != null && g0Var2.f() == 3) {
                    String valueOf = String.valueOf(c1576e02);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 47);
                    sb.append("Timeout waiting for ServiceConnection callback ");
                    sb.append(valueOf);
                    Log.e("GmsClientSupervisor", sb.toString(), new Exception());
                    ComponentName j = g0Var2.j();
                    ComponentName componentName = j;
                    if (j == null) {
                        componentName = c1576e02.m8362b();
                    }
                    ComponentName componentName2 = componentName;
                    if (componentName == null) {
                        String m8363a = c1576e02.m8363a();
                        C1581h.m8347h(m8363a);
                        componentName2 = new ComponentName(m8363a, "unknown");
                    }
                    g0Var2.onServiceDisconnected(componentName2);
                }
            }
            return true;
        }
    }
}
