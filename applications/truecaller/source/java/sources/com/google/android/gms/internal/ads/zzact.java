package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzact.class */
public final class zzact extends zzacz {
    private final zzaby zzi;
    private long zzj;

    public zzact(zzabr zzabrVar, String str, String str2, zzyj zzyjVar, int i, int i2, zzaby zzabyVar) {
        super(zzabrVar, "BF4UgSmqTS0MLe4qitQi/hj1jIQ+0vLIJEn32u0TtZn0VL9j15ZHt04Do4ADy833", "Yw5N4XiXXiTiwJwrJ8hW/AfPIwRQ2KMfiYKb9xu8vYQ=", zzyjVar, i, 53);
        this.zzi = zzabyVar;
        if (zzabyVar != null) {
            this.zzj = zzabyVar.zzc();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzacz
    public final void zza() throws IllegalAccessException, InvocationTargetException {
        if (this.zzi != null) {
            this.zze.zzH(((Long) this.zzf.invoke(null, Long.valueOf(this.zzj))).longValue());
        }
    }
}
