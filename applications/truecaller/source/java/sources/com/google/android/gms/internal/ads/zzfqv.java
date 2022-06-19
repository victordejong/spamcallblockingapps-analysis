package com.google.android.gms.internal.ads;

import java.lang.Throwable;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfqv.class */
public abstract class zzfqv<V, X extends Throwable, F, T> extends zzfrt<V> implements Runnable {
    public zzfsm<? extends V> zza;
    public Class<X> zzb;
    public F zzc;

    public zzfqv(zzfsm<? extends V> zzfsmVar, Class<X> cls, F f) {
        Objects.requireNonNull(zzfsmVar);
        this.zza = zzfsmVar;
        this.zzb = cls;
        Objects.requireNonNull(f);
        this.zzc = f;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00f4  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 321
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfqv.run():void");
    }

    public abstract void zza(T t);

    public abstract T zzb(F f, X x) throws Exception;

    @Override // com.google.android.gms.internal.ads.zzfqw
    public final String zzc() {
        String str;
        zzfsm<? extends V> zzfsmVar = this.zza;
        Class<X> cls = this.zzb;
        F f = this.zzc;
        String zzc = super.zzc();
        if (zzfsmVar != null) {
            String obj = zzfsmVar.toString();
            str = C22128a.m8610j(new StringBuilder(obj.length() + 16), "inputFuture=[", obj, "], ");
        } else {
            str = "";
        }
        if (cls == null || f == null) {
            if (zzc == null) {
                return null;
            }
            return zzc.length() != 0 ? str.concat(zzc) : new String(str);
        }
        String obj2 = cls.toString();
        String obj3 = f.toString();
        StringBuilder sb = new StringBuilder(obj3.length() + obj2.length() + str.length() + 29);
        C22128a.m8666T0(sb, str, "exceptionType=[", obj2, "], fallback=[");
        return C22128a.m8618h(sb, obj3, "]");
    }

    @Override // com.google.android.gms.internal.ads.zzfqw
    public final void zzd() {
        zzv(this.zza);
        this.zza = null;
        this.zzb = null;
        this.zzc = null;
    }
}
