package com.google.android.play.core.internal;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/r.class */
public final class r<T extends IInterface> {
    private static final Map<String, Handler> f = new HashMap();

    /* renamed from: a  reason: collision with root package name */
    final h f31383a;

    /* renamed from: b  reason: collision with root package name */
    final String f31384b;
    public T e;
    private final Context g;
    private boolean h;
    private final Intent i;
    private final n<T> j;
    private ServiceConnection l;

    /* renamed from: c  reason: collision with root package name */
    final List<i> f31385c = new ArrayList();
    private final IBinder.DeathRecipient k = new IBinder.DeathRecipient(this) { // from class: com.google.android.play.core.internal.j

        /* renamed from: a  reason: collision with root package name */
        private final r f31375a;

        /* JADX INFO: Access modifiers changed from: package-private */
        {
            this.f31375a = this;
        }

        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
            r rVar = this.f31375a;
            rVar.f31383a.c("reportBinderDeath", new Object[0]);
            if (rVar.f31386d.get() == null) {
                rVar.f31383a.c("%s : Binder has died.", rVar.f31384b);
                for (i iVar : rVar.f31385c) {
                    iVar.a(Build.VERSION.SDK_INT < 15 ? new RemoteException() : new RemoteException(String.valueOf(rVar.f31384b).concat(" : Binder has died.")));
                }
                rVar.f31385c.clear();
                return;
            }
            rVar.f31383a.c("calling onBinderDied", new Object[0]);
        }
    };

    /* renamed from: d  reason: collision with root package name */
    final WeakReference<m> f31386d = new WeakReference<>(null);

    public r(Context context, h hVar, String str, Intent intent, n<T> nVar) {
        this.g = context;
        this.f31383a = hVar;
        this.f31384b = str;
        this.i = intent;
        this.j = nVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(r rVar, i iVar) {
        if (rVar.e == null && !rVar.h) {
            rVar.f31383a.c("Initiate binding to the service.", new Object[0]);
            rVar.f31385c.add(iVar);
            q qVar = new q(rVar);
            rVar.l = qVar;
            rVar.h = true;
            if (!rVar.g.bindService(rVar.i, qVar, 1)) {
                rVar.f31383a.c("Failed to bind to the service.", new Object[0]);
                rVar.h = false;
                for (i iVar2 : rVar.f31385c) {
                    iVar2.a(new ar());
                }
                rVar.f31385c.clear();
            }
        } else if (rVar.h) {
            rVar.f31383a.c("Waiting to bind to the service.", new Object[0]);
            rVar.f31385c.add(iVar);
        } else {
            iVar.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(i iVar) {
        Handler handler;
        Map<String, Handler> map = f;
        synchronized (map) {
            if (!map.containsKey(this.f31384b)) {
                HandlerThread handlerThread = new HandlerThread(this.f31384b, 10);
                handlerThread.start();
                map.put(this.f31384b, new Handler(handlerThread.getLooper()));
            }
            handler = map.get(this.f31384b);
        }
        handler.post(iVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void f(r rVar) {
        rVar.f31383a.c("linkToDeath", new Object[0]);
        try {
            rVar.e.asBinder().linkToDeath(rVar.k, 0);
        } catch (RemoteException e) {
            rVar.f31383a.a(e, "linkToDeath failed", new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void h(r rVar) {
        rVar.f31383a.c("unlinkToDeath", new Object[0]);
        rVar.e.asBinder().unlinkToDeath(rVar.k, 0);
    }

    public final void a() {
        b(new l(this));
    }

    public final void a(i iVar) {
        b(new k(this, iVar.g, iVar));
    }
}
