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
/* renamed from: com.google.android.play.core.internal.n */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/internal/n.class */
public final class C8504n<T extends IInterface> {

    /* renamed from: a */
    private static final Map<String, Handler> f38048a = new HashMap();

    /* renamed from: b */
    private final Context f38049b;

    /* renamed from: c */
    private final C8466a f38050c;

    /* renamed from: d */
    private final String f38051d;

    /* renamed from: f */
    private boolean f38053f;

    /* renamed from: g */
    private final Intent f38054g;

    /* renamed from: h */
    private final AbstractC8496j<T> f38055h;

    /* renamed from: k */
    private ServiceConnection f38058k;

    /* renamed from: l */
    private T f38059l;

    /* renamed from: e */
    private final List<AbstractRunnableC8470b> f38052e = new ArrayList();

    /* renamed from: j */
    private final IBinder.DeathRecipient f38057j = new IBinder.DeathRecipient(this) { // from class: com.google.android.play.core.internal.c

        /* renamed from: a */
        private final C8504n f38027a;

        /* JADX INFO: Access modifiers changed from: package-private */
        {
            this.f38027a = this;
        }

        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
            this.f38027a.m3492n();
        }
    };

    /* renamed from: i */
    private final WeakReference<AbstractC8494i> f38056i = new WeakReference<>(null);

    public C8504n(Context context, C8466a c8466a, String str, Intent intent, AbstractC8496j<T> abstractC8496j) {
        this.f38049b = context;
        this.f38050c = c8466a;
        this.f38051d = str;
        this.f38054g = intent;
        this.f38055h = abstractC8496j;
    }

    /* renamed from: d */
    public static /* synthetic */ void m3502d(C8504n c8504n, AbstractRunnableC8470b abstractRunnableC8470b) {
        if (c8504n.f38059l != null || c8504n.f38053f) {
            if (!c8504n.f38053f) {
                abstractRunnableC8470b.run();
                return;
            }
            c8504n.f38050c.m3564d("Waiting to bind to the service.", new Object[0]);
            c8504n.f38052e.add(abstractRunnableC8470b);
            return;
        }
        c8504n.f38050c.m3564d("Initiate binding to the service.", new Object[0]);
        c8504n.f38052e.add(abstractRunnableC8470b);
        ServiceConnectionC8502m serviceConnectionC8502m = new ServiceConnectionC8502m(c8504n);
        c8504n.f38058k = serviceConnectionC8502m;
        c8504n.f38053f = true;
        if (c8504n.f38049b.bindService(c8504n.f38054g, serviceConnectionC8502m, 1)) {
            return;
        }
        c8504n.f38050c.m3564d("Failed to bind to the service.", new Object[0]);
        c8504n.f38053f = false;
        for (AbstractRunnableC8470b abstractRunnableC8470b2 : c8504n.f38052e) {
            abstractRunnableC8470b2.m3559b(new C8469ar());
        }
        c8504n.f38052e.clear();
    }

    /* renamed from: j */
    public static /* synthetic */ void m3496j(C8504n c8504n) {
        c8504n.f38050c.m3564d("linkToDeath", new Object[0]);
        try {
            c8504n.f38059l.asBinder().linkToDeath(c8504n.f38057j, 0);
        } catch (RemoteException e) {
            c8504n.f38050c.m3565c(e, "linkToDeath failed", new Object[0]);
        }
    }

    /* renamed from: m */
    public static /* synthetic */ void m3493m(C8504n c8504n) {
        c8504n.f38050c.m3564d("unlinkToDeath", new Object[0]);
        c8504n.f38059l.asBinder().unlinkToDeath(c8504n.f38057j, 0);
    }

    /* renamed from: r */
    public final void m3488r(AbstractRunnableC8470b abstractRunnableC8470b) {
        Handler handler;
        Map<String, Handler> map = f38048a;
        synchronized (map) {
            if (!map.containsKey(this.f38051d)) {
                HandlerThread handlerThread = new HandlerThread(this.f38051d, 10);
                handlerThread.start();
                map.put(this.f38051d, new Handler(handlerThread.getLooper()));
            }
            handler = map.get(this.f38051d);
        }
        handler.post(abstractRunnableC8470b);
    }

    /* renamed from: a */
    public final void m3505a(AbstractRunnableC8470b abstractRunnableC8470b) {
        m3488r(new C8479d(this, abstractRunnableC8470b.m3558c(), abstractRunnableC8470b));
    }

    /* renamed from: b */
    public final void m3504b() {
        m3488r(new C8482e(this));
    }

    /* renamed from: c */
    public final T m3503c() {
        return this.f38059l;
    }

    /* renamed from: n */
    public final /* bridge */ /* synthetic */ void m3492n() {
        this.f38050c.m3564d("reportBinderDeath", new Object[0]);
        AbstractC8494i abstractC8494i = this.f38056i.get();
        if (abstractC8494i != null) {
            this.f38050c.m3564d("calling onBinderDied", new Object[0]);
            abstractC8494i.m3510a();
            return;
        }
        this.f38050c.m3564d("%s : Binder has died.", this.f38051d);
        for (AbstractRunnableC8470b abstractRunnableC8470b : this.f38052e) {
            abstractRunnableC8470b.m3559b(Build.VERSION.SDK_INT < 15 ? new RemoteException() : new RemoteException(String.valueOf(this.f38051d).concat(" : Binder has died.")));
        }
        this.f38052e.clear();
    }
}
