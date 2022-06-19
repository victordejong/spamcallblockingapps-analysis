package com.google.android.material.snackbar;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.snackbar.b */
/* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/b.class */
public class C4786b {

    /* renamed from: a */
    private static C4786b f20636a;

    /* renamed from: b */
    private final Object f20637b = new Object();

    /* renamed from: c */
    private final Handler f20638c = new Handler(Looper.getMainLooper(), new Handler.Callback() { // from class: com.google.android.material.snackbar.b.1
        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            boolean z;
            switch (message.what) {
                case 0:
                    C4786b.this.m2480a((C4789b) message.obj);
                    z = true;
                    break;
                default:
                    z = false;
                    break;
            }
            return z;
        }
    });

    /* renamed from: d */
    private C4789b f20639d;

    /* renamed from: e */
    private C4789b f20640e;

    /* renamed from: com.google.android.material.snackbar.b$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/b$a.class */
    public interface AbstractC4788a {
        /* renamed from: a */
        void mo2470a();

        /* renamed from: a */
        void mo2469a(int i);
    }

    /* renamed from: com.google.android.material.snackbar.b$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/b$b.class */
    public static class C4789b {

        /* renamed from: a */
        final WeakReference<AbstractC4788a> f20642a;

        /* renamed from: b */
        int f20643b;

        /* renamed from: c */
        boolean f20644c;

        C4789b(int i, AbstractC4788a abstractC4788a) {
            this.f20642a = new WeakReference<>(abstractC4788a);
            this.f20643b = i;
        }

        /* renamed from: a */
        boolean m2468a(AbstractC4788a abstractC4788a) {
            return abstractC4788a != null && this.f20642a.get() == abstractC4788a;
        }
    }

    private C4786b() {
    }

    /* renamed from: a */
    public static C4786b m2484a() {
        if (f20636a == null) {
            f20636a = new C4786b();
        }
        return f20636a;
    }

    /* renamed from: a */
    private boolean m2479a(C4789b c4789b, int i) {
        boolean z;
        AbstractC4788a abstractC4788a = c4789b.f20642a.get();
        if (abstractC4788a != null) {
            this.f20638c.removeCallbacksAndMessages(c4789b);
            abstractC4788a.mo2469a(i);
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    private void m2478b() {
        if (this.f20640e != null) {
            this.f20639d = this.f20640e;
            this.f20640e = null;
            AbstractC4788a abstractC4788a = this.f20639d.f20642a.get();
            if (abstractC4788a != null) {
                abstractC4788a.mo2470a();
            } else {
                this.f20639d = null;
            }
        }
    }

    /* renamed from: b */
    private void m2476b(C4789b c4789b) {
        if (c4789b.f20643b == -2) {
            return;
        }
        int i = 2750;
        if (c4789b.f20643b > 0) {
            i = c4789b.f20643b;
        } else if (c4789b.f20643b == -1) {
            i = 1500;
        }
        this.f20638c.removeCallbacksAndMessages(c4789b);
        this.f20638c.sendMessageDelayed(Message.obtain(this.f20638c, 0, c4789b), i);
    }

    /* renamed from: f */
    private boolean m2472f(AbstractC4788a abstractC4788a) {
        return this.f20639d != null && this.f20639d.m2468a(abstractC4788a);
    }

    /* renamed from: g */
    private boolean m2471g(AbstractC4788a abstractC4788a) {
        return this.f20640e != null && this.f20640e.m2468a(abstractC4788a);
    }

    /* renamed from: a */
    public void m2483a(int i, AbstractC4788a abstractC4788a) {
        synchronized (this.f20637b) {
            if (m2472f(abstractC4788a)) {
                this.f20639d.f20643b = i;
                this.f20638c.removeCallbacksAndMessages(this.f20639d);
                m2476b(this.f20639d);
                return;
            }
            if (m2471g(abstractC4788a)) {
                this.f20640e.f20643b = i;
            } else {
                this.f20640e = new C4789b(i, abstractC4788a);
            }
            if (this.f20639d != null && m2479a(this.f20639d, 4)) {
                return;
            }
            this.f20639d = null;
            m2478b();
        }
    }

    /* renamed from: a */
    public void m2482a(AbstractC4788a abstractC4788a) {
        synchronized (this.f20637b) {
            if (m2472f(abstractC4788a)) {
                this.f20639d = null;
                if (this.f20640e != null) {
                    m2478b();
                }
            }
        }
    }

    /* renamed from: a */
    public void m2481a(AbstractC4788a abstractC4788a, int i) {
        synchronized (this.f20637b) {
            if (m2472f(abstractC4788a)) {
                m2479a(this.f20639d, i);
            } else if (m2471g(abstractC4788a)) {
                m2479a(this.f20640e, i);
            }
        }
    }

    /* renamed from: a */
    void m2480a(C4789b c4789b) {
        synchronized (this.f20637b) {
            if (this.f20639d == c4789b || this.f20640e == c4789b) {
                m2479a(c4789b, 2);
            }
        }
    }

    /* renamed from: b */
    public void m2477b(AbstractC4788a abstractC4788a) {
        synchronized (this.f20637b) {
            if (m2472f(abstractC4788a)) {
                m2476b(this.f20639d);
            }
        }
    }

    /* renamed from: c */
    public void m2475c(AbstractC4788a abstractC4788a) {
        synchronized (this.f20637b) {
            if (m2472f(abstractC4788a) && !this.f20639d.f20644c) {
                this.f20639d.f20644c = true;
                this.f20638c.removeCallbacksAndMessages(this.f20639d);
            }
        }
    }

    /* renamed from: d */
    public void m2474d(AbstractC4788a abstractC4788a) {
        synchronized (this.f20637b) {
            if (m2472f(abstractC4788a) && this.f20639d.f20644c) {
                this.f20639d.f20644c = false;
                m2476b(this.f20639d);
            }
        }
    }

    /* renamed from: e */
    public boolean m2473e(AbstractC4788a abstractC4788a) {
        boolean z;
        synchronized (this.f20637b) {
            z = m2472f(abstractC4788a) || m2471g(abstractC4788a);
        }
        return z;
    }
}
