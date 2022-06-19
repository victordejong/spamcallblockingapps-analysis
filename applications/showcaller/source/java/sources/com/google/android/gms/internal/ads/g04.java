package com.google.android.gms.internal.ads;

import com.yanzhenjie.nohttp.Headers;
import java.io.UnsupportedEncodingException;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/g04.class */
public class g04 extends dz3<String> {

    /* renamed from: p */
    private final Object f23218p = new Object();

    /* renamed from: q */
    private final iz3<String> f23219q;

    public g04(int i, String str, iz3<String> iz3Var, hz3 hz3Var) {
        super(i, str, hz3Var);
        this.f23219q = iz3Var;
    }

    /* renamed from: B */
    public void mo15000B(String str) {
        iz3<String> iz3Var;
        synchronized (this.f23218p) {
            iz3Var = this.f23219q;
        }
        iz3Var.mo14251a(str);
    }

    @Override // com.google.android.gms.internal.ads.dz3
    /* renamed from: u */
    public final jz3<String> mo14999u(zy3 zy3Var) {
        String str;
        String str2;
        try {
            byte[] bArr = zy3Var.f33456b;
            Map<String, String> map = zy3Var.f33457c;
            if (map == null) {
                str2 = "ISO-8859-1";
            } else {
                String str3 = map.get(Headers.HEAD_KEY_CONTENT_TYPE);
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
            str = new String(zy3Var.f33456b);
        }
        return jz3.m14011a(str, xz3.m9012a(zy3Var));
    }
}
