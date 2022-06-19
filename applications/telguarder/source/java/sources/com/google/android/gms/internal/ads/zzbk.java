package com.google.android.gms.internal.ads;

import com.j256.ormlite.stmt.query.SimpleComparison;
import java.io.UnsupportedEncodingException;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbk.class */
public class zzbk extends zzab<String> {
    private final Object mLock = new Object();
    private zzai<String> zzcy;

    public zzbk(int i, String str, zzai<String> zzaiVar, zzaj zzajVar) {
        super(i, str, zzajVar);
        this.zzcy = zzaiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzab
    public final zzag<String> zza(zzz zzzVar) {
        String str;
        try {
            byte[] bArr = zzzVar.data;
            Map<String, String> map = zzzVar.zzaj;
            String str2 = "ISO-8859-1";
            if (map != null) {
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
                        String[] split2 = split[i].trim().split(SimpleComparison.EQUAL_TO_OPERATION, 0);
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
            str = new String(zzzVar.data);
        }
        return zzag.zza(str, zzbc.zzb(zzzVar));
    }

    /* renamed from: zzi */
    public void zza(String str) {
        zzai<String> zzaiVar;
        synchronized (this.mLock) {
            zzaiVar = this.zzcy;
        }
        if (zzaiVar != null) {
            zzaiVar.zzb(str);
        }
    }
}
