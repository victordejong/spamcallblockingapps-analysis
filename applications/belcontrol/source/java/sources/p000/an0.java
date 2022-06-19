package p000;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
/* renamed from: an0 */
/* loaded from: classes-dex2jar.jar:an0.class */
public abstract class an0 implements ServiceConnection {

    /* renamed from: a */
    public final Context f358a;

    /* renamed from: b */
    public final Handler f359b;

    /* renamed from: c */
    public AbstractC0047b f360c;

    /* renamed from: d */
    public boolean f361d;

    /* renamed from: f */
    public Messenger f362f;

    /* renamed from: g */
    public int f363g;

    /* renamed from: h */
    public int f364h;

    /* renamed from: j */
    public final String f365j;

    /* renamed from: k */
    public final int f366k;

    /* renamed from: an0$a */
    /* loaded from: classes-dex2jar.jar:an0$a.class */
    public class HandlerC0046a extends Handler {
        public HandlerC0046a() {
            an0.this = r4;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            an0.this.m7056c(message);
        }
    }

    /* renamed from: an0$b */
    /* loaded from: classes-dex2jar.jar:an0$b.class */
    public interface AbstractC0047b {
        /* renamed from: a */
        void m7051a(Bundle bundle);
    }

    public an0(Context context, int i, int i2, int i3, String str) {
        Context applicationContext = context.getApplicationContext();
        this.f358a = applicationContext != null ? applicationContext : context;
        this.f363g = i;
        this.f364h = i2;
        this.f365j = str;
        this.f366k = i3;
        this.f359b = new HandlerC0046a();
    }

    /* renamed from: a */
    public final void m7058a(Bundle bundle) {
        if (!this.f361d) {
            return;
        }
        this.f361d = false;
        AbstractC0047b abstractC0047b = this.f360c;
        if (abstractC0047b == null) {
            return;
        }
        abstractC0047b.m7051a(bundle);
    }

    /* renamed from: b */
    public void m7057b() {
        this.f361d = false;
    }

    /* renamed from: c */
    public void m7056c(Message message) {
        if (message.what == this.f364h) {
            Bundle data = message.getData();
            Bundle bundle = data;
            if (data.getString("com.facebook.platform.status.ERROR_TYPE") != null) {
                bundle = null;
            }
            m7058a(bundle);
            try {
                this.f358a.unbindService(this);
            } catch (IllegalArgumentException e) {
            }
        }
    }

    /* renamed from: d */
    public abstract void m7055d(Bundle bundle);

    /* renamed from: e */
    public final void m7054e() {
        Bundle bundle = new Bundle();
        bundle.putString("com.facebook.platform.extra.APPLICATION_ID", this.f365j);
        m7055d(bundle);
        Message obtain = Message.obtain((Handler) null, this.f363g);
        obtain.arg1 = this.f366k;
        obtain.setData(bundle);
        obtain.replyTo = new Messenger(this.f359b);
        try {
            this.f362f.send(obtain);
        } catch (RemoteException e) {
            m7058a(null);
        }
    }

    /* renamed from: f */
    public void m7053f(AbstractC0047b abstractC0047b) {
        this.f360c = abstractC0047b;
    }

    /* renamed from: g */
    public boolean m7052g() {
        Intent m;
        if (this.f361d || zm0.w(this.f366k) == -1 || (m = zm0.m(this.f358a)) == null) {
            return false;
        }
        this.f361d = true;
        this.f358a.bindService(m, this, 1);
        return true;
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.f362f = new Messenger(iBinder);
        m7054e();
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        this.f362f = null;
        try {
            this.f358a.unbindService(this);
        } catch (IllegalArgumentException e) {
        }
        m7058a(null);
    }
}
