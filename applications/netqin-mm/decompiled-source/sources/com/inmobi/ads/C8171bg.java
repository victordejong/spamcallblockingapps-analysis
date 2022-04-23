package com.inmobi.ads;

import com.mopub.common.AdType;
import com.mopub.common.MoPubBrowser;
/* renamed from: com.inmobi.ads.bg */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/bg.class */
public final class C8171bg extends C8103ak {

    /* renamed from: A */
    public boolean f31886A = false;

    /* renamed from: B */
    public boolean f31887B;

    /* renamed from: z */
    public String f31888z;

    public C8171bg(String str, String str2, C8104al alVar, String str3, boolean z) {
        super(str, str2, "WEBVIEW", alVar);
        this.f31887B = false;
        this.f31680e = str3;
        this.f31887B = z;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: c */
    public static String m6277c(String str) {
        char c;
        String trim = str.trim();
        switch (trim.hashCode()) {
            case -1900324833:
                if (trim.equals("reference_html")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case -835221992:
                if (trim.equals("reference_iframe")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 116079:
                if (trim.equals("url")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 3213227:
                if (trim.equals(AdType.HTML)) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        return c != 1 ? c != 2 ? c != 3 ? c != 4 ? "UNKNOWN" : "REF_HTML" : "REF_IFRAME" : "HTML" : MoPubBrowser.DESTINATION_URL_KEY;
    }
}
