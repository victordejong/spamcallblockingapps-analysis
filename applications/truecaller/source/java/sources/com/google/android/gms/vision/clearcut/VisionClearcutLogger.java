package com.google.android.gms.vision.clearcut;

import android.content.Context;
import androidx.annotation.Keep;
import com.google.android.gms.clearcut.ClearcutLogger;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.internal.clearcut.zze;
import com.google.android.gms.internal.clearcut.zzp;
import com.google.android.gms.internal.vision.zzds;
import com.google.android.gms.internal.vision.zzea;
import com.google.android.gms.internal.vision.zzgd;
import com.google.android.gms.vision.C2072L;
@Keep
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/vision/clearcut/VisionClearcutLogger.class */
public class VisionClearcutLogger {
    private final ClearcutLogger zzbv;
    private boolean zzbw = true;

    public VisionClearcutLogger(Context context) {
        this.zzbv = new ClearcutLogger(context, "VISION", null, false, zze.zzb(context), DefaultClock.f6131a, new zzp(context));
    }

    public final void zzb(int i, zzea.zzo zzoVar) {
        byte[] byteArray = zzoVar.toByteArray();
        if (i < 0 || i > 3) {
            C2072L.m38487i("Illegal event code: %d", Integer.valueOf(i));
            return;
        }
        try {
            if (this.zzbw) {
                ClearcutLogger.LogEventBuilder m39090b = this.zzbv.m39090b(byteArray);
                m39090b.f5598f.zzbji = i;
                m39090b.m39089a();
                return;
            }
            zzea.zzo.zza zzdi = zzea.zzo.zzdi();
            try {
                zzdi.zza(byteArray, 0, byteArray.length, zzgd.zzfm());
                C2072L.m38489e("Would have logged:\n%s", zzdi.toString());
            } catch (Exception e) {
                C2072L.m38488e(e, "Parsing error", new Object[0]);
            }
        } catch (Exception e2) {
            zzds.zza(e2);
            C2072L.m38488e(e2, "Failed to log", new Object[0]);
        }
    }
}
