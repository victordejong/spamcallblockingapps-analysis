package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzp;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzak.class */
final class zzak extends zzfz {

    /* renamed from: ID */
    private static final String f166ID = zza.CONTAINS.toString();

    public zzak() {
        super(f166ID);
    }

    @Override // com.google.android.gms.tagmanager.zzfz
    protected final boolean zza(String str, String str2, Map<String, zzp> map) {
        return str.contains(str2);
    }
}
