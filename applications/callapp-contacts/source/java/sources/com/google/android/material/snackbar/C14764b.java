package com.google.android.material.snackbar;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.snackbar.b */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/snackbar/b.class */
public final class C14764b {

    /* renamed from: e */
    private static C14764b f53867e;

    /* renamed from: a */
    final Object f53868a = new Object();

    /* renamed from: b */
    final Handler f53869b = new Handler(Looper.getMainLooper(), new Handler.Callback() { // from class: com.google.android.material.snackbar.b.1
        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            if (message.what != 0) {
                return false;
            }
            C14764b c14764b = C14764b.this;
            C14767b c14767b = (C14767b) message.obj;
            synchronized (c14764b.f53868a) {
                if (c14764b.f53870c == c14767b || c14764b.f53871d == c14767b) {
                    c14764b.m10157a(c14767b, 2);
                }
            }
            return true;
        }
    });

    /* renamed from: c */
    C14767b f53870c;

    /* renamed from: d */
    C14767b f53871d;

    /* renamed from: com.google.android.material.snackbar.b$a */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/snackbar/b$a.class */
    public interface AbstractC14766a {
        /* renamed from: a */
        void mo10149a();

        /* renamed from: a */
        void mo10148a(int i);
    }

    /* renamed from: com.google.android.material.snackbar.b$b */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/snackbar/b$b.class */
    public static final class C14767b {

        /* renamed from: a */
        final WeakReference<AbstractC14766a> f53873a;

        /* renamed from: b */
        int f53874b;

        /* renamed from: c */
        boolean f53875c;

        public C14767b(int i, AbstractC14766a abstractC14766a) {
            this.f53873a = new WeakReference<>(abstractC14766a);
            this.f53874b = i;
        }

        /* renamed from: a */
        final boolean m10147a(AbstractC14766a abstractC14766a) {
            return abstractC14766a != null && this.f53873a.get() == abstractC14766a;
        }
    }

    private C14764b() {
    }

    /* renamed from: a */
    public static C14764b m10161a() {
        if (f53867e == null) {
            f53867e = new C14764b();
        }
        return f53867e;
    }

    /* renamed from: a */
    public final void m10160a(AbstractC14766a abstractC14766a) {
        synchronized (this.f53868a) {
            if (m10151f(abstractC14766a)) {
                m10158a(this.f53870c);
            }
        }
    }

    /* renamed from: a */
    public final void m10159a(AbstractC14766a abstractC14766a, int i) {
        synchronized (this.f53868a) {
            if (m10151f(abstractC14766a)) {
                m10157a(this.f53870c, i);
            } else if (m10150g(abstractC14766a)) {
                m10157a(this.f53871d, i);
            }
        }
    }

    /* renamed from: a */
    public final void m10158a(C14767b c14767b) {
        if (c14767b.f53874b == -2) {
            return;
        }
        int i = 2750;
        if (c14767b.f53874b > 0) {
            i = c14767b.f53874b;
        } else if (c14767b.f53874b == -1) {
            i = 1500;
        }
        this.f53869b.removeCallbacksAndMessages(c14767b);
        Handler handler = this.f53869b;
        handler.sendMessageDelayed(Message.obtain(handler, 0, c14767b), i);
    }

    /* renamed from: a */
    public final boolean m10157a(C14767b c14767b, int i) {
        AbstractC14766a abstractC14766a = c14767b.f53873a.get();
        if (abstractC14766a != null) {
            this.f53869b.removeCallbacksAndMessages(c14767b);
            abstractC14766a.mo10148a(i);
            return true;
        }
        return false;
    }

    /* renamed from: b */
    public final void m10156b() {
        C14767b c14767b = this.f53871d;
        if (c14767b != null) {
            this.f53870c = c14767b;
            this.f53871d = null;
            AbstractC14766a abstractC14766a = c14767b.f53873a.get();
            if (abstractC14766a != null) {
                abstractC14766a.mo10149a();
            } else {
                this.f53870c = null;
            }
        }
    }

    /* renamed from: b */
    public final void m10155b(AbstractC14766a abstractC14766a) {
        synchronized (this.f53868a) {
            if (m10151f(abstractC14766a) && !this.f53870c.f53875c) {
                this.f53870c.f53875c = true;
                this.f53869b.removeCallbacksAndMessages(this.f53870c);
            }
        }
    }

    /* renamed from: c */
    public final void m10154c(AbstractC14766a abstractC14766a) {
        synchronized (this.f53868a) {
            if (m10151f(abstractC14766a) && this.f53870c.f53875c) {
                this.f53870c.f53875c = false;
                m10158a(this.f53870c);
            }
        }
    }

    /* renamed from: d */
    public final boolean m10153d(AbstractC14766a abstractC14766a) {
        boolean m10151f;
        synchronized (this.f53868a) {
            m10151f = m10151f(abstractC14766a);
        }
        return m10151f;
    }

    /* renamed from: e */
    public final boolean m10152e(AbstractC14766a abstractC14766a) {
        boolean z;
        synchronized (this.f53868a) {
            if (!m10151f(abstractC14766a) && !m10150g(abstractC14766a)) {
                z = false;
            }
            z = true;
        }
        return z;
    }

    /* renamed from: f */
    public final boolean m10151f(AbstractC14766a abstractC14766a) {
        C14767b c14767b = this.f53870c;
        return c14767b != null && c14767b.m10147a(abstractC14766a);
    }

    /* renamed from: g */
    public final boolean m10150g(AbstractC14766a abstractC14766a) {
        C14767b c14767b = this.f53871d;
        return c14767b != null && c14767b.m10147a(abstractC14766a);
    }
}
