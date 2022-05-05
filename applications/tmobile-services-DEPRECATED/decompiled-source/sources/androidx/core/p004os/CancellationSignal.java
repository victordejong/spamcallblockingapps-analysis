package androidx.core.p004os;

import android.os.Build;
import androidx.annotation.Nullable;
/* renamed from: androidx.core.os.CancellationSignal */
/* loaded from: classes-dex2jar.jar:androidx/core/os/CancellationSignal.class */
public final class CancellationSignal {

    /* renamed from: a */
    private boolean f3086a;

    /* renamed from: b */
    private OnCancelListener f3087b;

    /* renamed from: c */
    private Object f3088c;

    /* renamed from: d */
    private boolean f3089d;

    /* renamed from: androidx.core.os.CancellationSignal$OnCancelListener */
    /* loaded from: classes-dex2jar.jar:androidx/core/os/CancellationSignal$OnCancelListener.class */
    public interface OnCancelListener {
        void onCancel();
    }

    /* renamed from: f */
    private void m19444f() {
        while (this.f3089d) {
            try {
                wait();
            } catch (InterruptedException e) {
            }
        }
    }

    /* renamed from: a */
    public void m19449a() {
        synchronized (this) {
            if (!this.f3086a) {
                this.f3086a = true;
                this.f3089d = true;
                OnCancelListener onCancelListener = this.f3087b;
                Object obj = this.f3088c;
                if (onCancelListener != null) {
                    try {
                        onCancelListener.onCancel();
                    } catch (Throwable th) {
                        synchronized (this) {
                            this.f3089d = false;
                            notifyAll();
                            throw th;
                        }
                    }
                }
                if (obj != null && Build.VERSION.SDK_INT >= 16) {
                    ((android.os.CancellationSignal) obj).cancel();
                }
                synchronized (this) {
                    this.f3089d = false;
                    notifyAll();
                }
            }
        }
    }

    @Nullable
    /* renamed from: b */
    public Object m19448b() {
        Object obj;
        if (Build.VERSION.SDK_INT < 16) {
            return null;
        }
        synchronized (this) {
            if (this.f3088c == null) {
                android.os.CancellationSignal cancellationSignal = new android.os.CancellationSignal();
                this.f3088c = cancellationSignal;
                if (this.f3086a) {
                    cancellationSignal.cancel();
                }
            }
            obj = this.f3088c;
        }
        return obj;
    }

    /* renamed from: c */
    public boolean m19447c() {
        boolean z;
        synchronized (this) {
            z = this.f3086a;
        }
        return z;
    }

    /* renamed from: d */
    public void m19446d(@Nullable OnCancelListener onCancelListener) {
        synchronized (this) {
            m19444f();
            if (this.f3087b != onCancelListener) {
                this.f3087b = onCancelListener;
                if (this.f3086a && onCancelListener != null) {
                    onCancelListener.onCancel();
                }
            }
        }
    }

    /* renamed from: e */
    public void m19445e() {
        if (m19447c()) {
            throw new OperationCanceledException();
        }
    }
}
