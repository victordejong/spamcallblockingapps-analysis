package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import com.google.android.gms.common.internal.GmsClientSupervisor;
import com.google.android.gms.common.stats.ConnectionTracker;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zzf.class */
public final class zzf implements ServiceConnection {

    /* renamed from: a */
    private final Set<ServiceConnection> f7562a = new HashSet();

    /* renamed from: b */
    private int f7563b = 2;

    /* renamed from: c */
    private boolean f7564c;

    /* renamed from: d */
    private IBinder f7565d;

    /* renamed from: e */
    private final GmsClientSupervisor.zza f7566e;

    /* renamed from: f */
    private ComponentName f7567f;

    /* renamed from: g */
    private final /* synthetic */ zze f7568g;

    public zzf(zze zzeVar, GmsClientSupervisor.zza zzaVar) {
        this.f7568g = zzeVar;
        this.f7566e = zzaVar;
    }

    /* renamed from: a */
    public final IBinder m14423a() {
        return this.f7565d;
    }

    /* renamed from: b */
    public final ComponentName m14422b() {
        return this.f7567f;
    }

    /* renamed from: c */
    public final int m14421c() {
        return this.f7563b;
    }

    /* renamed from: d */
    public final boolean m14420d() {
        return this.f7564c;
    }

    /* renamed from: e */
    public final void m14419e(ServiceConnection serviceConnection, String str) {
        Context context;
        ConnectionTracker unused;
        Context unused2;
        unused = this.f7568g.f7559f;
        unused2 = this.f7568g.f7557d;
        GmsClientSupervisor.zza zzaVar = this.f7566e;
        context = this.f7568g.f7557d;
        zzaVar.m14545c(context);
        this.f7562a.add(serviceConnection);
    }

    /* renamed from: f */
    public final boolean m14418f(ServiceConnection serviceConnection) {
        return this.f7562a.contains(serviceConnection);
    }

    /* renamed from: g */
    public final void m14417g(ServiceConnection serviceConnection, String str) {
        ConnectionTracker unused;
        Context unused2;
        unused = this.f7568g.f7559f;
        unused2 = this.f7568g.f7557d;
        this.f7562a.remove(serviceConnection);
    }

    /* renamed from: h */
    public final void m14416h(String str) {
        ConnectionTracker connectionTracker;
        Context context;
        Context context2;
        ConnectionTracker connectionTracker2;
        Context context3;
        Handler handler;
        Handler handler2;
        long j;
        this.f7563b = 3;
        connectionTracker = this.f7568g.f7559f;
        context = this.f7568g.f7557d;
        GmsClientSupervisor.zza zzaVar = this.f7566e;
        context2 = this.f7568g.f7557d;
        boolean d = connectionTracker.m14370d(context, str, zzaVar.m14545c(context2), this, this.f7566e.m14544d());
        this.f7564c = d;
        if (d) {
            handler = this.f7568g.f7558e;
            Message obtainMessage = handler.obtainMessage(1, this.f7566e);
            handler2 = this.f7568g.f7558e;
            j = this.f7568g.f7561h;
            handler2.sendMessageDelayed(obtainMessage, j);
            return;
        }
        this.f7563b = 2;
        try {
            connectionTracker2 = this.f7568g.f7559f;
            context3 = this.f7568g.f7557d;
            connectionTracker2.m14371c(context3, this);
        } catch (IllegalArgumentException e) {
        }
    }

    /* renamed from: i */
    public final void m14415i(String str) {
        Handler handler;
        ConnectionTracker connectionTracker;
        Context context;
        handler = this.f7568g.f7558e;
        handler.removeMessages(1, this.f7566e);
        connectionTracker = this.f7568g.f7559f;
        context = this.f7568g.f7557d;
        connectionTracker.m14371c(context, this);
        this.f7564c = false;
        this.f7563b = 2;
    }

    /* renamed from: j */
    public final boolean m14414j() {
        return this.f7562a.isEmpty();
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        HashMap hashMap;
        Handler handler;
        hashMap = this.f7568g.f7556c;
        synchronized (hashMap) {
            handler = this.f7568g.f7558e;
            handler.removeMessages(1, this.f7566e);
            this.f7565d = iBinder;
            this.f7567f = componentName;
            for (ServiceConnection serviceConnection : this.f7562a) {
                serviceConnection.onServiceConnected(componentName, iBinder);
            }
            this.f7563b = 1;
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        HashMap hashMap;
        Handler handler;
        hashMap = this.f7568g.f7556c;
        synchronized (hashMap) {
            handler = this.f7568g.f7558e;
            handler.removeMessages(1, this.f7566e);
            this.f7565d = null;
            this.f7567f = componentName;
            for (ServiceConnection serviceConnection : this.f7562a) {
                serviceConnection.onServiceDisconnected(componentName);
            }
            this.f7563b = 2;
        }
    }
}
