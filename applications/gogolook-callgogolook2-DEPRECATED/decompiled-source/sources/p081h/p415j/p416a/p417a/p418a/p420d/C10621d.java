package p081h.p415j.p416a.p417a.p418a.p420d;

import android.webkit.WebView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p081h.p415j.p416a.p417a.p418a.p423g.C10645e;
/* renamed from: h.j.a.a.a.d.d */
/* loaded from: classes2-dex2jar.jar:h/j/a/a/a/d/d.class */
public final class C10621d {

    /* renamed from: a */
    public final C10624g f24172a;

    /* renamed from: b */
    public final WebView f24173b;

    /* renamed from: c */
    public final List<C10625h> f24174c = new ArrayList();

    /* renamed from: d */
    public final String f24175d;

    /* renamed from: e */
    public final String f24176e;

    /* renamed from: f */
    public final EnumC10622e f24177f;

    public C10621d(C10624g gVar, WebView webView, String str, List<C10625h> list, String str2) {
        EnumC10622e eVar;
        this.f24172a = gVar;
        this.f24173b = webView;
        this.f24175d = str;
        if (list != null) {
            this.f24174c.addAll(list);
            eVar = EnumC10622e.NATIVE;
        } else {
            eVar = EnumC10622e.HTML;
        }
        this.f24177f = eVar;
        this.f24176e = str2;
    }

    /* renamed from: a */
    public static C10621d m11184a(C10624g gVar, WebView webView, String str) {
        C10645e.m11081a(gVar, "Partner is null");
        C10645e.m11081a(webView, "WebView is null");
        if (str != null) {
            C10645e.m11080a(str, 256, "CustomReferenceData is greater than 256 characters");
        }
        return new C10621d(gVar, webView, null, null, str);
    }

    /* renamed from: a */
    public EnumC10622e m11185a() {
        return this.f24177f;
    }

    /* renamed from: b */
    public String m11183b() {
        return this.f24176e;
    }

    /* renamed from: c */
    public String m11182c() {
        return this.f24175d;
    }

    /* renamed from: d */
    public C10624g m11181d() {
        return this.f24172a;
    }

    /* renamed from: e */
    public List<C10625h> m11180e() {
        return Collections.unmodifiableList(this.f24174c);
    }

    /* renamed from: f */
    public WebView m11179f() {
        return this.f24173b;
    }
}
