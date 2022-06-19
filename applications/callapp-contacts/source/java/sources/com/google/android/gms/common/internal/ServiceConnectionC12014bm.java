package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import com.google.android.gms.common.stats.C12088a;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.google.android.gms.common.internal.bm */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/bm.class */
public final class ServiceConnectionC12014bm implements ServiceConnection, AbstractC12017bp {

    /* renamed from: a */
    final Map<ServiceConnection, ServiceConnection> f39519a = new HashMap();

    /* renamed from: b */
    int f39520b = 2;

    /* renamed from: c */
    boolean f39521c;

    /* renamed from: d */
    IBinder f39522d;

    /* renamed from: e */
    final C12012bk f39523e;

    /* renamed from: f */
    ComponentName f39524f;

    /* renamed from: g */
    final /* synthetic */ C12016bo f39525g;

    public ServiceConnectionC12014bm(C12016bo c12016bo, C12012bk c12012bk) {
        this.f39525g = c12016bo;
        this.f39523e = c12012bk;
    }

    /* renamed from: a */
    public final void m19202a(ServiceConnection serviceConnection, ServiceConnection serviceConnection2) {
        this.f39519a.put(serviceConnection, serviceConnection2);
    }

    /* renamed from: a */
    public final void m19201a(String str) {
        C12088a c12088a;
        Context context;
        Context context2;
        C12088a c12088a2;
        Context context3;
        Handler handler;
        Handler handler2;
        long j;
        this.f39520b = 3;
        c12088a = this.f39525g.f39530d;
        context = this.f39525g.f39528b;
        C12012bk c12012bk = this.f39523e;
        context2 = this.f39525g.f39528b;
        boolean m19069a = c12088a.m19069a(context, str, c12012bk.m19205a(context2), this, this.f39523e.f39516c);
        this.f39521c = m19069a;
        if (m19069a) {
            handler = this.f39525g.f39529c;
            Message obtainMessage = handler.obtainMessage(1, this.f39523e);
            handler2 = this.f39525g.f39529c;
            j = this.f39525g.f39532f;
            handler2.sendMessageDelayed(obtainMessage, j);
            return;
        }
        this.f39520b = 2;
        try {
            c12088a2 = this.f39525g.f39530d;
            context3 = this.f39525g.f39528b;
            c12088a2.m19070a(context3, this);
        } catch (IllegalArgumentException e) {
        }
    }

    /* renamed from: a */
    public final boolean m19204a() {
        return this.f39519a.isEmpty();
    }

    /* renamed from: a */
    public final boolean m19203a(ServiceConnection serviceConnection) {
        return this.f39519a.containsKey(serviceConnection);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        HashMap hashMap;
        Handler handler;
        hashMap = this.f39525g.f39527a;
        synchronized (hashMap) {
            handler = this.f39525g.f39529c;
            handler.removeMessages(1, this.f39523e);
            this.f39522d = iBinder;
            this.f39524f = componentName;
            for (ServiceConnection serviceConnection : this.f39519a.values()) {
                serviceConnection.onServiceConnected(componentName, iBinder);
            }
            this.f39520b = 1;
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        HashMap hashMap;
        Handler handler;
        hashMap = this.f39525g.f39527a;
        synchronized (hashMap) {
            handler = this.f39525g.f39529c;
            handler.removeMessages(1, this.f39523e);
            this.f39522d = null;
            this.f39524f = componentName;
            for (ServiceConnection serviceConnection : this.f39519a.values()) {
                serviceConnection.onServiceDisconnected(componentName);
            }
            this.f39520b = 2;
        }
    }
}
