package com.google.android.gms.internal.ads;

import java.io.UnsupportedEncodingException;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aik.class */
public class aik extends AbstractC13087z<String> {
    private final Object mLock = new Object();
    private AbstractC12600hb<String> zzcy;

    public aik(int i, String str, AbstractC12600hb<String> abstractC12600hb, AbstractC12627ib abstractC12627ib) {
        super(i, str, abstractC12627ib);
        this.zzcy = abstractC12600hb;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC13087z
    public final C12545fa<String> zza(emg emgVar) {
        String str;
        try {
            byte[] bArr = emgVar.f49172b;
            Map<String, String> map = emgVar.f49173c;
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
            str = new String(emgVar.f49172b);
        }
        return C12545fa.m14680a(str, aaj.m18953a(emgVar));
    }

    /* renamed from: zzi */
    public void zza(String str) {
        AbstractC12600hb<String> abstractC12600hb;
        synchronized (this.mLock) {
            abstractC12600hb = this.zzcy;
        }
        if (abstractC12600hb != null) {
            abstractC12600hb.zzb(str);
        }
    }
}
