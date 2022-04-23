package com.facebook.internal;

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
/* renamed from: com.facebook.internal.b0 */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/b0.class */
public abstract class AbstractServiceConnectionC2385b0 implements ServiceConnection {

    /* renamed from: a */
    public final Context f2962a;

    /* renamed from: b */
    public final Handler f2963b;

    /* renamed from: c */
    public AbstractC2387b f2964c;

    /* renamed from: d */
    public boolean f2965d;

    /* renamed from: e */
    public Messenger f2966e;

    /* renamed from: f */
    public int f2967f;

    /* renamed from: g */
    public int f2968g;

    /* renamed from: h */
    public final String f2969h;

    /* renamed from: i */
    public final int f2970i;

    /* renamed from: com.facebook.internal.b0$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/b0$a.class */
    public class HandlerC2386a extends Handler {
        public HandlerC2386a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            AbstractServiceConnectionC2385b0.this.m34914a(message);
        }
    }

    /* renamed from: com.facebook.internal.b0$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/b0$b.class */
    public interface AbstractC2387b {
        /* renamed from: a */
        void mo34193a(Bundle bundle);
    }

    public AbstractServiceConnectionC2385b0(Context context, int i, int i2, int i3, String str) {
        Context applicationContext = context.getApplicationContext();
        this.f2962a = applicationContext != null ? applicationContext : context;
        this.f2967f = i;
        this.f2968g = i2;
        this.f2969h = str;
        this.f2970i = i3;
        this.f2963b = new HandlerC2386a();
    }

    /* renamed from: a */
    public void m34916a() {
        this.f2965d = false;
    }

    /* renamed from: a */
    public final void m34915a(Bundle bundle) {
        if (this.f2965d) {
            this.f2965d = false;
            AbstractC2387b bVar = this.f2964c;
            if (bVar != null) {
                bVar.mo34193a(bundle);
            }
        }
    }

    /* renamed from: a */
    public void m34914a(Message message) {
        if (message.what == this.f2968g) {
            Bundle data = message.getData();
            if (data.getString("com.facebook.platform.status.ERROR_TYPE") != null) {
                m34915a((Bundle) null);
            } else {
                m34915a(data);
            }
            try {
                this.f2962a.unbindService(this);
            } catch (IllegalArgumentException e) {
            }
        }
    }

    /* renamed from: a */
    public void m34913a(AbstractC2387b bVar) {
        this.f2964c = bVar;
    }

    /* renamed from: b */
    public final void m34912b() {
        Bundle bundle = new Bundle();
        bundle.putString("com.facebook.platform.extra.APPLICATION_ID", this.f2969h);
        mo34167b(bundle);
        Message obtain = Message.obtain((Handler) null, this.f2967f);
        obtain.arg1 = this.f2970i;
        obtain.setData(bundle);
        obtain.replyTo = new Messenger(this.f2963b);
        try {
            this.f2966e.send(obtain);
        } catch (RemoteException e) {
            m34915a((Bundle) null);
        }
    }

    /* renamed from: b */
    public abstract void mo34167b(Bundle bundle);

    /* renamed from: c */
    public boolean m34911c() {
        Intent a;
        if (this.f2965d || C2372a0.m34973a(this.f2970i) == -1 || (a = C2372a0.m34972a(this.f2962a)) == null) {
            return false;
        }
        this.f2965d = true;
        this.f2962a.bindService(a, this, 1);
        return true;
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.f2966e = new Messenger(iBinder);
        m34912b();
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        this.f2966e = null;
        try {
            this.f2962a.unbindService(this);
        } catch (IllegalArgumentException e) {
        }
        m34915a((Bundle) null);
    }
}
