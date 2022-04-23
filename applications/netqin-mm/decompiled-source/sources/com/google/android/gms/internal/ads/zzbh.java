package com.google.android.gms.internal.ads;

import com.android.volley.toolbox.HttpHeaderParser;
import com.facebook.ads.ExtraHints;
import java.io.UnsupportedEncodingException;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbh.class */
public class zzbh extends zzaa<String> {

    /* renamed from: n */
    public final Object f24981n = new Object();

    /* renamed from: o */
    public zzal<String> f24982o;

    public zzbh(int i, String str, zzal<String> zzalVar, zzai zzaiVar) {
        super(i, str, zzaiVar);
        this.f24982o = zzalVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaa
    /* renamed from: a */
    public final zzaj<String> mo15542a(zzy zzyVar) {
        String str;
        try {
            byte[] bArr = zzyVar.f29085b;
            Map<String, String> map = zzyVar.f29086c;
            String str2 = HttpHeaderParser.DEFAULT_CONTENT_CHARSET;
            if (map != null) {
                String str3 = map.get("Content-Type");
                str2 = HttpHeaderParser.DEFAULT_CONTENT_CHARSET;
                if (str3 != null) {
                    String[] split = str3.split(ExtraHints.KEYWORD_SEPARATOR, 0);
                    int i = 1;
                    while (true) {
                        str2 = HttpHeaderParser.DEFAULT_CONTENT_CHARSET;
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
            str = new String(zzyVar.f29085b);
        }
        return zzaj.m16730a(str, zzbc.m15840a(zzyVar));
    }

    /* renamed from: c */
    public void mo15541a(String str) {
        zzal<String> zzalVar;
        synchronized (this.f24981n) {
            zzalVar = this.f24982o;
        }
        if (zzalVar != null) {
            zzalVar.mo16681b(str);
        }
    }
}
