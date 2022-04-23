package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import com.google.android.gms.common.stats.a;
import java.util.HashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/bm.class */
public final class bm implements ServiceConnection, bp {

    /* renamed from: a  reason: collision with root package name */
    final Map<ServiceConnection, ServiceConnection> f22865a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    int f22866b = 2;

    /* renamed from: c  reason: collision with root package name */
    boolean f22867c;

    /* renamed from: d  reason: collision with root package name */
    IBinder f22868d;
    final bk e;
    ComponentName f;
    final /* synthetic */ bo g;

    public bm(bo boVar, bk bkVar) {
        this.g = boVar;
        this.e = bkVar;
    }

    public final void a(ServiceConnection serviceConnection, ServiceConnection serviceConnection2) {
        this.f22865a.put(serviceConnection, serviceConnection2);
    }

    public final void a(String str) {
        a aVar;
        Context context;
        Context context2;
        a aVar2;
        Context context3;
        Handler handler;
        Handler handler2;
        long j;
        this.f22866b = 3;
        aVar = this.g.f22873d;
        context = this.g.f22871b;
        bk bkVar = this.e;
        context2 = this.g.f22871b;
        boolean a2 = aVar.a(context, str, bkVar.a(context2), this, this.e.f22863c);
        this.f22867c = a2;
        if (a2) {
            handler = this.g.f22872c;
            Message obtainMessage = handler.obtainMessage(1, this.e);
            handler2 = this.g.f22872c;
            j = this.g.f;
            handler2.sendMessageDelayed(obtainMessage, j);
            return;
        }
        this.f22866b = 2;
        try {
            aVar2 = this.g.f22873d;
            context3 = this.g.f22871b;
            aVar2.a(context3, this);
        } catch (IllegalArgumentException e) {
        }
    }

    public final boolean a() {
        return this.f22865a.isEmpty();
    }

    public final boolean a(ServiceConnection serviceConnection) {
        return this.f22865a.containsKey(serviceConnection);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        HashMap hashMap;
        Handler handler;
        hashMap = this.g.f22870a;
        synchronized (hashMap) {
            handler = this.g.f22872c;
            handler.removeMessages(1, this.e);
            this.f22868d = iBinder;
            this.f = componentName;
            for (ServiceConnection serviceConnection : this.f22865a.values()) {
                serviceConnection.onServiceConnected(componentName, iBinder);
            }
            this.f22866b = 1;
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        HashMap hashMap;
        Handler handler;
        hashMap = this.g.f22870a;
        synchronized (hashMap) {
            handler = this.g.f22872c;
            handler.removeMessages(1, this.e);
            this.f22868d = null;
            this.f = componentName;
            for (ServiceConnection serviceConnection : this.f22865a.values()) {
                serviceConnection.onServiceDisconnected(componentName);
            }
            this.f22866b = 2;
        }
    }
}
