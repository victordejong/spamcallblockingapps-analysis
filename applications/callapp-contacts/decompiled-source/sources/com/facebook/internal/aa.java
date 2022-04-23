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
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/aa.class */
public abstract class aa implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    final Context f19804a;

    /* renamed from: b  reason: collision with root package name */
    public a f19805b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f19806c;

    /* renamed from: d  reason: collision with root package name */
    int f19807d;
    private final Handler e;
    private Messenger f;
    private int g;
    private final String h;
    private final int i;

    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/aa$a.class */
    public interface a {
        void a(Bundle bundle);
    }

    public aa(Context context, int i, int i2, int i3, String str) {
        Context applicationContext = context.getApplicationContext();
        this.f19804a = applicationContext != null ? applicationContext : context;
        this.g = i;
        this.f19807d = i2;
        this.h = str;
        this.i = i3;
        this.e = new Handler() { // from class: com.facebook.internal.aa.1
            @Override // android.os.Handler
            public final void handleMessage(Message message) {
                if (!com.facebook.internal.b.b.a.a(this)) {
                    try {
                        aa aaVar = aa.this;
                        if (message.what == aaVar.f19807d) {
                            Bundle data = message.getData();
                            if (data.getString("com.facebook.platform.status.ERROR_TYPE") != null) {
                                aaVar.b(null);
                            } else {
                                aaVar.b(data);
                            }
                            try {
                                aaVar.f19804a.unbindService(aaVar);
                            } catch (IllegalArgumentException e) {
                            }
                        }
                    } catch (Throwable th) {
                        com.facebook.internal.b.b.a.a(th, this);
                    }
                }
            }
        };
    }

    protected abstract void a(Bundle bundle);

    public final boolean a() {
        Intent a2;
        if (this.f19806c || z.a(this.i) == -1 || (a2 = z.a(this.f19804a)) == null) {
            return false;
        }
        this.f19806c = true;
        this.f19804a.bindService(a2, this, 1);
        return true;
    }

    final void b(Bundle bundle) {
        if (this.f19806c) {
            this.f19806c = false;
            a aVar = this.f19805b;
            if (aVar != null) {
                aVar.a(bundle);
            }
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.f = new Messenger(iBinder);
        Bundle bundle = new Bundle();
        bundle.putString("com.facebook.platform.extra.APPLICATION_ID", this.h);
        a(bundle);
        Message obtain = Message.obtain((Handler) null, this.g);
        obtain.arg1 = this.i;
        obtain.setData(bundle);
        obtain.replyTo = new Messenger(this.e);
        try {
            this.f.send(obtain);
        } catch (RemoteException e) {
            b(null);
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        this.f = null;
        try {
            this.f19804a.unbindService(this);
        } catch (IllegalArgumentException e) {
        }
        b(null);
    }
}
