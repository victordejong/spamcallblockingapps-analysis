package com.google.android.gms.internal.ads;

import android.support.p012v4.media.C0082b;
import androidx.recyclerview.widget.C0608b;
import java.lang.Throwable;
import java.util.Objects;
import javax.annotation.CheckForNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfve.class */
public abstract class zzfve<V, X extends Throwable, F, T> extends zzfwg<V> implements Runnable {
    @CheckForNull
    public zzfxa<? extends V> zza;
    @CheckForNull
    public Class<X> zzb;
    @CheckForNull
    public F zzc;

    public zzfve(zzfxa<? extends V> zzfxaVar, Class<X> cls, F f) {
        Objects.requireNonNull(zzfxaVar);
        this.zza = zzfxaVar;
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfve.run():void");
    }

    public abstract T zza(F f, X x) throws Exception;

    public abstract void zzb(T t);

    @Override // com.google.android.gms.internal.ads.zzfvg
    @CheckForNull
    public final String zzd() {
        String str;
        zzfxa<? extends V> zzfxaVar = this.zza;
        Class<X> cls = this.zzb;
        F f = this.zzc;
        String zzd = super.zzd();
        if (zzfxaVar != null) {
            String obj = zzfxaVar.toString();
            str = C0608b.m7625j(new StringBuilder(obj.length() + 16), "inputFuture=[", obj, "], ");
        } else {
            str = "";
        }
        if (cls == null || f == null) {
            if (zzd == null) {
                return null;
            }
            return zzd.length() != 0 ? str.concat(zzd) : new String(str);
        }
        String obj2 = cls.toString();
        String obj3 = f.toString();
        StringBuilder sb = new StringBuilder(obj3.length() + obj2.length() + str.length() + 29);
        C0082b.m8749m(sb, str, "exceptionType=[", obj2, "], fallback=[");
        return C0082b.m8754h(sb, obj3, "]");
    }

    @Override // com.google.android.gms.internal.ads.zzfvg
    public final void zze() {
        zzq(this.zza);
        this.zza = null;
        this.zzb = null;
        this.zzc = null;
    }
}
