package com.google.android.gms.internal.ads;

import java.util.Comparator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzrz.class */
public final class zzrz implements Comparator<zzrn> {
    public zzrz(zzsa zzsaVar) {
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(zzrn zzrnVar, zzrn zzrnVar2) {
        zzrn zzrnVar3 = zzrnVar;
        zzrn zzrnVar4 = zzrnVar2;
        if (zzrnVar3.m11495b() < zzrnVar4.m11495b()) {
            return -1;
        }
        if (zzrnVar3.m11495b() > zzrnVar4.m11495b()) {
            return 1;
        }
        if (zzrnVar3.m11496a() < zzrnVar4.m11496a()) {
            return -1;
        }
        if (zzrnVar3.m11496a() > zzrnVar4.m11496a()) {
            return 1;
        }
        float d = (zzrnVar3.m11493d() - zzrnVar3.m11495b()) * (zzrnVar3.m11494c() - zzrnVar3.m11496a());
        float d2 = (zzrnVar4.m11493d() - zzrnVar4.m11495b()) * (zzrnVar4.m11494c() - zzrnVar4.m11496a());
        if (d > d2) {
            return -1;
        }
        return d < d2 ? 1 : 0;
    }
}
