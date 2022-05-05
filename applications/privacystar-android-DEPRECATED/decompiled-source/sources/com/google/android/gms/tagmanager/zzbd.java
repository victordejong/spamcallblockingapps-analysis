package com.google.android.gms.tagmanager;

import android.os.Build;
import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzp;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzbd.class */
final class zzbd extends zzbq {

    /* renamed from: ID */
    private static final String f171ID = zza.DEVICE_NAME.toString();

    public zzbd() {
        super(f171ID, new String[0]);
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final zzp zze(Map<String, zzp> map) {
        String str = Build.MANUFACTURER;
        String str2 = Build.MODEL;
        String str3 = str2;
        if (!str2.startsWith(str)) {
            str3 = str2;
            if (!str.equals("unknown")) {
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(str2).length());
                sb.append(str);
                sb.append(" ");
                sb.append(str2);
                str3 = sb.toString();
            }
        }
        return zzgj.zzj(str3);
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final boolean zznb() {
        return true;
    }
}
