package com.google.android.gms.internal.ads;

import android.content.Context;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzacb.class */
public final class zzacb extends zzacz {
    private static final zzada<String> zzi = new zzada<>();
    private final Context zzj;

    public zzacb(zzabr zzabrVar, String str, String str2, zzyj zzyjVar, int i, int i2, Context context) {
        super(zzabrVar, "Cm/m2hUfCdldkdMMT3yEm1sAGuFpKVfLQblDoR20XcK7ttTDkHIz3fwaKTv7az9S", "aEm/NgN//tNFhysboe/lIhu1ib9P4g8tTm8w79YCsSs=", zzyjVar, i, 29);
        this.zzj = context;
    }

    @Override // com.google.android.gms.internal.ads.zzacz
    public final void zza() throws IllegalAccessException, InvocationTargetException {
        this.zze.zzp("E");
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
            this.zze.zzp(zzzo.zza(str.getBytes(), true));
        }
    }
}
