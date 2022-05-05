package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzz.class */
final class zzz {
    final String name;
    final long zzaie;
    final long zzaif;
    final long zzaig;
    final long zzaih;
    final Long zzaii;
    final Long zzaij;
    final Long zzaik;
    final Boolean zzail;
    final String zztt;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzz(String str, String str2, long j, long j2, long j3, long j4, Long l, Long l2, Long l3, Boolean bool) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        boolean z = false;
        Preconditions.checkArgument(j >= 0);
        Preconditions.checkArgument(j2 >= 0);
        Preconditions.checkArgument(j4 >= 0 ? true : z);
        this.zztt = str;
        this.name = str2;
        this.zzaie = j;
        this.zzaif = j2;
        this.zzaig = j3;
        this.zzaih = j4;
        this.zzaii = l;
        this.zzaij = l2;
        this.zzaik = l3;
        this.zzail = bool;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzz zza(long j, long j2) {
        return new zzz(this.zztt, this.name, this.zzaie, this.zzaif, this.zzaig, j, Long.valueOf(j2), this.zzaij, this.zzaik, this.zzail);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzz zza(Long l, Long l2, Boolean bool) {
        if (bool != null && !bool.booleanValue()) {
            bool = null;
        }
        return new zzz(this.zztt, this.name, this.zzaie, this.zzaif, this.zzaig, this.zzaih, this.zzaii, l, l2, bool);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzz zzai(long j) {
        return new zzz(this.zztt, this.name, this.zzaie, this.zzaif, j, this.zzaih, this.zzaii, this.zzaij, this.zzaik, this.zzail);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzz zziu() {
        return new zzz(this.zztt, this.name, this.zzaie + 1, 1 + this.zzaif, this.zzaig, this.zzaih, this.zzaii, this.zzaij, this.zzaik, this.zzail);
    }
}
