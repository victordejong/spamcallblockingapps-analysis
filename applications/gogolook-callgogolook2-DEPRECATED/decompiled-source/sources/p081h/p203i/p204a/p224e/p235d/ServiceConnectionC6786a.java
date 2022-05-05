package p081h.p203i.p204a.p224e.p235d;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
/* renamed from: h.i.a.e.d.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/a.class */
public class ServiceConnectionC6786a implements ServiceConnection {

    /* renamed from: a */
    public boolean f16677a = false;

    /* renamed from: b */
    public final BlockingQueue<IBinder> f16678b = new LinkedBlockingQueue();

    /* renamed from: a */
    public IBinder m21913a() throws InterruptedException {
        C7021t.m21279c("BlockingServiceConnection.getService() called on main thread");
        if (!this.f16677a) {
            this.f16677a = true;
            return this.f16678b.take();
        }
        throw new IllegalStateException("Cannot call get on this connection more than once");
    }

    /* renamed from: a */
    public IBinder m21912a(long j, TimeUnit timeUnit) throws InterruptedException, TimeoutException {
        C7021t.m21279c("BlockingServiceConnection.getServiceWithTimeout() called on main thread");
        if (!this.f16677a) {
            this.f16677a = true;
            IBinder poll = this.f16678b.poll(j, timeUnit);
            if (poll != null) {
                return poll;
            }
            throw new TimeoutException("Timed out waiting for the service connection");
        }
        throw new IllegalStateException("Cannot call get on this connection more than once");
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.f16678b.add(iBinder);
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
    }
}
