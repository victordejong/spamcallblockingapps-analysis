package org.jsoup.nodes;

import java.io.IOException;
import org.apache.commons.lang3.StringUtils;
import org.jsoup.nodes.C20906f;
import org.jsoup.p590a.C20779c;
import org.jsoup.p591b.C20782c;
/* renamed from: org.jsoup.nodes.g */
/* loaded from: classes5-dex2jar.jar:org/jsoup/nodes/g.class */
public final class C20910g extends AbstractC20920l {
    public C20910g(String str, String str2, String str3) {
        C20779c.m507a((Object) str);
        C20779c.m507a((Object) str2);
        C20779c.m507a((Object) str3);
        super.mo212a("name", str);
        super.mo212a("publicId", str2);
        super.mo212a("systemId", str3);
        if (m280e("publicId")) {
            super.mo212a("pubSysKey", "PUBLIC");
        } else if (!m280e("systemId")) {
        } else {
            super.mo212a("pubSysKey", "SYSTEM");
        }
    }

    /* renamed from: e */
    private boolean m280e(String str) {
        return !C20782c.m494a(super.mo208c(str));
    }

    @Override // org.jsoup.nodes.AbstractC20921m
    /* renamed from: a */
    public final String mo215a() {
        return "#doctype";
    }

    @Override // org.jsoup.nodes.AbstractC20920l, org.jsoup.nodes.AbstractC20921m
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ String mo213a(String str) {
        return super.mo213a(str);
    }

    @Override // org.jsoup.nodes.AbstractC20920l, org.jsoup.nodes.AbstractC20921m
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ AbstractC20921m mo212a(String str, String str2) {
        return super.mo212a(str, str2);
    }

    @Override // org.jsoup.nodes.AbstractC20921m
    /* renamed from: a */
    final void mo214a(Appendable appendable, int i, C20906f.C20907a c20907a) throws IOException {
        if (c20907a.f67469h != C20906f.C20907a.EnumC20908a.f67470a || m280e("publicId") || m280e("systemId")) {
            appendable.append("<!DOCTYPE");
        } else {
            appendable.append("<!doctype");
        }
        if (m280e("name")) {
            appendable.append(StringUtils.SPACE).append(super.mo208c("name"));
        }
        if (m280e("pubSysKey")) {
            appendable.append(StringUtils.SPACE).append(super.mo208c("pubSysKey"));
        }
        if (m280e("publicId")) {
            appendable.append(" \"").append(super.mo208c("publicId")).append('\"');
        }
        if (m280e("systemId")) {
            appendable.append(" \"").append(super.mo208c("systemId")).append('\"');
        }
        appendable.append('>');
    }

    @Override // org.jsoup.nodes.AbstractC20921m
    /* renamed from: b */
    final void mo211b(Appendable appendable, int i, C20906f.C20907a c20907a) {
    }

    @Override // org.jsoup.nodes.AbstractC20920l, org.jsoup.nodes.AbstractC20921m
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ boolean mo210b(String str) {
        return super.mo210b(str);
    }

    /* renamed from: b_ */
    public final void m281b_(String str) {
        if (str != null) {
            super.mo212a("pubSysKey", str);
        }
    }

    @Override // org.jsoup.nodes.AbstractC20920l, org.jsoup.nodes.AbstractC20921m
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ String mo208c(String str) {
        return super.mo208c(str);
    }

    @Override // org.jsoup.nodes.AbstractC20920l, org.jsoup.nodes.AbstractC20921m
    /* renamed from: e */
    public final /* bridge */ /* synthetic */ AbstractC20921m mo207e() {
        return super.mo207e();
    }

    @Override // org.jsoup.nodes.AbstractC20920l, org.jsoup.nodes.AbstractC20921m
    /* renamed from: f */
    public final /* bridge */ /* synthetic */ int mo206f() {
        return super.mo206f();
    }

    @Override // org.jsoup.nodes.AbstractC20920l, org.jsoup.nodes.AbstractC20921m
    /* renamed from: g */
    public final /* bridge */ /* synthetic */ String mo205g() {
        return super.mo205g();
    }
}
