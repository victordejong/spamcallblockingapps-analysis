package com.google.android.material.snackbar;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.gms.common.ConnectionResult;
import java.lang.ref.WeakReference;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/snackbar/b.class */
final class b {
    private static b e;

    /* renamed from: a  reason: collision with root package name */
    final Object f30828a = new Object();

    /* renamed from: b  reason: collision with root package name */
    final Handler f30829b = new Handler(Looper.getMainLooper(), new Handler.Callback() { // from class: com.google.android.material.snackbar.b.1
        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            if (message.what != 0) {
                return false;
            }
            b bVar = b.this;
            C0492b bVar2 = (C0492b) message.obj;
            synchronized (bVar.f30828a) {
                if (bVar.f30830c == bVar2 || bVar.f30831d == bVar2) {
                    bVar.a(bVar2, 2);
                }
            }
            return true;
        }
    });

    /* renamed from: c  reason: collision with root package name */
    C0492b f30830c;

    /* renamed from: d  reason: collision with root package name */
    C0492b f30831d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/snackbar/b$a.class */
    public interface a {
        void a();

        void a(int i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.snackbar.b$b  reason: collision with other inner class name */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/snackbar/b$b.class */
    public static final class C0492b {

        /* renamed from: a  reason: collision with root package name */
        final WeakReference<a> f30833a;

        /* renamed from: b  reason: collision with root package name */
        int f30834b;

        /* renamed from: c  reason: collision with root package name */
        boolean f30835c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public C0492b(int i, a aVar) {
            this.f30833a = new WeakReference<>(aVar);
            this.f30834b = i;
        }

        final boolean a(a aVar) {
            return aVar != null && this.f30833a.get() == aVar;
        }
    }

    private b() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static b a() {
        if (e == null) {
            e = new b();
        }
        return e;
    }

    public final void a(a aVar) {
        synchronized (this.f30828a) {
            if (f(aVar)) {
                a(this.f30830c);
            }
        }
    }

    public final void a(a aVar, int i) {
        synchronized (this.f30828a) {
            if (f(aVar)) {
                a(this.f30830c, i);
            } else if (g(aVar)) {
                a(this.f30831d, i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(C0492b bVar) {
        if (bVar.f30834b != -2) {
            int i = 2750;
            if (bVar.f30834b > 0) {
                i = bVar.f30834b;
            } else if (bVar.f30834b == -1) {
                i = ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED;
            }
            this.f30829b.removeCallbacksAndMessages(bVar);
            Handler handler = this.f30829b;
            handler.sendMessageDelayed(Message.obtain(handler, 0, bVar), i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(C0492b bVar, int i) {
        a aVar = bVar.f30833a.get();
        if (aVar == null) {
            return false;
        }
        this.f30829b.removeCallbacksAndMessages(bVar);
        aVar.a(i);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        C0492b bVar = this.f30831d;
        if (bVar != null) {
            this.f30830c = bVar;
            this.f30831d = null;
            a aVar = bVar.f30833a.get();
            if (aVar != null) {
                aVar.a();
            } else {
                this.f30830c = null;
            }
        }
    }

    public final void b(a aVar) {
        synchronized (this.f30828a) {
            if (f(aVar) && !this.f30830c.f30835c) {
                this.f30830c.f30835c = true;
                this.f30829b.removeCallbacksAndMessages(this.f30830c);
            }
        }
    }

    public final void c(a aVar) {
        synchronized (this.f30828a) {
            if (f(aVar) && this.f30830c.f30835c) {
                this.f30830c.f30835c = false;
                a(this.f30830c);
            }
        }
    }

    public final boolean d(a aVar) {
        boolean f;
        synchronized (this.f30828a) {
            f = f(aVar);
        }
        return f;
    }

    public final boolean e(a aVar) {
        boolean z;
        synchronized (this.f30828a) {
            if (!f(aVar) && !g(aVar)) {
                z = false;
            }
            z = true;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean f(a aVar) {
        C0492b bVar = this.f30830c;
        return bVar != null && bVar.a(aVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean g(a aVar) {
        C0492b bVar = this.f30831d;
        return bVar != null && bVar.a(aVar);
    }
}
