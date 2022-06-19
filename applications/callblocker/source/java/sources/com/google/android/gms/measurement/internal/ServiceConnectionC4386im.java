package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Looper;
import com.google.android.gms.common.C2579b;
import com.google.android.gms.common.internal.AbstractC2623c;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.common.stats.C2694a;
/* renamed from: com.google.android.gms.measurement.internal.im */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/im.class */
public final class ServiceConnectionC4386im implements ServiceConnection, AbstractC2623c.AbstractC2624a, AbstractC2623c.AbstractC2625b {

    /* renamed from: a */
    final /* synthetic */ C4367hu f19170a;

    /* renamed from: b */
    private volatile boolean f19171b;

    /* renamed from: c */
    private volatile C4264dz f19172c;

    public ServiceConnectionC4386im(C4367hu c4367hu) {
        this.f19170a = c4367hu;
    }

    /* renamed from: a */
    public final void m4311a() {
        if (this.f19172c != null && (this.f19172c.m14081f() || this.f19172c.m14079g())) {
            this.f19172c.m14083e();
        }
        this.f19172c = null;
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c.AbstractC2624a
    /* renamed from: a */
    public final void mo4310a(int i) {
        C2662s.m13974b("MeasurementServiceConnection.onConnectionSuspended");
        this.f19170a.mo4030v().m4658i().m4654a("Service connection suspended");
        this.f19170a.mo4031u().m4587a(new RunnableC4390iq(this));
    }

    /* renamed from: a */
    public final void m4309a(Intent intent) {
        ServiceConnectionC4386im serviceConnectionC4386im;
        this.f19170a.mo4037o();
        Context mo4034r = this.f19170a.mo4034r();
        C2694a m13893a = C2694a.m13893a();
        synchronized (this) {
            if (this.f19171b) {
                this.f19170a.mo4030v().m4657j().m4654a("Connection attempt already in progress");
                return;
            }
            this.f19170a.mo4030v().m4657j().m4654a("Using local app measurement service");
            this.f19171b = true;
            serviceConnectionC4386im = this.f19170a.f19102a;
            m13893a.m13892a(mo4034r, intent, serviceConnectionC4386im, 129);
        }
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c.AbstractC2624a
    /* renamed from: a */
    public final void mo4308a(Bundle bundle) {
        C2662s.m13974b("MeasurementServiceConnection.onConnected");
        synchronized (this) {
            try {
                this.f19170a.mo4031u().m4587a(new RunnableC4391ir(this, this.f19172c.m14067v()));
            } catch (DeadObjectException | IllegalStateException e) {
                this.f19172c = null;
                this.f19171b = false;
            }
        }
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c.AbstractC2625b
    /* renamed from: a */
    public final void mo4307a(C2579b c2579b) {
        C2662s.m13974b("MeasurementServiceConnection.onConnectionFailed");
        C4263dy m4552d = this.f19170a.f18970z.m4552d();
        if (m4552d != null) {
            m4552d.m4662e().m4653a("Service connection failed", c2579b);
        }
        synchronized (this) {
            this.f19171b = false;
            this.f19172c = null;
        }
        this.f19170a.mo4031u().m4587a(new RunnableC4393it(this));
    }

    /* renamed from: b */
    public final void m4305b() {
        this.f19170a.mo4037o();
        Context mo4034r = this.f19170a.mo4034r();
        synchronized (this) {
            if (this.f19171b) {
                this.f19170a.mo4030v().m4657j().m4654a("Connection attempt already in progress");
            } else if (this.f19172c != null && (this.f19172c.m14079g() || this.f19172c.m14081f())) {
                this.f19170a.mo4030v().m4657j().m4654a("Already awaiting connection attempt");
            } else {
                this.f19172c = new C4264dz(mo4034r, Looper.getMainLooper(), this, this);
                this.f19170a.mo4030v().m4657j().m4654a("Connecting to remote service");
                this.f19171b = true;
                this.f19172c.m14072o();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x004d A[Catch: all -> 0x006b, TRY_ENTER, TryCatch #2 {, blocks: (B:6:0x000b, B:7:0x0020, B:9:0x0022, B:14:0x003a, B:17:0x004d, B:18:0x0052, B:18:0x0052, B:19:0x0055, B:21:0x0067, B:28:0x0070, B:30:0x0080, B:31:0x0088, B:34:0x0097, B:35:0x00a9, B:37:0x00be), top: B:44:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00be A[Catch: all -> 0x006b, TRY_ENTER, TRY_LEAVE, TryCatch #2 {, blocks: (B:6:0x000b, B:7:0x0020, B:9:0x0022, B:14:0x003a, B:17:0x004d, B:18:0x0052, B:18:0x0052, B:19:0x0055, B:21:0x0067, B:28:0x0070, B:30:0x0080, B:31:0x0088, B:34:0x0097, B:35:0x00a9, B:37:0x00be), top: B:44:0x0008 }] */
    @Override // android.content.ServiceConnection
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onServiceConnected(android.content.ComponentName r5, android.os.IBinder r6) {
        /*
            Method dump skipped, instructions count: 227
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.ServiceConnectionC4386im.onServiceConnected(android.content.ComponentName, android.os.IBinder):void");
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        C2662s.m13974b("MeasurementServiceConnection.onServiceDisconnected");
        this.f19170a.mo4030v().m4658i().m4654a("Service disconnected");
        this.f19170a.mo4031u().m4587a(new RunnableC4388io(this, componentName));
    }
}
