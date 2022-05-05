package com.google.android.gms.measurement.internal;

import android.content.Context;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzcr.class */
public final class zzcr {
    boolean zzadv;
    String zzadx;
    String zzapm;
    String zzapn;
    Boolean zzaqg;
    final Context zzri;

    @VisibleForTesting
    public zzcr(Context context, zzak zzakVar) {
        this.zzadv = true;
        Preconditions.checkNotNull(context);
        Context applicationContext = context.getApplicationContext();
        Preconditions.checkNotNull(applicationContext);
        this.zzri = applicationContext;
        if (zzakVar != null) {
            this.zzadx = zzakVar.zzadx;
            this.zzapm = zzakVar.origin;
            this.zzapn = zzakVar.zzadw;
            this.zzadv = zzakVar.zzadv;
            if (zzakVar.zzady != null) {
                this.zzaqg = Boolean.valueOf(zzakVar.zzady.getBoolean("dataCollectionDefaultEnabled", true));
            }
        }
    }
}
