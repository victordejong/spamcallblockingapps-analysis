package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.support.annotation.WorkerThread;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzbf.class */
public final class zzbf {
    private String value;
    private boolean zzanx;
    private final /* synthetic */ zzba zzany;
    private final String zzaod = null;
    private final String zzoj;

    public zzbf(zzba zzbaVar, String str, String str2) {
        this.zzany = zzbaVar;
        Preconditions.checkNotEmpty(str);
        this.zzoj = str;
    }

    @WorkerThread
    public final void zzcc(String str) {
        SharedPreferences zzjr;
        if (!zzfk.zzu(str, this.value)) {
            zzjr = this.zzany.zzjr();
            SharedPreferences.Editor edit = zzjr.edit();
            edit.putString(this.zzoj, str);
            edit.apply();
            this.value = str;
        }
    }

    @WorkerThread
    public final String zzjz() {
        SharedPreferences zzjr;
        if (!this.zzanx) {
            this.zzanx = true;
            zzjr = this.zzany.zzjr();
            this.value = zzjr.getString(this.zzoj, null);
        }
        return this.value;
    }
}
