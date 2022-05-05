package com.google.android.gms.internal.icing;

import com.google.android.gms.internal.icing.zzck;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzee.class */
public final class zzee implements zzdp {
    private final int flags;
    private final String info;
    private final Object[] zzjz;
    private final zzdr zzkc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzee(zzdr zzdrVar, String str, Object[] objArr) {
        this.zzkc = zzdrVar;
        this.info = str;
        this.zzjz = objArr;
        char charAt = str.charAt(0);
        if (charAt < 55296) {
            this.flags = charAt;
            return;
        }
        int i = charAt & 8191;
        int i2 = 13;
        int i3 = 1;
        while (true) {
            char charAt2 = str.charAt(i3);
            if (charAt2 >= 55296) {
                i |= (charAt2 & 8191) << i2;
                i2 += 13;
                i3++;
            } else {
                this.flags = i | (charAt2 << i2);
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.icing.zzdp
    public final int zzbs() {
        return (this.flags & 1) == 1 ? zzck.zzd.zzib : zzck.zzd.zzic;
    }

    @Override // com.google.android.gms.internal.icing.zzdp
    public final boolean zzbt() {
        return (this.flags & 2) == 2;
    }

    @Override // com.google.android.gms.internal.icing.zzdp
    public final zzdr zzbu() {
        return this.zzkc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String zzcb() {
        return this.info;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Object[] zzcc() {
        return this.zzjz;
    }
}
