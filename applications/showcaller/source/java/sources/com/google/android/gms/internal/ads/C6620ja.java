package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* renamed from: com.google.android.gms.internal.ads.ja */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ja.class */
public final class C6620ja {

    /* renamed from: a */
    private static C6620ja f24818a;

    /* renamed from: b */
    private final Handler f24819b = new Handler(Looper.getMainLooper());

    /* renamed from: c */
    private final CopyOnWriteArrayList<WeakReference<AbstractC6434ea>> f24820c = new CopyOnWriteArrayList<>();

    /* renamed from: d */
    private final Object f24821d = new Object();

    /* renamed from: e */
    private int f24822e = 0;

    private C6620ja(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        context.registerReceiver(new C6545ha(this, null), intentFilter);
    }

    /* renamed from: a */
    public static C6620ja m14150a(Context context) {
        C6620ja c6620ja;
        synchronized (C6620ja.class) {
            try {
                if (f24818a == null) {
                    f24818a = new C6620ja(context);
                }
                c6620ja = f24818a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c6620ja;
    }

    /* renamed from: d */
    public static /* synthetic */ void m14147d(C6620ja c6620ja, int i) {
        synchronized (c6620ja.f24821d) {
            if (c6620ja.f24822e == i) {
                return;
            }
            c6620ja.f24822e = i;
            Iterator<WeakReference<AbstractC6434ea>> it = c6620ja.f24820c.iterator();
            while (it.hasNext()) {
                WeakReference<AbstractC6434ea> next = it.next();
                AbstractC6434ea abstractC6434ea = next.get();
                if (abstractC6434ea != null) {
                    abstractC6434ea.mo10287B(i);
                } else {
                    c6620ja.f24820c.remove(next);
                }
            }
        }
    }

    /* renamed from: b */
    public final void m14149b(AbstractC6434ea abstractC6434ea) {
        Iterator<WeakReference<AbstractC6434ea>> it = this.f24820c.iterator();
        while (it.hasNext()) {
            WeakReference<AbstractC6434ea> next = it.next();
            if (next.get() == null) {
                this.f24820c.remove(next);
            }
        }
        this.f24820c.add(new WeakReference<>(abstractC6434ea));
        this.f24819b.post(new Runnable(this, abstractC6434ea) { // from class: com.google.android.gms.internal.ads.ca

            /* renamed from: d */
            private final C6620ja f21130d;

            /* renamed from: e */
            private final AbstractC6434ea f21131e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f21130d = this;
                this.f21131e = abstractC6434ea;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f21131e.mo10287B(this.f21130d.m14148c());
            }
        });
    }

    /* renamed from: c */
    public final int m14148c() {
        int i;
        synchronized (this.f24821d) {
            i = this.f24822e;
        }
        return i;
    }
}
