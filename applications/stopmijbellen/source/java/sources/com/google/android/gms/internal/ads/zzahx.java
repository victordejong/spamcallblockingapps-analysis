package com.google.android.gms.internal.ads;

import java.io.UnsupportedEncodingException;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzahx.class */
public class zzahx extends zzags<String> {
    private final Object zza = new Object();
    private final zzagx<String> zzb;

    public zzahx(int i, String str, zzagx<String> zzagxVar, zzagw zzagwVar) {
        super(i, str, zzagwVar);
        this.zzb = zzagxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzags
    public final zzagy<String> zzh(zzago zzagoVar) {
        String str;
        String str2;
        try {
            byte[] bArr = zzagoVar.zzb;
            Map<String, String> map = zzagoVar.zzc;
            if (map == null) {
                str2 = "ISO-8859-1";
            } else {
                String str3 = map.get("Content-Type");
                str2 = "ISO-8859-1";
                if (str3 != null) {
                    String[] split = str3.split(";", 0);
                    int i = 1;
                    while (true) {
                        str2 = "ISO-8859-1";
                        if (i >= split.length) {
                            break;
                        }
                        String[] split2 = split[i].trim().split("=", 0);
                        if (split2.length == 2 && split2[0].equals("charset")) {
                            str2 = split2[1];
                            break;
                        }
                        i++;
                    }
                }
            }
            str = new String(bArr, str2);
        } catch (UnsupportedEncodingException e) {
            str = new String(zzagoVar.zzb);
        }
        return zzagy.zzb(str, zzahp.zzb(zzagoVar));
    }

    /* renamed from: zzz */
    public void zzo(String str) {
        zzagx<String> zzagxVar;
        synchronized (this.zza) {
            zzagxVar = this.zzb;
        }
        zzagxVar.zza(str);
    }
}
