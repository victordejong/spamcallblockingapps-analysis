package p189o4;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
/* renamed from: o4.i */
/* loaded from: classes-dex2jar.jar:o4/i.class */
public final class ServiceConnectionC3872i implements ServiceConnection {

    /* renamed from: a */
    public final /* synthetic */ C3873j f12354a;

    public /* synthetic */ ServiceConnectionC3872i(C3873j c3873j) {
        this.f12354a = c3873j;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.f12354a.f12357b.m1507e("ServiceConnectionImpl.onServiceConnected(%s)", componentName);
        this.f12354a.m1749a().post(new C3868g(this, iBinder));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.f12354a.f12357b.m1507e("ServiceConnectionImpl.onServiceDisconnected(%s)", componentName);
        this.f12354a.m1749a().post(new C3870h(this));
    }
}
