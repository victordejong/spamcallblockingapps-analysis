package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzp;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzfy.class */
final class zzfy extends zzfz {

    /* renamed from: ID */
    private static final String f197ID = zza.STARTS_WITH.toString();

    public zzfy() {
        super(f197ID);
    }

    @Override // com.google.android.gms.tagmanager.zzfz
    protected final boolean zza(String str, String str2, Map<String, zzp> map) {
        return str.startsWith(str2);
    }
}
