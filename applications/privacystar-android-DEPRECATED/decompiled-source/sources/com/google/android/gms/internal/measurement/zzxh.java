package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzvm;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzxh.class */
public final class zzxh implements zzwr {
    private final int flags;
    private final String info;
    private final Object[] zzcba;
    private final zzwt zzcbd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzxh(zzwt zzwtVar, String str, Object[] objArr) {
        this.zzcbd = zzwtVar;
        this.info = str;
        this.zzcba = objArr;
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

    @Override // com.google.android.gms.internal.measurement.zzwr
    public final int zzxg() {
        return (this.flags & 1) == 1 ? zzvm.zze.zzbzb : zzvm.zze.zzbzc;
    }

    @Override // com.google.android.gms.internal.measurement.zzwr
    public final boolean zzxh() {
        return (this.flags & 2) == 2;
    }

    @Override // com.google.android.gms.internal.measurement.zzwr
    public final zzwt zzxi() {
        return this.zzcbd;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String zzxp() {
        return this.info;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Object[] zzxq() {
        return this.zzcba;
    }
}
