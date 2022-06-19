package com.google.android.gms.internal.ads;

import com.huawei.hms.framework.common.ContainerUtils;
import java.io.UnsupportedEncodingException;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzxh.class */
public class zzxh extends zzwc<String> {
    private final Object zza = new Object();
    private final zzwh<String> zzb;

    public zzxh(int i, String str, zzwh<String> zzwhVar, zzwg zzwgVar) {
        super(i, str, zzwgVar);
        this.zzb = zzwhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzwc
    public final zzwi<String> zzs(zzvy zzvyVar) {
        String str;
        String str2;
        try {
            byte[] bArr = zzvyVar.zzb;
            Map<String, String> map = zzvyVar.zzc;
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
                        String[] split2 = split[i].trim().split(ContainerUtils.KEY_VALUE_DELIMITER, 0);
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
            str = new String(zzvyVar.zzb);
        }
        return zzwi.zza(str, zzwz.zza(zzvyVar));
    }

    /* renamed from: zzz */
    public void zzt(String str) {
        zzwh<String> zzwhVar;
        synchronized (this.zza) {
            zzwhVar = this.zzb;
        }
        zzwhVar.zza(str);
    }
}
