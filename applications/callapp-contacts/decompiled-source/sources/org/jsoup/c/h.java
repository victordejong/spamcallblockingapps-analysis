package org.jsoup.c;

import com.appsflyer.internal.referrer.Payload;
import com.google.api.client.googleapis.notifications.b;
import com.mopub.common.AdType;
import java.util.HashMap;
import java.util.Map;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import org.jsoup.a.c;
/* loaded from: classes5-dex2jar.jar:org/jsoup/c/h.class */
public final class h implements Cloneable {
    private static final String[] k;

    /* renamed from: a  reason: collision with root package name */
    public String f39231a;

    /* renamed from: b  reason: collision with root package name */
    public String f39232b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f39233c = true;

    /* renamed from: d  reason: collision with root package name */
    public boolean f39234d = true;
    public boolean e = false;
    boolean f = false;
    public boolean g = false;
    boolean h = false;
    private boolean j = false;
    private static final Map<String, h> i = new HashMap();
    private static final String[] l = {"object", "base", "font", "tt", "i", b.f31754a, "u", "big", "small", "em", "strong", "dfn", "code", "samp", "kbd", "var", "cite", "abbr", "time", "acronym", "mark", "ruby", "rt", "rp", "a", "img", "br", "wbr", "map", "q", "sub", "sup", "bdo", "iframe", "embed", "span", "input", "select", "textarea", "label", "button", "optgroup", "option", "legend", "datalist", "keygen", "output", EventConstants.PROGRESS, "meter", "area", "param", Payload.SOURCE, "track", "summary", "command", "device", "area", "basefont", "bgsound", "menuitem", "param", Payload.SOURCE, "track", "data", "bdi", "s"};
    private static final String[] m = {"meta", "link", "base", "frame", "img", "br", "wbr", "embed", "hr", "input", "keygen", "col", "command", "device", "area", "basefont", "bgsound", "menuitem", "param", Payload.SOURCE, "track"};
    private static final String[] n = {"title", "a", "p", "h1", "h2", "h3", "h4", "h5", "h6", "pre", "address", "li", "th", "td", "script", "style", "ins", "del", "s"};
    private static final String[] o = {"pre", "plaintext", "title", "textarea"};
    private static final String[] p = {"button", "fieldset", "input", "keygen", "object", "output", "select", "textarea"};
    private static final String[] q = {"input", "keygen", "object", "select", "textarea"};

    static {
        String[] strArr = {AdType.HTML, "head", "body", "frameset", "script", "noscript", "style", "meta", "link", "title", "frame", "noframes", "section", "nav", "aside", "hgroup", "header", "footer", "p", "h1", "h2", "h3", "h4", "h5", "h6", "ul", "ol", "pre", "div", "blockquote", "hr", "address", "figure", "figcaption", "form", "fieldset", "ins", "del", "dl", "dt", "dd", "li", "table", "caption", "thead", "tfoot", "tbody", "colgroup", "col", "tr", "th", "td", "video", "audio", "canvas", "details", "menu", "plaintext", "template", "article", "main", "svg", "math", "center"};
        k = strArr;
        for (String str : strArr) {
            a(new h(str));
        }
        for (String str2 : l) {
            h hVar = new h(str2);
            hVar.f39233c = false;
            hVar.f39234d = false;
            a(hVar);
        }
        for (String str3 : m) {
            h hVar2 = i.get(str3);
            c.a(hVar2);
            hVar2.e = true;
        }
        for (String str4 : n) {
            h hVar3 = i.get(str4);
            c.a(hVar3);
            hVar3.f39234d = false;
        }
        for (String str5 : o) {
            h hVar4 = i.get(str5);
            c.a(hVar4);
            hVar4.g = true;
        }
        for (String str6 : p) {
            h hVar5 = i.get(str6);
            c.a(hVar5);
            hVar5.h = true;
        }
        for (String str7 : q) {
            h hVar6 = i.get(str7);
            c.a(hVar6);
            hVar6.j = true;
        }
    }

    private h(String str) {
        this.f39231a = str;
        this.f39232b = org.jsoup.b.b.a(str);
    }

    public static h a(String str) {
        return a(str, f.f39225b);
    }

    public static h a(String str, f fVar) {
        c.a((Object) str);
        Map<String, h> map = i;
        h hVar = map.get(str);
        h hVar2 = hVar;
        if (hVar == null) {
            String a2 = fVar.a(str);
            c.a(a2);
            String a3 = org.jsoup.b.b.a(a2);
            hVar2 = map.get(a3);
            if (hVar2 == null) {
                hVar2 = new h(a2);
                hVar2.f39233c = false;
            } else if (fVar.f39226c && !a2.equals(a3)) {
                hVar2 = hVar2.clone();
                hVar2.f39231a = a2;
            }
        }
        return hVar2;
    }

    private static void a(h hVar) {
        i.put(hVar.f39231a, hVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public h clone() {
        try {
            return (h) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    public final boolean a() {
        return this.e || this.f;
    }

    public final boolean b() {
        return i.containsKey(this.f39231a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return this.f39231a.equals(hVar.f39231a) && this.e == hVar.e && this.f39234d == hVar.f39234d && this.f39233c == hVar.f39233c && this.g == hVar.g && this.f == hVar.f && this.h == hVar.h && this.j == hVar.j;
    }

    public final int hashCode() {
        return (((((((((((((this.f39231a.hashCode() * 31) + (this.f39233c ? 1 : 0)) * 31) + (this.f39234d ? 1 : 0)) * 31) + (this.e ? 1 : 0)) * 31) + (this.f ? 1 : 0)) * 31) + (this.g ? 1 : 0)) * 31) + (this.h ? 1 : 0)) * 31) + (this.j ? 1 : 0);
    }

    public final String toString() {
        return this.f39231a;
    }
}
