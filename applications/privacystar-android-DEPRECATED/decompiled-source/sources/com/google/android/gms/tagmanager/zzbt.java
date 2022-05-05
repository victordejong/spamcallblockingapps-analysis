package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzp;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzbt.class */
final class zzbt extends zzdy {

    /* renamed from: ID */
    private static final String f177ID = zza.GREATER_THAN.toString();

    public zzbt() {
        super(f177ID);
    }

    @Override // com.google.android.gms.tagmanager.zzdy
    protected final boolean zza(zzgi zzgiVar, zzgi zzgiVar2, Map<String, zzp> map) {
        return zzgiVar.compareTo(zzgiVar2) > 0;
    }
}
