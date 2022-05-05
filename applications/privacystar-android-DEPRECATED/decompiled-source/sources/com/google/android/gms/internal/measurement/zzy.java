package com.google.android.gms.internal.measurement;

import android.text.TextUtils;
import com.google.android.gms.analytics.zzi;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzy.class */
public final class zzy extends zzi<zzy> {
    private String name;
    private String zzno;
    private String zztv;
    private String zztw;
    private String zztx;
    private String zzty;
    private String zztz;
    private String zzua;
    private String zzub;
    private String zzuc;

    public final String getId() {
        return this.zzno;
    }

    public final String getName() {
        return this.name;
    }

    public final String getSource() {
        return this.zztv;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put("name", this.name);
        hashMap.put(FirebaseAnalytics.Param.SOURCE, this.zztv);
        hashMap.put(FirebaseAnalytics.Param.MEDIUM, this.zztw);
        hashMap.put("keyword", this.zztx);
        hashMap.put(FirebaseAnalytics.Param.CONTENT, this.zzty);
        hashMap.put("id", this.zzno);
        hashMap.put("adNetworkId", this.zztz);
        hashMap.put("gclid", this.zzua);
        hashMap.put("dclid", this.zzub);
        hashMap.put(FirebaseAnalytics.Param.ACLID, this.zzuc);
        return zza((Object) hashMap);
    }

    public final String zzan() {
        return this.zztw;
    }

    public final String zzao() {
        return this.zztx;
    }

    public final String zzap() {
        return this.zzty;
    }

    public final String zzaq() {
        return this.zztz;
    }

    public final String zzar() {
        return this.zzua;
    }

    public final String zzas() {
        return this.zzub;
    }

    public final String zzat() {
        return this.zzuc;
    }

    @Override // com.google.android.gms.analytics.zzi
    public final /* synthetic */ void zzb(zzy zzyVar) {
        zzy zzyVar2 = zzyVar;
        if (!TextUtils.isEmpty(this.name)) {
            zzyVar2.name = this.name;
        }
        if (!TextUtils.isEmpty(this.zztv)) {
            zzyVar2.zztv = this.zztv;
        }
        if (!TextUtils.isEmpty(this.zztw)) {
            zzyVar2.zztw = this.zztw;
        }
        if (!TextUtils.isEmpty(this.zztx)) {
            zzyVar2.zztx = this.zztx;
        }
        if (!TextUtils.isEmpty(this.zzty)) {
            zzyVar2.zzty = this.zzty;
        }
        if (!TextUtils.isEmpty(this.zzno)) {
            zzyVar2.zzno = this.zzno;
        }
        if (!TextUtils.isEmpty(this.zztz)) {
            zzyVar2.zztz = this.zztz;
        }
        if (!TextUtils.isEmpty(this.zzua)) {
            zzyVar2.zzua = this.zzua;
        }
        if (!TextUtils.isEmpty(this.zzub)) {
            zzyVar2.zzub = this.zzub;
        }
        if (!TextUtils.isEmpty(this.zzuc)) {
            zzyVar2.zzuc = this.zzuc;
        }
    }

    public final void zzc(String str) {
        this.zztv = str;
    }

    public final void zzd(String str) {
        this.zztw = str;
    }

    public final void zze(String str) {
        this.zztx = str;
    }

    public final void zzf(String str) {
        this.zzty = str;
    }

    public final void zzg(String str) {
        this.zzno = str;
    }

    public final void zzh(String str) {
        this.zztz = str;
    }

    public final void zzi(String str) {
        this.zzua = str;
    }

    public final void zzj(String str) {
        this.zzub = str;
    }

    public final void zzk(String str) {
        this.zzuc = str;
    }
}
