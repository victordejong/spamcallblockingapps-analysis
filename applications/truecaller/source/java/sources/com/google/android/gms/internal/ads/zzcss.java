package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.CookieManager;
import com.google.android.gms.ads.internal.zzt;
import com.mopub.common.AdType;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcss.class */
public final class zzcss implements zzcsc {
    private final CookieManager zza;

    public zzcss(Context context) {
        this.zza = zzt.zze().zzk(context);
    }

    @Override // com.google.android.gms.internal.ads.zzcsc
    public final void zza(Map<String, String> map) {
        if (this.zza == null) {
            return;
        }
        if (map.get(AdType.CLEAR) == null) {
            String str = map.get("cookie");
            if (TextUtils.isEmpty(str)) {
                return;
            }
            this.zza.setCookie((String) zzbet.zzc().zzc(zzbjl.zzaz), str);
            return;
        }
        String str2 = (String) zzbet.zzc().zzc(zzbjl.zzaz);
        String cookie = this.zza.getCookie(str2);
        if (cookie == null) {
            return;
        }
        List<String> zzf = zzfmg.zzb(zzflk.zzb(';')).zzf(cookie);
        for (int i = 0; i < zzf.size(); i++) {
            CookieManager cookieManager = this.zza;
            Iterator<String> it = zzfmg.zzb(zzflk.zzb('=')).zzd(zzf.get(i)).iterator();
            Objects.requireNonNull(it);
            if (!it.hasNext()) {
                throw new IndexOutOfBoundsException(C22128a.m8686M1(91, "position (0) must be less than the number of elements that remained (", 0, ")"));
            }
            String valueOf = String.valueOf(it.next());
            String valueOf2 = String.valueOf((String) zzbet.zzc().zzc(zzbjl.zzaq));
            cookieManager.setCookie(str2, valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
        }
    }
}
