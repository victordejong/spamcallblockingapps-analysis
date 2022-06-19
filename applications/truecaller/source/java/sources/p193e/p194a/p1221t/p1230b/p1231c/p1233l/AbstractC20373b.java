package p193e.p194a.p1221t.p1230b.p1231c.p1233l;

import com.truecaller.android.sdk.TrueException;
import com.truecaller.android.sdk.clients.VerificationCallback;
import e.m.d.y.n;
import u3.l0;
import x3.a0;
import x3.b;
import x3.d;
/* renamed from: e.a.t.b.c.l.b */
/* loaded from: classes5-dex2jar.jar:e/a/t/b/c/l/b.class */
public abstract class AbstractC20373b<T> implements d<T> {

    /* renamed from: a */
    public final VerificationCallback f57234a;

    /* renamed from: b */
    public final int f57235b;

    /* renamed from: c */
    public boolean f57236c;

    public AbstractC20373b(VerificationCallback verificationCallback, boolean z, int i) {
        this.f57234a = verificationCallback;
        this.f57236c = z;
        this.f57235b = i;
    }

    /* renamed from: a */
    public abstract void mo11220a();

    /* renamed from: b */
    public abstract void mo11219b(T t);

    public void onFailure(b<T> bVar, Throwable th) {
        this.f57234a.onRequestFailure(this.f57235b, new TrueException(2, th.getMessage()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onResponse(b<T> bVar, a0<T> a0Var) {
        Object obj;
        if (a0Var == null) {
            this.f57234a.onRequestFailure(this.f57235b, new TrueException(1, TrueException.TYPE_UNKNOWN_MESSAGE));
        } else if (a0Var.b() && (obj = a0Var.b) != null) {
            mo11219b(obj);
        } else {
            l0 l0Var = a0Var.c;
            if (l0Var == null) {
                this.f57234a.onRequestFailure(this.f57235b, new TrueException(1, TrueException.TYPE_UNKNOWN_MESSAGE));
                return;
            }
            String N0 = n.N0(l0Var);
            if (!this.f57236c || !TrueException.TYPE_INTERNAL_SERVER_ERROR.equalsIgnoreCase(N0)) {
                this.f57234a.onRequestFailure(this.f57235b, new TrueException(2, N0));
                return;
            }
            this.f57236c = false;
            mo11220a();
        }
    }
}
