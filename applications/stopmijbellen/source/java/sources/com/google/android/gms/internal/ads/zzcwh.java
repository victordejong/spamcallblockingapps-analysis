package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.CookieManager;
import com.google.android.gms.ads.internal.zzt;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcwh.class */
public final class zzcwh implements zzcvr {
    private final CookieManager zza;

    public zzcwh(Context context) {
        this.zza = zzt.zzq().zzl(context);
    }

    @Override // com.google.android.gms.internal.ads.zzcvr
    public final void zza(Map<String, String> map) {
        if (this.zza == null) {
            return;
        }
        if (map.get("clear") == null) {
            String str = map.get("cookie");
            if (TextUtils.isEmpty(str)) {
                return;
            }
            this.zza.setCookie((String) zzbgq.zzc().zzb(zzblj.zzaC), str);
            return;
        }
        String str2 = (String) zzbgq.zzc().zzb(zzblj.zzaC);
        String cookie = this.zza.getCookie(str2);
        if (cookie == null) {
            return;
        }
        List<String> zzf = zzfqp.zzc(zzfps.zzb(';')).zzf(cookie);
        for (int i = 0; i < zzf.size(); i++) {
            CookieManager cookieManager = this.zza;
            Iterator<String> it2 = zzfqp.zzc(zzfps.zzb('=')).zzd(zzf.get(i)).iterator();
            Objects.requireNonNull(it2);
            if (!it2.hasNext()) {
                StringBuilder sb = new StringBuilder(91);
                sb.append("position (0) must be less than the number of elements that remained (");
                sb.append(0);
                sb.append(")");
                throw new IndexOutOfBoundsException(sb.toString());
            }
            String valueOf = String.valueOf(it2.next());
            String valueOf2 = String.valueOf((String) zzbgq.zzc().zzb(zzblj.zzar));
            cookieManager.setCookie(str2, valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
        }
    }
}
