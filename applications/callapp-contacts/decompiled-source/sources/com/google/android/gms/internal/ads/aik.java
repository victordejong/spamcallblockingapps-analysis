package com.google.android.gms.internal.ads;

import java.io.UnsupportedEncodingException;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aik.class */
public class aik extends z<String> {
    private final Object mLock = new Object();
    private hb<String> zzcy;

    public aik(int i, String str, hb<String> hbVar, ib ibVar) {
        super(i, str, ibVar);
        this.zzcy = hbVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.z
    public final fa<String> zza(emg emgVar) {
        String str;
        try {
            byte[] bArr = emgVar.f27949b;
            Map<String, String> map = emgVar.f27950c;
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
            str = new String(emgVar.f27949b);
        }
        return fa.a(str, aaj.a(emgVar));
    }

    /* renamed from: zzi */
    public void zza(String str) {
        hb<String> hbVar;
        synchronized (this.mLock) {
            hbVar = this.zzcy;
        }
        if (hbVar != null) {
            hbVar.zzb(str);
        }
    }
}
