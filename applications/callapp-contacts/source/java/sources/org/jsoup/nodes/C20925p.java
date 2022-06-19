package org.jsoup.nodes;

import java.io.IOException;
import org.jsoup.nodes.C20906f;
import org.jsoup.p591b.C20782c;
/* renamed from: org.jsoup.nodes.p */
/* loaded from: classes5-dex2jar.jar:org/jsoup/nodes/p.class */
public class C20925p extends AbstractC20920l {
    public C20925p(String str) {
        this.f67500a = str;
    }

    /* renamed from: a */
    public static boolean m217a(StringBuilder sb) {
        return sb.length() != 0 && sb.charAt(sb.length() - 1) == ' ';
    }

    @Override // org.jsoup.nodes.AbstractC20921m
    /* renamed from: a */
    public String mo215a() {
        return "#text";
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
    void mo214a(Appendable appendable, int i, C20906f.C20907a c20907a) throws IOException {
        boolean z = c20907a.f67466e;
        if (z && ((this.f67502h == 0 && (this.f67501g instanceof C20911h) && ((C20911h) this.f67501g).f67481e.f67390d && !C20782c.m494a(m246k())) || (c20907a.f67467f && m220z().size() > 0 && !C20782c.m494a(m246k())))) {
            m237c(appendable, i, c20907a);
        }
        C20914i.m257a(appendable, m246k(), c20907a, false, z && !C20911h.m269d(this.f67501g), z && (this.f67501g instanceof C20906f));
    }

    /* renamed from: b */
    public C20925p clone() {
        return (C20925p) super.clone();
    }

    @Override // org.jsoup.nodes.AbstractC20921m
    /* renamed from: b */
    void mo211b(Appendable appendable, int i, C20906f.C20907a c20907a) {
    }

    @Override // org.jsoup.nodes.AbstractC20920l, org.jsoup.nodes.AbstractC20921m
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ boolean mo210b(String str) {
        return super.mo210b(str);
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

    @Override // org.jsoup.nodes.AbstractC20921m
    public String toString() {
        return aB_();
    }
}
