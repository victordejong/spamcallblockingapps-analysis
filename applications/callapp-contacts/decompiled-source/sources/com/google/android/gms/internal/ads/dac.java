package com.google.android.gms.internal.ads;

import java.lang.Throwable;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dac.class */
public abstract class dac<V, X extends Throwable, F, T> extends dbb<V> implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private dbt<? extends V> f26633a;

    /* renamed from: b  reason: collision with root package name */
    private Class<X> f26634b;

    /* renamed from: c  reason: collision with root package name */
    private F f26635c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dac(dbt<? extends V> dbtVar, Class<X> cls, F f) {
        this.f26633a = (dbt) cyg.a(dbtVar);
        this.f26634b = (Class) cyg.a(cls);
        this.f26635c = (F) cyg.a(f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <X extends Throwable, V> dbt<V> a(dbt<? extends V> dbtVar, Class<X> cls, daq<? super X, ? extends V> daqVar, Executor executor) {
        daf dafVar = new daf(dbtVar, cls, daqVar);
        dbtVar.addListener(dafVar, dbv.a(executor, dafVar));
        return dafVar;
    }

    abstract T a(F f, X x) throws Exception;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dag
    public final String a() {
        String str;
        dbt<? extends V> dbtVar = this.f26633a;
        Class<X> cls = this.f26634b;
        F f = this.f26635c;
        String a2 = super.a();
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
        if (cls != null && f != null) {
            String valueOf2 = String.valueOf(cls);
            String valueOf3 = String.valueOf(f);
            StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 29 + String.valueOf(valueOf2).length() + String.valueOf(valueOf3).length());
            sb2.append(str);
            sb2.append("exceptionType=[");
            sb2.append(valueOf2);
            sb2.append("], fallback=[");
            sb2.append(valueOf3);
            sb2.append("]");
            return sb2.toString();
        } else if (a2 == null) {
            return null;
        } else {
            String valueOf4 = String.valueOf(str);
            String valueOf5 = String.valueOf(a2);
            return valueOf5.length() != 0 ? valueOf4.concat(valueOf5) : new String(valueOf4);
        }
    }

    abstract void a(T t);

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dag
    public final void b() {
        a((Future<?>) this.f26633a);
        this.f26633a = null;
        this.f26634b = null;
        this.f26635c = null;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:34:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0114  */
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
