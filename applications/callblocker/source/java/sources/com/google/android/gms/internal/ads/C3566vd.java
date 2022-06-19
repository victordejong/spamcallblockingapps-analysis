package com.google.android.gms.internal.ads;

import java.io.UnsupportedEncodingException;
/* renamed from: com.google.android.gms.internal.ads.vd */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/vd.class */
public class C3566vd extends dts<String> {

    /* renamed from: a */
    private final Object f17496a = new Object();

    /* renamed from: b */
    private AbstractC2762ac<String> f17497b;

    public C3566vd(int i, String str, AbstractC2762ac<String> abstractC2762ac, ebp ebpVar) {
        super(i, str, ebpVar);
        this.f17497b = abstractC2762ac;
    }

    @Override // com.google.android.gms.internal.ads.dts
    /* renamed from: a */
    public final ecj<String> mo6863a(drt drtVar) {
        String str;
        String str2;
        try {
            byte[] bArr = drtVar.f15522b;
            String str3 = drtVar.f15523c.get("Content-Type");
            if (str3 != null) {
                String[] split = str3.split(";", 0);
                for (int i = 1; i < split.length; i++) {
                    String[] split2 = split[i].trim().split("=", 0);
                    if (split2.length == 2 && split2[0].equals("charset")) {
                        str2 = split2[1];
                        break;
                    }
                }
            }
            str2 = "ISO-8859-1";
            str = new String(bArr, str2);
        } catch (UnsupportedEncodingException e) {
            str = new String(drtVar.f15522b);
        }
        return ecj.m7910a(str, C3441qn.m7303a(drtVar));
    }

    /* renamed from: a */
    public void mo6862a(String str) {
        AbstractC2762ac<String> abstractC2762ac;
        synchronized (this.f17496a) {
            abstractC2762ac = this.f17497b;
        }
        if (abstractC2762ac != null) {
            abstractC2762ac.mo6865a(str);
        }
    }
}
