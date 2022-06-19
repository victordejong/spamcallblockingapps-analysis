package com.google.android.gms.ads.internal;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.internal.ads.AbstractC13002vy;
import com.google.android.gms.internal.ads.zzatu;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/zza.class */
public final class zza {
    private final Context context;
    private boolean zzbor;
    private AbstractC13002vy zzbos;
    private zzatu zzbot;

    public zza(Context context, AbstractC13002vy abstractC13002vy, zzatu zzatuVar) {
        this.context = context;
        this.zzbos = abstractC13002vy;
        this.zzbot = null;
        if (0 == 0) {
            this.zzbot = new zzatu();
        }
    }

    private final boolean zzkb() {
        AbstractC13002vy abstractC13002vy = this.zzbos;
        return (abstractC13002vy != null && abstractC13002vy.mo14063a().zzecb) || this.zzbot.zzdyl;
    }

    public final void recordClick() {
        this.zzbor = true;
    }

    public final void zzbk(String str) {
        if (!zzkb()) {
            return;
        }
        if (str == null) {
            str = "";
        }
        AbstractC13002vy abstractC13002vy = this.zzbos;
        if (abstractC13002vy != null) {
            abstractC13002vy.mo14060a(str, null, 3);
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

    public final boolean zzkc() {
        return !zzkb() || this.zzbor;
    }
}
