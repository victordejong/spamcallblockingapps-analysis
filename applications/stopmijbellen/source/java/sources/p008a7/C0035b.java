package p008a7;

import android.webkit.WebView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import p068d2.C2362m;
import p124i4.C3102d;
/* renamed from: a7.b */
/* loaded from: classes-dex2jar.jar:a7/b.class */
public final class C0035b {

    /* renamed from: a */
    public final C2362m f54a;

    /* renamed from: b */
    public final WebView f55b;

    /* renamed from: c */
    public final List<C0041h> f56c;

    /* renamed from: d */
    public final Map<String, C0041h> f57d = new HashMap();

    /* renamed from: e */
    public final String f58e;

    /* renamed from: f */
    public final String f59f;

    /* renamed from: g */
    public final String f60g;

    /* renamed from: h */
    public final EnumC0036c f61h;

    public C0035b(C2362m c2362m, WebView webView, String str, List<C0041h> list, String str2, String str3, EnumC0036c enumC0036c) {
        ArrayList arrayList = new ArrayList();
        this.f56c = arrayList;
        this.f54a = c2362m;
        this.f55b = webView;
        this.f58e = str;
        this.f61h = enumC0036c;
        if (list != null) {
            arrayList.addAll(list);
            for (C0041h c0041h : list) {
                this.f57d.put(UUID.randomUUID().toString(), c0041h);
            }
        }
        this.f60g = str2;
        this.f59f = str3;
    }

    /* renamed from: a */
    public static C0035b m8877a(C2362m c2362m, String str, List<C0041h> list, String str2, String str3) {
        C3102d.m2638a(c2362m, "Partner is null");
        C3102d.m2638a(str, "OM SDK JS script content is null");
        C3102d.m2638a(list, "VerificationScriptResources is null");
        return new C0035b(c2362m, null, str, list, null, null, EnumC0036c.NATIVE);
    }
}
