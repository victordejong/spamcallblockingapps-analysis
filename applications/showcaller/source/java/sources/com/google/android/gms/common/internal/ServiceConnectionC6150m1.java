package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import com.google.android.gms.common.stats.C6217a;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.google.android.gms.common.internal.m1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/m1.class */
public final class ServiceConnectionC6150m1 implements ServiceConnection, AbstractC6160p1 {

    /* renamed from: a */
    private final Map<ServiceConnection, ServiceConnection> f19572a = new HashMap();

    /* renamed from: b */
    private int f19573b = 2;

    /* renamed from: c */
    private boolean f19574c;

    /* renamed from: d */
    private IBinder f19575d;

    /* renamed from: e */
    private final C6143k1 f19576e;

    /* renamed from: f */
    private ComponentName f19577f;

    /* renamed from: g */
    final /* synthetic */ C6157o1 f19578g;

    public ServiceConnectionC6150m1(C6157o1 c6157o1, C6143k1 c6143k1) {
        this.f19578g = c6157o1;
        this.f19576e = c6143k1;
    }

    /* renamed from: a */
    public final void m17040a(String str) {
        C6217a c6217a;
        Context context;
        Context context2;
        C6217a c6217a2;
        Context context3;
        Handler handler;
        Handler handler2;
        long j;
        this.f19573b = 3;
        c6217a = this.f19578g.f19584g;
        context = this.f19578g.f19582e;
        C6143k1 c6143k1 = this.f19576e;
        context2 = this.f19578g.f19582e;
        boolean m16844d = c6217a.m16844d(context, str, c6143k1.m17045d(context2), this, this.f19576e.m17046c());
        this.f19574c = m16844d;
        if (m16844d) {
            handler = this.f19578g.f19583f;
            Message obtainMessage = handler.obtainMessage(1, this.f19576e);
            handler2 = this.f19578g.f19583f;
            j = this.f19578g.f19586i;
            handler2.sendMessageDelayed(obtainMessage, j);
            return;
        }
        this.f19573b = 2;
        try {
            c6217a2 = this.f19578g.f19584g;
            context3 = this.f19578g.f19582e;
            c6217a2.m16845c(context3, this);
        } catch (IllegalArgumentException e) {
        }
    }

    /* renamed from: b */
    public final void m17039b(String str) {
        Handler handler;
        C6217a c6217a;
        Context context;
        handler = this.f19578g.f19583f;
        handler.removeMessages(1, this.f19576e);
        c6217a = this.f19578g.f19584g;
        context = this.f19578g.f19582e;
        c6217a.m16845c(context, this);
        this.f19574c = false;
        this.f19573b = 2;
    }

    /* renamed from: c */
    public final void m17038c(ServiceConnection serviceConnection, ServiceConnection serviceConnection2, String str) {
        this.f19572a.put(serviceConnection, serviceConnection2);
    }

    /* renamed from: d */
    public final void m17037d(ServiceConnection serviceConnection, String str) {
        this.f19572a.remove(serviceConnection);
    }

    /* renamed from: e */
    public final boolean m17036e() {
        return this.f19574c;
    }

    /* renamed from: f */
    public final int m17035f() {
        return this.f19573b;
    }

    /* renamed from: g */
    public final boolean m17034g(ServiceConnection serviceConnection) {
        return this.f19572a.containsKey(serviceConnection);
    }

    /* renamed from: h */
    public final boolean m17033h() {
        return this.f19572a.isEmpty();
    }

    /* renamed from: i */
    public final IBinder m17032i() {
        return this.f19575d;
    }

    /* renamed from: j */
    public final ComponentName m17031j() {
        return this.f19577f;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        HashMap hashMap;
        Handler handler;
        hashMap = this.f19578g.f19581d;
        synchronized (hashMap) {
            handler = this.f19578g.f19583f;
            handler.removeMessages(1, this.f19576e);
            this.f19575d = iBinder;
            this.f19577f = componentName;
            for (ServiceConnection serviceConnection : this.f19572a.values()) {
                serviceConnection.onServiceConnected(componentName, iBinder);
            }
            this.f19573b = 1;
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        HashMap hashMap;
        Handler handler;
        hashMap = this.f19578g.f19581d;
        synchronized (hashMap) {
            handler = this.f19578g.f19583f;
            handler.removeMessages(1, this.f19576e);
            this.f19575d = null;
            this.f19577f = componentName;
            for (ServiceConnection serviceConnection : this.f19572a.values()) {
                serviceConnection.onServiceDisconnected(componentName);
            }
            this.f19573b = 2;
        }
    }
}
