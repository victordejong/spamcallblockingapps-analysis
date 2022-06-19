package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import com.google.android.gms.common.internal.AbstractC2643i;
import com.google.android.gms.common.stats.C2694a;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.google.android.gms.common.internal.al */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/al.class */
public final class ServiceConnectionC2609al implements ServiceConnection {

    /* renamed from: a */
    private final Map<ServiceConnection, ServiceConnection> f7300a = new HashMap();

    /* renamed from: b */
    private int f7301b = 2;

    /* renamed from: c */
    private boolean f7302c;

    /* renamed from: d */
    private IBinder f7303d;

    /* renamed from: e */
    private final AbstractC2643i.C2644a f7304e;

    /* renamed from: f */
    private ComponentName f7305f;

    /* renamed from: g */
    private final /* synthetic */ C2607aj f7306g;

    public ServiceConnectionC2609al(C2607aj c2607aj, AbstractC2643i.C2644a c2644a) {
        this.f7306g = c2607aj;
        this.f7304e = c2644a;
    }

    /* renamed from: a */
    public final void m14129a(ServiceConnection serviceConnection, ServiceConnection serviceConnection2, String str) {
        Context context;
        C2694a unused;
        Context unused2;
        unused = this.f7306g.f7295d;
        unused2 = this.f7306g.f7293b;
        AbstractC2643i.C2644a c2644a = this.f7304e;
        context = this.f7306g.f7293b;
        c2644a.m14012a(context);
        this.f7300a.put(serviceConnection, serviceConnection2);
    }

    /* renamed from: a */
    public final void m14128a(ServiceConnection serviceConnection, String str) {
        C2694a unused;
        Context unused2;
        unused = this.f7306g.f7295d;
        unused2 = this.f7306g.f7293b;
        this.f7300a.remove(serviceConnection);
    }

    /* renamed from: a */
    public final void m14127a(String str) {
        C2694a c2694a;
        Context context;
        Context context2;
        C2694a c2694a2;
        Context context3;
        Handler handler;
        Handler handler2;
        long j;
        this.f7301b = 3;
        c2694a = this.f7306g.f7295d;
        context = this.f7306g.f7293b;
        AbstractC2643i.C2644a c2644a = this.f7304e;
        context2 = this.f7306g.f7293b;
        this.f7302c = c2694a.m13890a(context, str, c2644a.m14012a(context2), this, this.f7304e.m14010c());
        if (this.f7302c) {
            handler = this.f7306g.f7294c;
            Message obtainMessage = handler.obtainMessage(1, this.f7304e);
            handler2 = this.f7306g.f7294c;
            j = this.f7306g.f7297f;
            handler2.sendMessageDelayed(obtainMessage, j);
            return;
        }
        this.f7301b = 2;
        try {
            c2694a2 = this.f7306g.f7295d;
            context3 = this.f7306g.f7293b;
            c2694a2.m13891a(context3, this);
        } catch (IllegalArgumentException e) {
        }
    }

    /* renamed from: a */
    public final boolean m14131a() {
        return this.f7302c;
    }

    /* renamed from: a */
    public final boolean m14130a(ServiceConnection serviceConnection) {
        return this.f7300a.containsKey(serviceConnection);
    }

    /* renamed from: b */
    public final int m14126b() {
        return this.f7301b;
    }

    /* renamed from: b */
    public final void m14125b(String str) {
        Handler handler;
        C2694a c2694a;
        Context context;
        handler = this.f7306g.f7294c;
        handler.removeMessages(1, this.f7304e);
        c2694a = this.f7306g.f7295d;
        context = this.f7306g.f7293b;
        c2694a.m13891a(context, this);
        this.f7302c = false;
        this.f7301b = 2;
    }

    /* renamed from: c */
    public final boolean m14124c() {
        return this.f7300a.isEmpty();
    }

    /* renamed from: d */
    public final IBinder m14123d() {
        return this.f7303d;
    }

    /* renamed from: e */
    public final ComponentName m14122e() {
        return this.f7305f;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        HashMap hashMap;
        Handler handler;
        hashMap = this.f7306g.f7292a;
        synchronized (hashMap) {
            handler = this.f7306g.f7294c;
            handler.removeMessages(1, this.f7304e);
            this.f7303d = iBinder;
            this.f7305f = componentName;
            for (ServiceConnection serviceConnection : this.f7300a.values()) {
                serviceConnection.onServiceConnected(componentName, iBinder);
            }
            this.f7301b = 1;
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        HashMap hashMap;
        Handler handler;
        hashMap = this.f7306g.f7292a;
        synchronized (hashMap) {
            handler = this.f7306g.f7294c;
            handler.removeMessages(1, this.f7304e);
            this.f7303d = null;
            this.f7305f = componentName;
            for (ServiceConnection serviceConnection : this.f7300a.values()) {
                serviceConnection.onServiceDisconnected(componentName);
            }
            this.f7301b = 2;
        }
    }
}
