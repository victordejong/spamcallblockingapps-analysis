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

    /* synthetic */ C1582h0(i0 i0Var, C1578f0 f0Var) {
        this.f5860b = i0Var;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i = message.what;
        if (i == 0) {
            synchronized (i0.f(this.f5860b)) {
                C1576e0 e0Var = (C1576e0) message.obj;
                g0 g0Var = (g0) i0.f(this.f5860b).get(e0Var);
                if (g0Var != null && g0Var.h()) {
                    if (g0Var.e()) {
                        g0Var.b("GmsClientSupervisor");
                    }
                    i0.f(this.f5860b).remove(e0Var);
                }
            }
            return true;
        } else if (i != 1) {
            return false;
        } else {
            synchronized (i0.f(this.f5860b)) {
                C1576e0 e0Var2 = (C1576e0) message.obj;
                g0 g0Var2 = (g0) i0.f(this.f5860b).get(e0Var2);
                if (g0Var2 != null && g0Var2.f() == 3) {
                    String valueOf = String.valueOf(e0Var2);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 47);
                    sb.append("Timeout waiting for ServiceConnection callback ");
                    sb.append(valueOf);
                    Log.e("GmsClientSupervisor", sb.toString(), new Exception());
                    ComponentName j = g0Var2.j();
                    ComponentName componentName = j;
                    if (j == null) {
                        componentName = e0Var2.m8362b();
                    }
                    ComponentName componentName2 = componentName;
                    if (componentName == null) {
                        String a = e0Var2.m8363a();
                        C1581h.m8347h(a);
                        componentName2 = new ComponentName(a, "unknown");
                    }
                    g0Var2.onServiceDisconnected(componentName2);
                }
            }
            return true;
        }
    }
}
