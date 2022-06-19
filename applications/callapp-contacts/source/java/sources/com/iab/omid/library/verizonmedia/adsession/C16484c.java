package com.iab.omid.library.verizonmedia.adsession;

import android.webkit.WebView;
import com.iab.omid.library.verizonmedia.p450d.C16514d;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
/* renamed from: com.iab.omid.library.verizonmedia.adsession.c */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/adsession/c.class */
public final class C16484c {

    /* renamed from: a */
    public final C16490i f58029a;

    /* renamed from: b */
    final WebView f58030b;

    /* renamed from: c */
    public final List<C16491j> f58031c;

    /* renamed from: d */
    public final Map<String, C16491j> f58032d = new HashMap();

    /* renamed from: e */
    final String f58033e;

    /* renamed from: f */
    public final String f58034f;

    /* renamed from: g */
    public final String f58035g;

    /* renamed from: h */
    public final EnumC16485d f58036h;

    public C16484c(C16490i c16490i, WebView webView, String str, List<C16491j> list, String str2, String str3, EnumC16485d enumC16485d) {
        ArrayList arrayList = new ArrayList();
        this.f58031c = arrayList;
        this.f58029a = c16490i;
        this.f58030b = webView;
        this.f58033e = str;
        this.f58036h = enumC16485d;
        if (list != null) {
            arrayList.addAll(list);
            for (C16491j c16491j : list) {
                this.f58032d.put(UUID.randomUUID().toString(), c16491j);
            }
        }
        this.f58035g = str2;
        this.f58034f = str3;
    }

    /* renamed from: a */
    public static C16484c m7157a(C16490i c16490i, String str, List<C16491j> list) {
        C16514d.m7102a(c16490i, "Partner is null");
        C16514d.m7102a((Object) str, "OM SDK JS script content is null");
        C16514d.m7102a(list, "VerificationScriptResources is null");
        return new C16484c(c16490i, null, str, list, null, null, EnumC16485d.NATIVE);
    }
}
