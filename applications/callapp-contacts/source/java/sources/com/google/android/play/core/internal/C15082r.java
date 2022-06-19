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
/* renamed from: com.google.android.play.core.internal.r */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/r.class */
public final class C15082r<T extends IInterface> {

    /* renamed from: f */
    private static final Map<String, Handler> f54787f = new HashMap();

    /* renamed from: a */
    final C15072h f54788a;

    /* renamed from: b */
    final String f54789b;

    /* renamed from: e */
    public T f54792e;

    /* renamed from: g */
    private final Context f54793g;

    /* renamed from: h */
    private boolean f54794h;

    /* renamed from: i */
    private final Intent f54795i;

    /* renamed from: j */
    private final AbstractC15078n<T> f54796j;

    /* renamed from: l */
    private ServiceConnection f54798l;

    /* renamed from: c */
    final List<AbstractRunnableC15073i> f54790c = new ArrayList();

    /* renamed from: k */
    private final IBinder.DeathRecipient f54797k = new IBinder.DeathRecipient(this) { // from class: com.google.android.play.core.internal.j

        /* renamed from: a */
        private final C15082r f54779a;

        /* JADX INFO: Access modifiers changed from: package-private */
        {
            this.f54779a = this;
        }

        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
            C15082r c15082r = this.f54779a;
            c15082r.f54788a.m9508c("reportBinderDeath", new Object[0]);
            if (c15082r.f54791d.get() != null) {
                c15082r.f54788a.m9508c("calling onBinderDied", new Object[0]);
                return;
            }
            c15082r.f54788a.m9508c("%s : Binder has died.", c15082r.f54789b);
            for (AbstractRunnableC15073i abstractRunnableC15073i : c15082r.f54790c) {
                abstractRunnableC15073i.m9506a(Build.VERSION.SDK_INT < 15 ? new RemoteException() : new RemoteException(String.valueOf(c15082r.f54789b).concat(" : Binder has died.")));
            }
            c15082r.f54790c.clear();
        }
    };

    /* renamed from: d */
    final WeakReference<AbstractC15077m> f54791d = new WeakReference<>(null);

    public C15082r(Context context, C15072h c15072h, String str, Intent intent, AbstractC15078n<T> abstractC15078n) {
        this.f54793g = context;
        this.f54788a = c15072h;
        this.f54789b = str;
        this.f54795i = intent;
        this.f54796j = abstractC15078n;
    }

    /* renamed from: a */
    public static /* synthetic */ void m9501a(C15082r c15082r, AbstractRunnableC15073i abstractRunnableC15073i) {
        if (c15082r.f54792e != null || c15082r.f54794h) {
            if (!c15082r.f54794h) {
                abstractRunnableC15073i.run();
                return;
            }
            c15082r.f54788a.m9508c("Waiting to bind to the service.", new Object[0]);
            c15082r.f54790c.add(abstractRunnableC15073i);
            return;
        }
        c15082r.f54788a.m9508c("Initiate binding to the service.", new Object[0]);
        c15082r.f54790c.add(abstractRunnableC15073i);
        ServiceConnectionC15081q serviceConnectionC15081q = new ServiceConnectionC15081q(c15082r);
        c15082r.f54798l = serviceConnectionC15081q;
        c15082r.f54794h = true;
        if (c15082r.f54793g.bindService(c15082r.f54795i, serviceConnectionC15081q, 1)) {
            return;
        }
        c15082r.f54788a.m9508c("Failed to bind to the service.", new Object[0]);
        c15082r.f54794h = false;
        for (AbstractRunnableC15073i abstractRunnableC15073i2 : c15082r.f54790c) {
            abstractRunnableC15073i2.m9506a(new C15027ar());
        }
        c15082r.f54790c.clear();
    }

    /* renamed from: b */
    public final void m9500b(AbstractRunnableC15073i abstractRunnableC15073i) {
        Handler handler;
        Map<String, Handler> map = f54787f;
        synchronized (map) {
            if (!map.containsKey(this.f54789b)) {
                HandlerThread handlerThread = new HandlerThread(this.f54789b, 10);
                handlerThread.start();
                map.put(this.f54789b, new Handler(handlerThread.getLooper()));
            }
            handler = map.get(this.f54789b);
        }
        handler.post(abstractRunnableC15073i);
    }

    /* renamed from: f */
    public static /* synthetic */ void m9494f(C15082r c15082r) {
        c15082r.f54788a.m9508c("linkToDeath", new Object[0]);
        try {
            c15082r.f54792e.asBinder().linkToDeath(c15082r.f54797k, 0);
        } catch (RemoteException e) {
            c15082r.f54788a.m9510a(e, "linkToDeath failed", new Object[0]);
        }
    }

    /* renamed from: h */
    public static /* synthetic */ void m9492h(C15082r c15082r) {
        c15082r.f54788a.m9508c("unlinkToDeath", new Object[0]);
        c15082r.f54792e.asBinder().unlinkToDeath(c15082r.f54797k, 0);
    }

    /* renamed from: a */
    public final void m9505a() {
        m9500b(new C15076l(this));
    }

    /* renamed from: a */
    public final void m9504a(AbstractRunnableC15073i abstractRunnableC15073i) {
        m9500b(new C15075k(this, abstractRunnableC15073i.f54778g, abstractRunnableC15073i));
    }
}
