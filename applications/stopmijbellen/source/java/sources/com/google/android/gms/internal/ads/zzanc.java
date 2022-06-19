package com.google.android.gms.internal.ads;

import android.content.Context;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzanc.class */
public final class zzanc extends zzaoa {
    private static final zzaob<String> zzi = new zzaob<>();
    private final Context zzj;

    public zzanc(zzams zzamsVar, String str, String str2, zzaiz zzaizVar, int i, int i2, Context context) {
        super(zzamsVar, "t7YLiNn9wSLVfNzBPSP796qGY15c9YWt19X86sjfqa1MN8DTMOAxKskDGE2b7plQ", "lEEnhl5euaIfSg9vXz1JH43pBH/xGM9fvSrfPaUZwEI=", zzaizVar, i, 29);
        this.zzj = context;
    }

    @Override // com.google.android.gms.internal.ads.zzaoa
    public final void zza() throws IllegalAccessException, InvocationTargetException {
        this.zze.zzl("E");
        AtomicReference<String> zza = zzi.zza(this.zzj.getPackageName());
        if (zza.get() == null) {
            synchronized (zza) {
                if (zza.get() == null) {
                    zza.set((String) this.zzf.invoke(null, this.zzj));
                }
            }
        }
        String str = zza.get();
        synchronized (this.zze) {
            this.zze.zzl(zzake.zza(str.getBytes(), true));
        }
    }
}
