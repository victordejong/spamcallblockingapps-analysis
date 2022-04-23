package org.jsoup.nodes;

import java.io.IOException;
import org.apache.commons.lang3.StringUtils;
import org.jsoup.a.c;
import org.jsoup.nodes.f;
/* loaded from: classes5-dex2jar.jar:org/jsoup/nodes/g.class */
public final class g extends l {
    public g(String str, String str2, String str3) {
        c.a((Object) str);
        c.a((Object) str2);
        c.a((Object) str3);
        super.a("name", str);
        super.a("publicId", str2);
        super.a("systemId", str3);
        if (e("publicId")) {
            super.a("pubSysKey", "PUBLIC");
        } else if (e("systemId")) {
            super.a("pubSysKey", "SYSTEM");
        }
    }

    private boolean e(String str) {
        return !org.jsoup.b.c.a(super.c(str));
    }

    @Override // org.jsoup.nodes.m
    public final String a() {
        return "#doctype";
    }

    @Override // org.jsoup.nodes.l, org.jsoup.nodes.m
    public final /* bridge */ /* synthetic */ String a(String str) {
        return super.a(str);
    }

    @Override // org.jsoup.nodes.l, org.jsoup.nodes.m
    public final /* bridge */ /* synthetic */ m a(String str, String str2) {
        return super.a(str, str2);
    }

    @Override // org.jsoup.nodes.m
    final void a(Appendable appendable, int i, f.a aVar) throws IOException {
        if (aVar.h != f.a.EnumC0751a.f39273a || e("publicId") || e("systemId")) {
            appendable.append("<!DOCTYPE");
        } else {
            appendable.append("<!doctype");
        }
        if (e("name")) {
            appendable.append(StringUtils.SPACE).append(super.c("name"));
        }
        if (e("pubSysKey")) {
            appendable.append(StringUtils.SPACE).append(super.c("pubSysKey"));
        }
        if (e("publicId")) {
            appendable.append(" \"").append(super.c("publicId")).append('\"');
        }
        if (e("systemId")) {
            appendable.append(" \"").append(super.c("systemId")).append('\"');
        }
        appendable.append('>');
    }

    @Override // org.jsoup.nodes.m
    final void b(Appendable appendable, int i, f.a aVar) {
    }

    @Override // org.jsoup.nodes.l, org.jsoup.nodes.m
    public final /* bridge */ /* synthetic */ boolean b(String str) {
        return super.b(str);
    }

    public final void b_(String str) {
        if (str != null) {
            super.a("pubSysKey", str);
        }
    }

    @Override // org.jsoup.nodes.l, org.jsoup.nodes.m
    public final /* bridge */ /* synthetic */ String c(String str) {
        return super.c(str);
    }

    @Override // org.jsoup.nodes.l, org.jsoup.nodes.m
    public final /* bridge */ /* synthetic */ m e() {
        return super.e();
    }

    @Override // org.jsoup.nodes.l, org.jsoup.nodes.m
    public final /* bridge */ /* synthetic */ int f() {
        return super.f();
    }

    @Override // org.jsoup.nodes.l, org.jsoup.nodes.m
    public final /* bridge */ /* synthetic */ String g() {
        return super.g();
    }
}
