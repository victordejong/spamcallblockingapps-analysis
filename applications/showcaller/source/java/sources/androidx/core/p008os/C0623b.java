package androidx.core.p008os;

import android.os.Build;
import android.os.CancellationSignal;
/* renamed from: androidx.core.os.b */
/* loaded from: classes-dex2jar.jar:androidx/core/os/b.class */
public final class C0623b {

    /* renamed from: a */
    private boolean f3012a;

    /* renamed from: b */
    private AbstractC0624a f3013b;

    /* renamed from: c */
    private Object f3014c;

    /* renamed from: d */
    private boolean f3015d;

    /* renamed from: androidx.core.os.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/os/b$a.class */
    public interface AbstractC0624a {
        /* renamed from: a */
        void mo32626a();
    }

    /* renamed from: d */
    private void m33196d() {
        while (this.f3015d) {
            try {
                wait();
            } catch (InterruptedException e) {
            }
        }
    }

    /* renamed from: a */
    public void m33199a() {
        synchronized (this) {
            if (this.f3012a) {
                return;
            }
            this.f3012a = true;
            this.f3015d = true;
            AbstractC0624a abstractC0624a = this.f3013b;
            Object obj = this.f3014c;
            if (abstractC0624a != null) {
                try {
                    abstractC0624a.mo32626a();
                } catch (Throwable th) {
                    synchronized (this) {
                        this.f3015d = false;
                        notifyAll();
                        throw th;
                    }
                }
            }
            if (obj != null && Build.VERSION.SDK_INT >= 16) {
                ((CancellationSignal) obj).cancel();
            }
            synchronized (this) {
                this.f3015d = false;
                notifyAll();
            }
        }
    }

    /* renamed from: b */
    public boolean m33198b() {
        boolean z;
        synchronized (this) {
            z = this.f3012a;
        }
        return z;
    }

    /* renamed from: c */
    public void m33197c(AbstractC0624a abstractC0624a) {
        synchronized (this) {
            m33196d();
            if (this.f3013b == abstractC0624a) {
                return;
            }
            this.f3013b = abstractC0624a;
            if (!this.f3012a || abstractC0624a == null) {
                return;
            }
            abstractC0624a.mo32626a();
        }
    }
}
