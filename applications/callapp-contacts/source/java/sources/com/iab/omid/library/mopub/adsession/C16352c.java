package com.iab.omid.library.mopub.adsession;

import android.webkit.WebView;
import com.iab.omid.library.mopub.p432d.C16382d;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
/* renamed from: com.iab.omid.library.mopub.adsession.c */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/adsession/c.class */
public final class C16352c {

    /* renamed from: a */
    public final C16358i f57768a;

    /* renamed from: b */
    final WebView f57769b;

    /* renamed from: c */
    public final List<C16359j> f57770c;

    /* renamed from: d */
    public final Map<String, C16359j> f57771d = new HashMap();

    /* renamed from: e */
    final String f57772e;

    /* renamed from: f */
    public final String f57773f;

    /* renamed from: g */
    public final String f57774g;

    /* renamed from: h */
    public final EnumC16353d f57775h;

    public C16352c(C16358i c16358i, WebView webView, String str, List<C16359j> list, String str2, String str3, EnumC16353d enumC16353d) {
        ArrayList arrayList = new ArrayList();
        this.f57770c = arrayList;
        this.f57768a = c16358i;
        this.f57769b = webView;
        this.f57772e = str;
        this.f57775h = enumC16353d;
        if (list != null) {
            arrayList.addAll(list);
            for (C16359j c16359j : list) {
                this.f57771d.put(UUID.randomUUID().toString(), c16359j);
            }
        }
        this.f57774g = str2;
        this.f57773f = str3;
    }

    /* renamed from: a */
    public static C16352c m7375a(C16358i c16358i, String str, List<C16359j> list, String str2, String str3) {
        C16382d.m7325a(c16358i, "Partner is null");
        C16382d.m7325a((Object) str, "OM SDK JS script content is null");
        C16382d.m7325a(list, "VerificationScriptResources is null");
        C16382d.m7322b(str3, "CustomReferenceData is greater than 256 characters");
        return new C16352c(c16358i, null, str, list, str2, str3, EnumC16353d.NATIVE);
    }
}
