package com.google.android.gms.internal.ads;

import java.lang.Throwable;
import java.util.concurrent.Executor;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdyg.class */
public abstract class zzdyg<V, X extends Throwable, F, T> extends zzdze<V> implements Runnable {
    @NullableDecl
    private zzdzw<? extends V> zzhyu;
    @NullableDecl
    private Class<X> zzhyv;
    @NullableDecl
    private F zzhyw;

    public zzdyg(zzdzw<? extends V> zzdzwVar, Class<X> cls, F f) {
        this.zzhyu = (zzdzw) zzdwl.checkNotNull(zzdzwVar);
        this.zzhyv = (Class) zzdwl.checkNotNull(cls);
        this.zzhyw = (F) zzdwl.checkNotNull(f);
    }

    public static <X extends Throwable, V> zzdzw<V> zza(zzdzw<? extends V> zzdzwVar, Class<X> cls, zzdyu<? super X, ? extends V> zzdyuVar, Executor executor) {
        zzdyj zzdyjVar = new zzdyj(zzdzwVar, cls, zzdyuVar);
        zzdzwVar.addListener(zzdyjVar, zzdzy.zza(executor, zzdyjVar));
        return zzdyjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdyk
    public final void afterDone() {
        maybePropagateCancellationTo(this.zzhyu);
        this.zzhyu = null;
        this.zzhyv = null;
        this.zzhyw = null;
    }

    @Override // com.google.android.gms.internal.ads.zzdyk
    public final String pendingToString() {
        String str;
        zzdzw<? extends V> zzdzwVar = this.zzhyu;
        Class<X> cls = this.zzhyv;
        F f = this.zzhyw;
        String pendingToString = super.pendingToString();
        if (zzdzwVar != null) {
            String valueOf = String.valueOf(zzdzwVar);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 16);
            sb.append("inputFuture=[");
            sb.append(valueOf);
            sb.append("], ");
            str = sb.toString();
        } else {
            str = "";
        }
        if (cls == null || f == null) {
            if (pendingToString == null) {
                return null;
            }
            String valueOf2 = String.valueOf(str);
            String valueOf3 = String.valueOf(pendingToString);
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdyg.run():void");
    }

    abstract void setResult(@NullableDecl T t);

    @NullableDecl
    abstract T zza(F f, X x) throws Exception;
}
