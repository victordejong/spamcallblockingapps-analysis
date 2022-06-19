package com.google.android.gms.internal.ads;

import java.util.Comparator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzrx.class */
public final class zzrx implements Comparator<zzsd> {
    public zzrx(zzru zzruVar) {
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(zzsd zzsdVar, zzsd zzsdVar2) {
        zzsd zzsdVar3 = zzsdVar;
        zzsd zzsdVar4 = zzsdVar2;
        int i = zzsdVar3.zzbuc - zzsdVar4.zzbuc;
        return i != 0 ? i : (int) (zzsdVar3.value - zzsdVar4.value);
    }
}
