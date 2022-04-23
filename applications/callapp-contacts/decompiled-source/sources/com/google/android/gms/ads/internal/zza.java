package com.google.android.gms.ads.internal;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.internal.ads.vy;
import com.google.android.gms.internal.ads.zzatu;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/zza.class */
public final class zza {
    private final Context context;
    private boolean zzbor;
    private vy zzbos;
    private zzatu zzbot;

    public zza(Context context, vy vyVar, zzatu zzatuVar) {
        this.context = context;
        this.zzbos = vyVar;
        this.zzbot = null;
        if (0 == 0) {
            this.zzbot = new zzatu();
        }
    }

    private final boolean zzkb() {
        vy vyVar = this.zzbos;
        return (vyVar != null && vyVar.a().zzecb) || this.zzbot.zzdyl;
    }

    public final void recordClick() {
        this.zzbor = true;
    }

    public final void zzbk(String str) {
        if (zzkb()) {
            if (str == null) {
                str = "";
            }
            vy vyVar = this.zzbos;
            if (vyVar != null) {
                vyVar.a(str, null, 3);
            } else if (this.zzbot.zzdyl && this.zzbot.zzdym != null) {
                for (String str2 : this.zzbot.zzdym) {
                    if (!TextUtils.isEmpty(str2)) {
                        String replace = str2.replace("{NAVIGATION_URL}", Uri.encode(str));
                        zzr.zzkv();
                        zzj.zzb(this.context, "", replace);
                    }
                }
            }
        }
    }

    public final boolean zzkc() {
        return !zzkb() || this.zzbor;
    }
}
