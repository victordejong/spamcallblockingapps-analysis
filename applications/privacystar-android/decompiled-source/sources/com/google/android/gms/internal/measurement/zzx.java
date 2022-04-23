package com.google.android.gms.internal.measurement;

import android.text.TextUtils;
import com.google.android.gms.analytics.zzi;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.HashMap;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzx.class */
public final class zzx extends zzi<zzx> {
    private String zztr;
    private String zzts;
    private String zztt;
    private String zztu;

    public final void setAppId(String str) {
        this.zztt = str;
    }

    public final void setAppInstallerId(String str) {
        this.zztu = str;
    }

    public final void setAppName(String str) {
        this.zztr = str;
    }

    public final void setAppVersion(String str) {
        this.zzts = str;
    }

    public final String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put("appName", this.zztr);
        hashMap.put("appVersion", this.zzts);
        hashMap.put("appId", this.zztt);
        hashMap.put("appInstallerId", this.zztu);
        return zza((Object) hashMap);
    }

    /* renamed from: zza */
    public final void zzb(zzx zzxVar) {
        if (!TextUtils.isEmpty(this.zztr)) {
            zzxVar.zztr = this.zztr;
        }
        if (!TextUtils.isEmpty(this.zzts)) {
            zzxVar.zzts = this.zzts;
        }
        if (!TextUtils.isEmpty(this.zztt)) {
            zzxVar.zztt = this.zztt;
        }
        if (!TextUtils.isEmpty(this.zztu)) {
            zzxVar.zztu = this.zztu;
        }
    }

    public final String zzaj() {
        return this.zztr;
    }

    public final String zzak() {
        return this.zzts;
    }

    public final String zzal() {
        return this.zztt;
    }

    public final String zzam() {
        return this.zztu;
    }
}
