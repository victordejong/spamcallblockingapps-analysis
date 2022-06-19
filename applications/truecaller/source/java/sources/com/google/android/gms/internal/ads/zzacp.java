package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzacp.class */
public final class zzacp extends zzacz {
    private List<Long> zzi = null;

    public zzacp(zzabr zzabrVar, String str, String str2, zzyj zzyjVar, int i, int i2) {
        super(zzabrVar, "6LxD9DBfXSlooSx7/LozL06rdHrjyh7Q8PNFejLJXxiRhvgA5vOTtEhIRp3pKXIi", "yXdkchwXd7KBwiPBiUydLTG3hsBC8U5EW7urXPkQrKc=", zzyjVar, i, 31);
    }

    @Override // com.google.android.gms.internal.ads.zzacz
    public final void zza() throws IllegalAccessException, InvocationTargetException {
        this.zze.zzq(-1L);
        this.zze.zzr(-1L);
        if (this.zzi == null) {
            this.zzi = (List) this.zzf.invoke(null, this.zzb.zzc());
        }
        List<Long> list = this.zzi;
        if (list == null || list.size() != 2) {
            return;
        }
        synchronized (this.zze) {
            this.zze.zzq(this.zzi.get(0).longValue());
            this.zze.zzr(this.zzi.get(1).longValue());
        }
    }
}
