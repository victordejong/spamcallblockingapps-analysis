package com.google.android.gms.tagmanager;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzp;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzem.class */
final class zzem extends zzbq {

    /* renamed from: ID */
    private static final String f193ID = zza.RESOLUTION.toString();
    private final Context zzri;

    public zzem(Context context) {
        super(f193ID, new String[0]);
        this.zzri = context;
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final zzp zze(Map<String, zzp> map) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) this.zzri.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        int i = displayMetrics.widthPixels;
        int i2 = displayMetrics.heightPixels;
        StringBuilder sb = new StringBuilder(23);
        sb.append(i);
        sb.append("x");
        sb.append(i2);
        return zzgj.zzj(sb.toString());
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final boolean zznb() {
        return true;
    }
}
