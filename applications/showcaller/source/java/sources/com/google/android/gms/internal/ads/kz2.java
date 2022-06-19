package com.google.android.gms.internal.ads;

import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/kz2.class */
public abstract class kz2<I, O, F, T> extends zz2<O> implements Runnable {

    /* renamed from: k */
    public static final /* synthetic */ int f25899k = 0;

    /* renamed from: l */
    r03<? extends I> f25900l;

    /* renamed from: m */
    F f25901m;

    public kz2(r03<? extends I> r03Var, F f) {
        Objects.requireNonNull(r03Var);
        this.f25900l = r03Var;
        Objects.requireNonNull(f);
        this.f25901m = f;
    }

    /* renamed from: F */
    abstract void mo13754F(T t);

    /* renamed from: G */
    abstract T mo13753G(F f, I i);

    @Override // com.google.android.gms.internal.ads.fz2
    /* renamed from: i */
    public final String mo9813i() {
        String str;
        r03<? extends I> r03Var = this.f25900l;
        F f = this.f25901m;
        String mo9813i = super.mo9813i();
        if (r03Var != null) {
            String obj = r03Var.toString();
            StringBuilder sb = new StringBuilder(obj.length() + 16);
            sb.append("inputFuture=[");
            sb.append(obj);
            sb.append("], ");
            str = sb.toString();
        } else {
            str = "";
        }
        if (f == null) {
            if (mo9813i == null) {
                return null;
            }
            return mo9813i.length() != 0 ? str.concat(mo9813i) : new String(str);
        }
        String obj2 = f.toString();
        StringBuilder sb2 = new StringBuilder(str.length() + 11 + obj2.length());
        sb2.append(str);
        sb2.append("function=[");
        sb2.append(obj2);
        sb2.append("]");
        return sb2.toString();
    }

    @Override // com.google.android.gms.internal.ads.fz2
    /* renamed from: j */
    protected final void mo10469j() {
        m15003z(this.f25900l);
        this.f25900l = null;
        this.f25901m = null;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        r03<? extends I> r03Var = this.f25900l;
        F f = this.f25901m;
        boolean isCancelled = isCancelled();
        boolean z = true;
        boolean z2 = r03Var == null;
        if (f != null) {
            z = false;
        }
        if ((isCancelled | z2) || z) {
            return;
        }
        this.f25900l = null;
        if (r03Var.isCancelled()) {
            m15006w(r03Var);
            return;
        }
        try {
            try {
                Object mo13753G = mo13753G(f, k03.m13987q(r03Var));
                this.f25901m = null;
                mo13754F(mo13753G);
            } catch (Throwable th) {
                try {
                    mo8631v(th);
                    this.f25901m = null;
                } catch (Throwable th2) {
                    this.f25901m = null;
                    throw th2;
                }
            }
        } catch (Error e) {
            mo8631v(e);
        } catch (CancellationException e2) {
            cancel(false);
        } catch (RuntimeException e3) {
            mo8631v(e3);
        } catch (ExecutionException e4) {
            mo8631v(e4.getCause());
        }
    }
}
