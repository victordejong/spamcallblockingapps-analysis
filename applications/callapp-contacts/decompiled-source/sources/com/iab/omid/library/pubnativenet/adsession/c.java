package com.iab.omid.library.pubnativenet.adsession;

import android.webkit.WebView;
import com.iab.omid.library.pubnativenet.d.d;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/adsession/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public final i f33341a;

    /* renamed from: b  reason: collision with root package name */
    final WebView f33342b;

    /* renamed from: c  reason: collision with root package name */
    public final List<j> f33343c;

    /* renamed from: d  reason: collision with root package name */
    public final Map<String, j> f33344d = new HashMap();
    final String e;
    public final String f;
    public final String g;
    public final d h;

    public c(i iVar, WebView webView, String str, List<j> list, String str2, String str3, d dVar) {
        ArrayList arrayList = new ArrayList();
        this.f33343c = arrayList;
        this.f33341a = iVar;
        this.f33342b = webView;
        this.e = str;
        this.h = dVar;
        if (list != null) {
            arrayList.addAll(list);
            for (j jVar : list) {
                this.f33344d.put(UUID.randomUUID().toString(), jVar);
            }
        }
        this.g = str2;
        this.f = str3;
    }

    public static c a(i iVar, String str, List<j> list, String str2, String str3) {
        d.a(iVar, "Partner is null");
        d.a((Object) str, "OM SDK JS script content is null");
        d.a(list, "VerificationScriptResources is null");
        d.b(str3, "CustomReferenceData is greater than 256 characters");
        return new c(iVar, null, str, list, str2, str3, d.NATIVE);
    }
}
