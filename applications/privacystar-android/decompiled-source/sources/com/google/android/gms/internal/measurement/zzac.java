package com.google.android.gms.internal.measurement;

import android.text.TextUtils;
import com.google.android.gms.analytics.zzi;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.HashMap;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzac.class */
public final class zzac extends zzi<zzac> {
    private String zzuf;
    public int zzug;
    public int zzuh;
    public int zzui;
    public int zzuj;
    public int zzuk;

    public final String getLanguage() {
        return this.zzuf;
    }

    public final void setLanguage(String str) {
        this.zzuf = str;
    }

    public final String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put("language", this.zzuf);
        hashMap.put("screenColors", Integer.valueOf(this.zzug));
        hashMap.put("screenWidth", Integer.valueOf(this.zzuh));
        hashMap.put("screenHeight", Integer.valueOf(this.zzui));
        hashMap.put("viewportWidth", Integer.valueOf(this.zzuj));
        hashMap.put("viewportHeight", Integer.valueOf(this.zzuk));
        return zza((Object) hashMap);
    }

    @Override // com.google.android.gms.analytics.zzi
    public final /* synthetic */ void zzb(zzac zzacVar) {
        zzac zzacVar2 = zzacVar;
        if (this.zzug != 0) {
            zzacVar2.zzug = this.zzug;
        }
        if (this.zzuh != 0) {
            zzacVar2.zzuh = this.zzuh;
        }
        if (this.zzui != 0) {
            zzacVar2.zzui = this.zzui;
        }
        if (this.zzuj != 0) {
            zzacVar2.zzuj = this.zzuj;
        }
        if (this.zzuk != 0) {
            zzacVar2.zzuk = this.zzuk;
        }
        if (!TextUtils.isEmpty(this.zzuf)) {
            zzacVar2.zzuf = this.zzuf;
        }
    }
}
