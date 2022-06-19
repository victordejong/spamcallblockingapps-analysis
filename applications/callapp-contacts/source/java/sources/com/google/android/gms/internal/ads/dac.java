package com.google.android.gms.internal.ads;

import java.lang.Throwable;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dac.class */
public abstract class dac<V, X extends Throwable, F, T> extends dbb<V> implements Runnable {

    /* renamed from: a */
    private dbt<? extends V> f46845a;

    /* renamed from: b */
    private Class<X> f46846b;

    /* renamed from: c */
    private F f46847c;

    public dac(dbt<? extends V> dbtVar, Class<X> cls, F f) {
        this.f46845a = (dbt) cyg.m17060a(dbtVar);
        this.f46846b = (Class) cyg.m17060a(cls);
        this.f46847c = (F) cyg.m17060a(f);
    }

    /* renamed from: a */
    public static <X extends Throwable, V> dbt<V> m16972a(dbt<? extends V> dbtVar, Class<X> cls, daq<? super X, ? extends V> daqVar, Executor executor) {
        daf dafVar = new daf(dbtVar, cls, daqVar);
        dbtVar.addListener(dafVar, dbv.m16889a(executor, dafVar));
        return dafVar;
    }

    /* renamed from: a */
    abstract T mo16969a(F f, X x) throws Exception;

    @Override // com.google.android.gms.internal.ads.dag
    /* renamed from: a */
    public final String mo16879a() {
        String str;
        dbt<? extends V> dbtVar = this.f46845a;
        Class<X> cls = this.f46846b;
        F f = this.f46847c;
        String a = super.mo16879a();
        if (dbtVar != null) {
            String valueOf = String.valueOf(dbtVar);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 16);
            sb.append("inputFuture=[");
            sb.append(valueOf);
            sb.append("], ");
            str = sb.toString();
        } else {
            str = "";
        }
        if (cls == null || f == null) {
            if (a == null) {
                return null;
            }
            String valueOf2 = String.valueOf(str);
            String valueOf3 = String.valueOf(a);
            return valueOf3.length() != 0 ? valueOf2.concat(valueOf3) : new String(valueOf2);
        }
        String valueOf4 = String.valueOf(cls);
        String valueOf5 = String.valueOf(f);
        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 29 + String.valueOf(valueOf4).length() + String.valueOf(valueOf5).length());
        sb2.append(str);
        sb2.append("exceptionType=[");
        sb2.append(valueOf4);
        sb2.append("], fallback=[");
        sb2.append(valueOf5);
        sb2.append("]");
        return sb2.toString();
    }

    /* renamed from: a */
    abstract void mo16970a(T t);

    @Override // com.google.android.gms.internal.ads.dag
    /* renamed from: b */
    public final void mo16876b() {
        m16959a((Future<?>) this.f46845a);
        this.f46845a = null;
        this.f46846b = null;
        this.f46847c = null;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:34:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0114  */
    /* JADX WARN: Type inference failed for: r0v65, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v69, types: [java.lang.Throwable] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 354
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dac.run():void");
    }
}
