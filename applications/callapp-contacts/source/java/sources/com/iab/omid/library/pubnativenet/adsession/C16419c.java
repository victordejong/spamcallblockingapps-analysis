package com.iab.omid.library.pubnativenet.adsession;

import android.webkit.WebView;
import com.iab.omid.library.pubnativenet.p441d.C16448d;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
/* renamed from: com.iab.omid.library.pubnativenet.adsession.c */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/adsession/c.class */
public final class C16419c {

    /* renamed from: a */
    public final C16425i f57900a;

    /* renamed from: b */
    final WebView f57901b;

    /* renamed from: c */
    public final List<C16426j> f57902c;

    /* renamed from: d */
    public final Map<String, C16426j> f57903d = new HashMap();

    /* renamed from: e */
    final String f57904e;

    /* renamed from: f */
    public final String f57905f;

    /* renamed from: g */
    public final String f57906g;

    /* renamed from: h */
    public final EnumC16420d f57907h;

    public C16419c(C16425i c16425i, WebView webView, String str, List<C16426j> list, String str2, String str3, EnumC16420d enumC16420d) {
        ArrayList arrayList = new ArrayList();
        this.f57902c = arrayList;
        this.f57900a = c16425i;
        this.f57901b = webView;
        this.f57904e = str;
        this.f57907h = enumC16420d;
        if (list != null) {
            arrayList.addAll(list);
            for (C16426j c16426j : list) {
                this.f57903d.put(UUID.randomUUID().toString(), c16426j);
            }
        }
        this.f57906g = str2;
        this.f57905f = str3;
    }

    /* renamed from: a */
    public static C16419c m7277a(C16425i c16425i, String str, List<C16426j> list, String str2, String str3) {
        C16448d.m7223a(c16425i, "Partner is null");
        C16448d.m7223a((Object) str, "OM SDK JS script content is null");
        C16448d.m7223a(list, "VerificationScriptResources is null");
        C16448d.m7220b(str3, "CustomReferenceData is greater than 256 characters");
        return new C16419c(c16425i, null, str, list, str2, str3, EnumC16420d.NATIVE);
    }
}
