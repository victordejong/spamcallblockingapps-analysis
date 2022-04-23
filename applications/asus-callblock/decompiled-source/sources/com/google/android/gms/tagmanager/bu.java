package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.j;
import com.google.android.gms.tagmanager.dd;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/bu.class */
public final class bu implements dd.e {

    /* renamed from: a  reason: collision with root package name */
    final String f4313a;

    /* renamed from: b  reason: collision with root package name */
    final Context f4314b;
    private final ScheduledExecutorService c;
    private final a d;
    private ScheduledFuture<?> e;
    private boolean f;
    private dg g;
    private String h;
    private am<j.C0127j> i;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/bu$a.class */
    interface a {
        bt a(dg dgVar);
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/bu$b.class */
    interface b {
        ScheduledExecutorService a();
    }

    public bu(Context context, String str, dg dgVar) {
        this(context, str, dgVar, (byte) 0);
    }

    private bu(Context context, String str, dg dgVar, byte b2) {
        this.g = dgVar;
        this.f4314b = context;
        this.f4313a = str;
        this.c = new b() { // from class: com.google.android.gms.tagmanager.bu.1
            @Override // com.google.android.gms.tagmanager.bu.b
            public final ScheduledExecutorService a() {
                return Executors.newSingleThreadScheduledExecutor();
            }
        }.a();
        this.d = new a() { // from class: com.google.android.gms.tagmanager.bu.2
            @Override // com.google.android.gms.tagmanager.bu.a
            public final bt a(dg dgVar2) {
                return new bt(bu.this.f4314b, bu.this.f4313a, dgVar2);
            }
        };
    }

    private void b() {
        synchronized (this) {
            if (this.f) {
                throw new IllegalStateException("called method after closed");
            }
        }
    }

    @Override // com.google.android.gms.common.api.d
    public final void a() {
        synchronized (this) {
            b();
            if (this.e != null) {
                this.e.cancel(false);
            }
            this.c.shutdown();
            this.f = true;
        }
    }

    @Override // com.google.android.gms.tagmanager.dd.e
    public final void a(long j, String str) {
        synchronized (this) {
            String str2 = this.f4313a;
            an.e(new StringBuilder(String.valueOf(str2).length() + 55).append("loadAfterDelay: containerId=").append(str2).append(" delay=").append(j).toString());
            b();
            if (this.i == null) {
                throw new IllegalStateException("callback must be set before loadAfterDelay() is called.");
            }
            if (this.e != null) {
                this.e.cancel(false);
            }
            ScheduledExecutorService scheduledExecutorService = this.c;
            bt a2 = this.d.a(this.g);
            a2.f4312b = this.i;
            String str3 = this.h;
            if (str3 == null) {
                a2.c = a2.f4311a;
            } else {
                String valueOf = String.valueOf(str3);
                an.d(valueOf.length() != 0 ? "Setting CTFE URL path: ".concat(valueOf) : new String("Setting CTFE URL path: "));
                a2.c = str3;
            }
            String valueOf2 = String.valueOf(str);
            an.d(valueOf2.length() != 0 ? "Setting previous container version: ".concat(valueOf2) : new String("Setting previous container version: "));
            a2.d = str;
            this.e = scheduledExecutorService.schedule(a2, j, TimeUnit.MILLISECONDS);
        }
    }

    @Override // com.google.android.gms.tagmanager.dd.e
    public final void a(am<j.C0127j> amVar) {
        synchronized (this) {
            b();
            this.i = amVar;
        }
    }

    @Override // com.google.android.gms.tagmanager.dd.e
    public final void a(String str) {
        synchronized (this) {
            b();
            this.h = str;
        }
    }
}
