package com.google.android.gms.tagmanager;

import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzp;
import java.util.Map;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzbm.class */
public final class zzbm extends zzfz {

    /* renamed from: ID */
    private static final String f174ID = zza.EQUALS.toString();

    public zzbm() {
        super(f174ID);
    }

    @Override // com.google.android.gms.tagmanager.zzfz
    protected final boolean zza(String str, String str2, Map<String, zzp> map) {
        return str.equals(str2);
    }
}
