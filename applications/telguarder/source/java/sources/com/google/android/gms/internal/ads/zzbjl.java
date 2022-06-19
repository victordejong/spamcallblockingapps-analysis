package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.CookieManager;
import com.google.android.gms.ads.internal.zzr;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbjl.class */
public final class zzbjl implements zzbjf {
    private final CookieManager zzfra;

    public zzbjl(Context context) {
        this.zzfra = zzr.zzkt().zzbf(context);
    }

    @Override // com.google.android.gms.internal.ads.zzbjf
    public final void zzm(Map<String, String> map) {
        Object obj;
        if (this.zzfra == null) {
            return;
        }
        if (map.get("clear") == null) {
            String str = map.get("cookie");
            if (TextUtils.isEmpty(str)) {
                return;
            }
            this.zzfra.setCookie((String) zzwr.zzqr().zzd(zzabp.zzcpf), str);
            return;
        }
        String str2 = (String) zzwr.zzqr().zzd(zzabp.zzcpf);
        String cookie = this.zzfra.getCookie(str2);
        if (cookie == null) {
            return;
        }
        List<String> zzc = zzdwk.zza(zzdvu.zzb(';')).zzc(cookie);
        for (int i = 0; i < zzc.size(); i++) {
            CookieManager cookieManager = this.zzfra;
            Iterable<String> zza = zzdwk.zza(zzdvu.zzb('=')).zza(zzc.get(i));
            zzdwl.checkNotNull(zza);
            if (zza instanceof List) {
                obj = ((List) zza).get(0);
            } else {
                Iterator<String> it = zza.iterator();
                zzdwl.checkNotNull(it);
                zzdwl.checkArgument(true, "numberToAdvance must be nonnegative");
                if (!it.hasNext()) {
                    StringBuilder sb = new StringBuilder(91);
                    sb.append("position (0) must be less than the number of elements that remained (0");
                    sb.append(")");
                    throw new IndexOutOfBoundsException(sb.toString());
                }
                obj = it.next();
            }
            String valueOf = String.valueOf((String) obj);
            String valueOf2 = String.valueOf((String) zzwr.zzqr().zzd(zzabp.zzcou));
            cookieManager.setCookie(str2, valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
        }
    }
}
