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
import com.facebook.internal.p299b.p301b.C10249a;
/* renamed from: com.facebook.internal.aa */
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/aa.class */
public abstract class AbstractServiceConnectionC10206aa implements ServiceConnection {

    /* renamed from: a */
    final Context f33642a;

    /* renamed from: b */
    public AbstractC10208a f33643b;

    /* renamed from: c */
    public boolean f33644c;

    /* renamed from: d */
    int f33645d;

    /* renamed from: e */
    private final Handler f33646e;

    /* renamed from: f */
    private Messenger f33647f;

    /* renamed from: g */
    private int f33648g;

    /* renamed from: h */
    private final String f33649h;

    /* renamed from: i */
    private final int f33650i;

    /* renamed from: com.facebook.internal.aa$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/aa$a.class */
    public interface AbstractC10208a {
        /* renamed from: a */
        void mo22730a(Bundle bundle);
    }

    public AbstractServiceConnectionC10206aa(Context context, int i, int i2, int i3, String str) {
        Context applicationContext = context.getApplicationContext();
        this.f33642a = applicationContext != null ? applicationContext : context;
        this.f33648g = i;
        this.f33645d = i2;
        this.f33649h = str;
        this.f33650i = i3;
        this.f33646e = new Handler() { // from class: com.facebook.internal.aa.1
            @Override // android.os.Handler
            public final void handleMessage(Message message) {
                if (C10249a.m23108a(this)) {
                    return;
                }
                try {
                    AbstractServiceConnectionC10206aa abstractServiceConnectionC10206aa = AbstractServiceConnectionC10206aa.this;
                    if (message.what != abstractServiceConnectionC10206aa.f33645d) {
                        return;
                    }
                    Bundle data = message.getData();
                    if (data.getString("com.facebook.platform.status.ERROR_TYPE") != null) {
                        abstractServiceConnectionC10206aa.m23261b(null);
                    } else {
                        abstractServiceConnectionC10206aa.m23261b(data);
                    }
                    try {
                        abstractServiceConnectionC10206aa.f33642a.unbindService(abstractServiceConnectionC10206aa);
                    } catch (IllegalArgumentException e) {
                    }
                } catch (Throwable th) {
                    C10249a.m23106a(th, this);
                }
            }
        };
    }

    /* renamed from: a */
    protected abstract void mo22715a(Bundle bundle);

    /* renamed from: a */
    public final boolean m23262a() {
        Intent m22970a;
        if (this.f33644c || C10340z.m22971a(this.f33650i) == -1 || (m22970a = C10340z.m22970a(this.f33642a)) == null) {
            return false;
        }
        this.f33644c = true;
        this.f33642a.bindService(m22970a, this, 1);
        return true;
    }

    /* renamed from: b */
    final void m23261b(Bundle bundle) {
        if (!this.f33644c) {
            return;
        }
        this.f33644c = false;
        AbstractC10208a abstractC10208a = this.f33643b;
        if (abstractC10208a == null) {
            return;
        }
        abstractC10208a.mo22730a(bundle);
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.f33647f = new Messenger(iBinder);
        Bundle bundle = new Bundle();
        bundle.putString("com.facebook.platform.extra.APPLICATION_ID", this.f33649h);
        mo22715a(bundle);
        Message obtain = Message.obtain((Handler) null, this.f33648g);
        obtain.arg1 = this.f33650i;
        obtain.setData(bundle);
        obtain.replyTo = new Messenger(this.f33646e);
        try {
            this.f33647f.send(obtain);
        } catch (RemoteException e) {
            m23261b(null);
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        this.f33647f = null;
        try {
            this.f33642a.unbindService(this);
        } catch (IllegalArgumentException e) {
        }
        m23261b(null);
    }
}
