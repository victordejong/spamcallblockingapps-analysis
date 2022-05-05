package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzp;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzbl.class */
final class zzbl extends zzfz {

    /* renamed from: ID */
    private static final String f173ID = zza.ENDS_WITH.toString();

    public zzbl() {
        super(f173ID);
    }

    @Override // com.google.android.gms.tagmanager.zzfz
    protected final boolean zza(String str, String str2, Map<String, zzp> map) {
        return str.endsWith(str2);
    }
}
