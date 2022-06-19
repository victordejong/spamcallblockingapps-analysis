package p193e.p1577m.p1578a.p1642f.p1653e.p1656b;

import android.content.ComponentName;
import android.os.Handler;
import android.os.Message;
import com.google.android.gms.common.internal.zzn;
import java.util.Objects;
/* renamed from: e.m.a.f.e.b.p */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/e/b/p.class */
public final class C24979p implements Handler.Callback {

    /* renamed from: a */
    public final /* synthetic */ C24980q f69933a;

    public /* synthetic */ C24979p(C24980q c24980q) {
        this.f69933a = c24980q;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i = message.what;
        if (i == 0) {
            synchronized (this.f69933a.f69934c) {
                zzn zznVar = (zzn) message.obj;
                ServiceConnectionC24978o serviceConnectionC24978o = this.f69933a.f69934c.get(zznVar);
                if (serviceConnectionC24978o != null && serviceConnectionC24978o.f69926a.isEmpty()) {
                    if (serviceConnectionC24978o.f69928c) {
                        serviceConnectionC24978o.f69932g.f69936e.removeMessages(1, serviceConnectionC24978o.f69930e);
                        C24980q c24980q = serviceConnectionC24978o.f69932g;
                        c24980q.f69938g.m38802c(c24980q.f69935d, serviceConnectionC24978o);
                        serviceConnectionC24978o.f69928c = false;
                        serviceConnectionC24978o.f69927b = 2;
                    }
                    this.f69933a.f69934c.remove(zznVar);
                }
            }
            return true;
        } else if (i != 1) {
            return false;
        } else {
            synchronized (this.f69933a.f69934c) {
                zzn zznVar2 = (zzn) message.obj;
                ServiceConnectionC24978o serviceConnectionC24978o2 = this.f69933a.f69934c.get(zznVar2);
                if (serviceConnectionC24978o2 != null && serviceConnectionC24978o2.f69927b == 3) {
                    String.valueOf(zznVar2).length();
                    new Exception();
                    ComponentName componentName = serviceConnectionC24978o2.f69931f;
                    ComponentName componentName2 = componentName;
                    if (componentName == null) {
                        componentName2 = zznVar2.f6062c;
                    }
                    ComponentName componentName3 = componentName2;
                    if (componentName2 == null) {
                        String str = zznVar2.f6061b;
                        Objects.requireNonNull(str, "null reference");
                        componentName3 = new ComponentName(str, "unknown");
                    }
                    serviceConnectionC24978o2.onServiceDisconnected(componentName3);
                }
            }
            return true;
        }
    }
}
