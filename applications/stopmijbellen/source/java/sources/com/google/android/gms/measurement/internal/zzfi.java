package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzc;
import p226s.C4256e;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfi.class */
public final class zzfi extends C4256e<String, zzc> {
    public final /* synthetic */ zzfl zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfi(zzfl zzflVar, int i) {
        super(20);
        this.zza = zzflVar;
    }

    @Override // p226s.C4256e
    public final /* bridge */ /* synthetic */ zzc create(String str) {
        String str2 = str;
        Preconditions.checkNotEmpty(str2);
        return zzfl.zzo(this.zza, str2);
    }
}
