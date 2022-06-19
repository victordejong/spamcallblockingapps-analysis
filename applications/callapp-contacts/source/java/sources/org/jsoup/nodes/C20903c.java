package org.jsoup.nodes;

import java.io.IOException;
import org.jsoup.UncheckedIOException;
import org.jsoup.nodes.C20906f;
/* renamed from: org.jsoup.nodes.c */
/* loaded from: classes5-dex2jar.jar:org/jsoup/nodes/c.class */
public final class C20903c extends C20925p {
    public C20903c(String str) {
        super(str);
    }

    @Override // org.jsoup.nodes.C20925p, org.jsoup.nodes.AbstractC20921m
    /* renamed from: a */
    public final String mo215a() {
        return "#cdata";
    }

    @Override // org.jsoup.nodes.C20925p, org.jsoup.nodes.AbstractC20921m
    /* renamed from: a */
    final void mo214a(Appendable appendable, int i, C20906f.C20907a c20907a) throws IOException {
        appendable.append("<![CDATA[").append(m246k());
    }

    @Override // org.jsoup.nodes.C20925p
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ C20925p mo216b() {
        return (C20903c) super.clone();
    }

    @Override // org.jsoup.nodes.C20925p, org.jsoup.nodes.AbstractC20921m
    /* renamed from: b */
    final void mo211b(Appendable appendable, int i, C20906f.C20907a c20907a) {
        try {
            appendable.append("]]>");
        } catch (IOException e) {
            throw new UncheckedIOException(e);
        }
    }

    @Override // org.jsoup.nodes.C20925p, org.jsoup.nodes.AbstractC20921m
    /* renamed from: c */
    public final /* synthetic */ AbstractC20921m mo209c() {
        return (C20903c) super.clone();
    }

    @Override // org.jsoup.nodes.C20925p, org.jsoup.nodes.AbstractC20921m
    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        return (C20903c) super.clone();
    }
}
