package p1727n3.p1868v;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import p1727n3.p1868v.AbstractC27028u;
/* renamed from: n3.v.e0 */
/* loaded from: classes-dex2jar.jar:n3/v/e0.class */
public class ServiceC26999e0 extends Service implements AbstractC26992b0 {

    /* renamed from: a */
    public final C27031u0 f75517a = new C27031u0(this);

    @Override // p1727n3.p1868v.AbstractC26992b0
    public AbstractC27028u getLifecycle() {
        return this.f75517a.f75572a;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        this.f75517a.m983a(AbstractC27028u.EnumC27029a.ON_START);
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        this.f75517a.m983a(AbstractC27028u.EnumC27029a.ON_CREATE);
        super.onCreate();
    }

    @Override // android.app.Service
    public void onDestroy() {
        C27031u0 c27031u0 = this.f75517a;
        c27031u0.m983a(AbstractC27028u.EnumC27029a.ON_STOP);
        c27031u0.m983a(AbstractC27028u.EnumC27029a.ON_DESTROY);
        super.onDestroy();
    }

    @Override // android.app.Service
    public void onStart(Intent intent, int i) {
        this.f75517a.m983a(AbstractC27028u.EnumC27029a.ON_START);
        super.onStart(intent, i);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        return super.onStartCommand(intent, i, i2);
    }
}
