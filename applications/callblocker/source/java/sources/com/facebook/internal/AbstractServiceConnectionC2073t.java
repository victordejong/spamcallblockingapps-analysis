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
/* renamed from: com.facebook.internal.t */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/t.class */
public abstract class AbstractServiceConnectionC2073t implements ServiceConnection {

    /* renamed from: a */
    private final Context f6098a;

    /* renamed from: b */
    private final Handler f6099b;

    /* renamed from: c */
    private AbstractC2075a f6100c;

    /* renamed from: d */
    private boolean f6101d;

    /* renamed from: e */
    private Messenger f6102e;

    /* renamed from: f */
    private int f6103f;

    /* renamed from: g */
    private int f6104g;

    /* renamed from: h */
    private final String f6105h;

    /* renamed from: i */
    private final int f6106i;

    /* renamed from: com.facebook.internal.t$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/t$a.class */
    public interface AbstractC2075a {
        /* renamed from: a */
        void mo15203a(Bundle bundle);
    }

    public AbstractServiceConnectionC2073t(Context context, int i, int i2, int i3, String str) {
        Context applicationContext = context.getApplicationContext();
        this.f6098a = applicationContext != null ? applicationContext : context;
        this.f6103f = i;
        this.f6104g = i2;
        this.f6105h = str;
        this.f6106i = i3;
        this.f6099b = new Handler() { // from class: com.facebook.internal.t.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                AbstractServiceConnectionC2073t.this.m15505a(message);
            }
        };
    }

    /* renamed from: b */
    private void m15502b(Bundle bundle) {
        if (!this.f6101d) {
            return;
        }
        this.f6101d = false;
        AbstractC2075a abstractC2075a = this.f6100c;
        if (abstractC2075a == null) {
            return;
        }
        abstractC2075a.mo15203a(bundle);
    }

    /* renamed from: c */
    private void m15501c() {
        Bundle bundle = new Bundle();
        bundle.putString("com.facebook.platform.extra.APPLICATION_ID", this.f6105h);
        mo15207a(bundle);
        Message obtain = Message.obtain((Handler) null, this.f6103f);
        obtain.arg1 = this.f6106i;
        obtain.setData(bundle);
        obtain.replyTo = new Messenger(this.f6099b);
        try {
            this.f6102e.send(obtain);
        } catch (RemoteException e) {
            m15502b(null);
        }
    }

    /* renamed from: a */
    protected abstract void mo15207a(Bundle bundle);

    /* renamed from: a */
    protected void m15505a(Message message) {
        if (message.what == this.f6104g) {
            Bundle data = message.getData();
            if (data.getString("com.facebook.platform.status.ERROR_TYPE") != null) {
                m15502b(null);
            } else {
                m15502b(data);
            }
            try {
                this.f6098a.unbindService(this);
            } catch (IllegalArgumentException e) {
            }
        }
    }

    /* renamed from: a */
    public void m15504a(AbstractC2075a abstractC2075a) {
        this.f6100c = abstractC2075a;
    }

    /* renamed from: a */
    public boolean m15506a() {
        boolean z;
        if (this.f6101d) {
            z = false;
        } else {
            z = false;
            if (C2064s.m15526b(this.f6106i) != -1) {
                Intent m15538a = C2064s.m15538a(this.f6098a);
                z = false;
                if (m15538a != null) {
                    this.f6101d = true;
                    this.f6098a.bindService(m15538a, this, 1);
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: b */
    public void m15503b() {
        this.f6101d = false;
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.f6102e = new Messenger(iBinder);
        m15501c();
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        this.f6102e = null;
        try {
            this.f6098a.unbindService(this);
        } catch (IllegalArgumentException e) {
        }
        m15502b(null);
    }
}
