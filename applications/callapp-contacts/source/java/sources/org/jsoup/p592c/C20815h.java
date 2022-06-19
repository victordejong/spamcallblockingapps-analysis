package org.jsoup.p592c;

import com.appsflyer.internal.referrer.Payload;
import com.google.api.client.googleapis.notifications.C15291b;
import com.mopub.common.AdType;
import java.util.HashMap;
import java.util.Map;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import org.jsoup.p590a.C20779c;
import org.jsoup.p591b.C20781b;
/* renamed from: org.jsoup.c.h */
/* loaded from: classes5-dex2jar.jar:org/jsoup/c/h.class */
public final class C20815h implements Cloneable {

    /* renamed from: k */
    private static final String[] f67380k;

    /* renamed from: a */
    public String f67387a;

    /* renamed from: b */
    public String f67388b;

    /* renamed from: c */
    public boolean f67389c = true;

    /* renamed from: d */
    public boolean f67390d = true;

    /* renamed from: e */
    public boolean f67391e = false;

    /* renamed from: f */
    boolean f67392f = false;

    /* renamed from: g */
    public boolean f67393g = false;

    /* renamed from: h */
    boolean f67394h = false;

    /* renamed from: j */
    private boolean f67395j = false;

    /* renamed from: i */
    private static final Map<String, C20815h> f67379i = new HashMap();

    /* renamed from: l */
    private static final String[] f67381l = {"object", "base", "font", "tt", "i", C15291b.f55271a, "u", "big", "small", "em", "strong", "dfn", "code", "samp", "kbd", "var", "cite", "abbr", "time", "acronym", "mark", "ruby", "rt", "rp", "a", "img", "br", "wbr", "map", "q", "sub", "sup", "bdo", "iframe", "embed", "span", "input", "select", "textarea", "label", "button", "optgroup", "option", "legend", "datalist", "keygen", "output", EventConstants.PROGRESS, "meter", "area", "param", Payload.SOURCE, "track", "summary", "command", "device", "area", "basefont", "bgsound", "menuitem", "param", Payload.SOURCE, "track", "data", "bdi", "s"};

    /* renamed from: m */
    private static final String[] f67382m = {"meta", "link", "base", "frame", "img", "br", "wbr", "embed", "hr", "input", "keygen", "col", "command", "device", "area", "basefont", "bgsound", "menuitem", "param", Payload.SOURCE, "track"};

    /* renamed from: n */
    private static final String[] f67383n = {"title", "a", "p", "h1", "h2", "h3", "h4", "h5", "h6", "pre", "address", "li", "th", "td", "script", "style", "ins", "del", "s"};

    /* renamed from: o */
    private static final String[] f67384o = {"pre", "plaintext", "title", "textarea"};

    /* renamed from: p */
    private static final String[] f67385p = {"button", "fieldset", "input", "keygen", "object", "output", "select", "textarea"};

    /* renamed from: q */
    private static final String[] f67386q = {"input", "keygen", "object", "select", "textarea"};

    static {
        String[] strArr = {AdType.HTML, "head", "body", "frameset", "script", "noscript", "style", "meta", "link", "title", "frame", "noframes", "section", "nav", "aside", "hgroup", "header", "footer", "p", "h1", "h2", "h3", "h4", "h5", "h6", "ul", "ol", "pre", "div", "blockquote", "hr", "address", "figure", "figcaption", "form", "fieldset", "ins", "del", "dl", "dt", "dd", "li", "table", "caption", "thead", "tfoot", "tbody", "colgroup", "col", "tr", "th", "td", "video", "audio", "canvas", "details", "menu", "plaintext", "template", "article", "main", "svg", "math", "center"};
        f67380k = strArr;
        for (String str : strArr) {
            m391a(new C20815h(str));
        }
        for (String str2 : f67381l) {
            C20815h c20815h = new C20815h(str2);
            c20815h.f67389c = false;
            c20815h.f67390d = false;
            m391a(c20815h);
        }
        for (String str3 : f67382m) {
            C20815h c20815h2 = f67379i.get(str3);
            C20779c.m507a(c20815h2);
            c20815h2.f67391e = true;
        }
        for (String str4 : f67383n) {
            C20815h c20815h3 = f67379i.get(str4);
            C20779c.m507a(c20815h3);
            c20815h3.f67390d = false;
        }
        for (String str5 : f67384o) {
            C20815h c20815h4 = f67379i.get(str5);
            C20779c.m507a(c20815h4);
            c20815h4.f67393g = true;
        }
        for (String str6 : f67385p) {
            C20815h c20815h5 = f67379i.get(str6);
            C20779c.m507a(c20815h5);
            c20815h5.f67394h = true;
        }
        for (String str7 : f67386q) {
            C20815h c20815h6 = f67379i.get(str7);
            C20779c.m507a(c20815h6);
            c20815h6.f67395j = true;
        }
    }

    private C20815h(String str) {
        this.f67387a = str;
        this.f67388b = C20781b.m497a(str);
    }

    /* renamed from: a */
    public static C20815h m393a(String str) {
        return m392a(str, C20813f.f67373b);
    }

    /* renamed from: a */
    public static C20815h m392a(String str, C20813f c20813f) {
        C20779c.m507a((Object) str);
        Map<String, C20815h> map = f67379i;
        C20815h c20815h = map.get(str);
        C20815h c20815h2 = c20815h;
        if (c20815h == null) {
            String m399a = c20813f.m399a(str);
            C20779c.m505a(m399a);
            String m497a = C20781b.m497a(m399a);
            c20815h2 = map.get(m497a);
            if (c20815h2 == null) {
                c20815h2 = new C20815h(m399a);
                c20815h2.f67389c = false;
            } else if (c20813f.f67374c && !m399a.equals(m497a)) {
                c20815h2 = c20815h2.clone();
                c20815h2.f67387a = m399a;
            }
        }
        return c20815h2;
    }

    /* renamed from: a */
    private static void m391a(C20815h c20815h) {
        f67379i.put(c20815h.f67387a, c20815h);
    }

    /* renamed from: c */
    public C20815h clone() {
        try {
            return (C20815h) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: a */
    public final boolean m394a() {
        return this.f67391e || this.f67392f;
    }

    /* renamed from: b */
    public final boolean m390b() {
        return f67379i.containsKey(this.f67387a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C20815h)) {
            return false;
        }
        C20815h c20815h = (C20815h) obj;
        return this.f67387a.equals(c20815h.f67387a) && this.f67391e == c20815h.f67391e && this.f67390d == c20815h.f67390d && this.f67389c == c20815h.f67389c && this.f67393g == c20815h.f67393g && this.f67392f == c20815h.f67392f && this.f67394h == c20815h.f67394h && this.f67395j == c20815h.f67395j;
    }

    public final int hashCode() {
        return (((((((((((((this.f67387a.hashCode() * 31) + (this.f67389c ? 1 : 0)) * 31) + (this.f67390d ? 1 : 0)) * 31) + (this.f67391e ? 1 : 0)) * 31) + (this.f67392f ? 1 : 0)) * 31) + (this.f67393g ? 1 : 0)) * 31) + (this.f67394h ? 1 : 0)) * 31) + (this.f67395j ? 1 : 0);
    }

    public final String toString() {
        return this.f67387a;
    }
}
