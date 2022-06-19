package com.google.android.material.snackbar;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.snackbar.d */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/snackbar/d.class */
public class C8264d {

    /* renamed from: a */
    private static C8264d f37255a;

    /* renamed from: b */
    private final Object f37256b = new Object();

    /* renamed from: c */
    private final Handler f37257c = new Handler(Looper.getMainLooper(), new C8265a());

    /* renamed from: d */
    private C8267c f37258d;

    /* renamed from: e */
    private C8267c f37259e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.snackbar.d$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/snackbar/d$a.class */
    public class C8265a implements Handler.Callback {
        C8265a() {
            C8264d.this = r4;
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what != 0) {
                return false;
            }
            C8264d.this.m4197c((C8267c) message.obj);
            return true;
        }
    }

    /* renamed from: com.google.android.material.snackbar.d$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/snackbar/d$b.class */
    public interface AbstractC8266b {
        /* renamed from: a */
        void m4192a(int i);
    }

    /* renamed from: com.google.android.material.snackbar.d$c */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/snackbar/d$c.class */
    public static class C8267c {

        /* renamed from: a */
        final WeakReference<AbstractC8266b> f37261a;

        /* renamed from: b */
        int f37262b;

        /* renamed from: c */
        boolean f37263c;

        /* renamed from: a */
        boolean m4191a(AbstractC8266b abstractC8266b) {
            return abstractC8266b != null && this.f37261a.get() == abstractC8266b;
        }
    }

    private C8264d() {
    }

    /* renamed from: a */
    private boolean m4199a(C8267c c8267c, int i) {
        AbstractC8266b abstractC8266b = c8267c.f37261a.get();
        if (abstractC8266b != null) {
            this.f37257c.removeCallbacksAndMessages(c8267c);
            abstractC8266b.m4192a(i);
            return true;
        }
        return false;
    }

    /* renamed from: b */
    public static C8264d m4198b() {
        if (f37255a == null) {
            f37255a = new C8264d();
        }
        return f37255a;
    }

    /* renamed from: d */
    private boolean m4196d(AbstractC8266b abstractC8266b) {
        C8267c c8267c = this.f37258d;
        return c8267c != null && c8267c.m4191a(abstractC8266b);
    }

    /* renamed from: g */
    private void m4193g(C8267c c8267c) {
        int i = c8267c.f37262b;
        if (i == -2) {
            return;
        }
        if (i <= 0) {
            i = i == -1 ? 1500 : 2750;
        }
        this.f37257c.removeCallbacksAndMessages(c8267c);
        Handler handler = this.f37257c;
        handler.sendMessageDelayed(Message.obtain(handler, 0, c8267c), i);
    }

    /* renamed from: c */
    void m4197c(C8267c c8267c) {
        synchronized (this.f37256b) {
            if (this.f37258d == c8267c || this.f37259e == c8267c) {
                m4199a(c8267c, 2);
            }
        }
    }

    /* renamed from: e */
    public void m4195e(AbstractC8266b abstractC8266b) {
        synchronized (this.f37256b) {
            if (m4196d(abstractC8266b)) {
                C8267c c8267c = this.f37258d;
                if (!c8267c.f37263c) {
                    c8267c.f37263c = true;
                    this.f37257c.removeCallbacksAndMessages(c8267c);
                }
            }
        }
    }

    /* renamed from: f */
    public void m4194f(AbstractC8266b abstractC8266b) {
        synchronized (this.f37256b) {
            if (m4196d(abstractC8266b)) {
                C8267c c8267c = this.f37258d;
                if (c8267c.f37263c) {
                    c8267c.f37263c = false;
                    m4193g(c8267c);
                }
            }
        }
    }
}
