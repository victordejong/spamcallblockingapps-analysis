package com.google.android.gms.internal.ads;

import java.lang.Throwable;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ty2.class */
abstract class ty2<V, X extends Throwable, F, T> extends zz2<V> implements Runnable {

    /* renamed from: k */
    r03<? extends V> f30428k;

    /* renamed from: l */
    Class<X> f30429l;

    /* renamed from: m */
    F f30430m;

    public ty2(r03<? extends V> r03Var, Class<X> cls, F f) {
        Objects.requireNonNull(r03Var);
        this.f30428k = r03Var;
        this.f30429l = cls;
        Objects.requireNonNull(f);
        this.f30430m = f;
    }

    /* renamed from: F */
    abstract void mo10471F(T t);

    /* renamed from: G */
    abstract T mo10470G(F f, X x);

    @Override // com.google.android.gms.internal.ads.fz2
    /* renamed from: i */
    public final String mo9813i() {
        String str;
        r03<? extends V> r03Var = this.f30428k;
        Class<X> cls = this.f30429l;
        F f = this.f30430m;
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
        if (cls == null || f == null) {
            if (mo9813i == null) {
                return null;
            }
            return mo9813i.length() != 0 ? str.concat(mo9813i) : new String(str);
        }
        String obj2 = cls.toString();
        String obj3 = f.toString();
        StringBuilder sb2 = new StringBuilder(str.length() + 29 + obj2.length() + obj3.length());
        sb2.append(str);
        sb2.append("exceptionType=[");
        sb2.append(obj2);
        sb2.append("], fallback=[");
        sb2.append(obj3);
        sb2.append("]");
        return sb2.toString();
    }

    @Override // com.google.android.gms.internal.ads.fz2
    /* renamed from: j */
    protected final void mo10469j() {
        m15003z(this.f30428k);
        this.f30428k = null;
        this.f30429l = null;
        this.f30430m = null;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x010a  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 343
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ty2.run():void");
    }
}
