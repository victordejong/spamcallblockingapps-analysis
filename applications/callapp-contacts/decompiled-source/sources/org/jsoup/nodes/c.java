package org.jsoup.nodes;

import java.io.IOException;
import org.jsoup.UncheckedIOException;
import org.jsoup.nodes.f;
/* loaded from: classes5-dex2jar.jar:org/jsoup/nodes/c.class */
public final class c extends p {
    public c(String str) {
        super(str);
    }

    @Override // org.jsoup.nodes.p, org.jsoup.nodes.m
    public final String a() {
        return "#cdata";
    }

    @Override // org.jsoup.nodes.p, org.jsoup.nodes.m
    final void a(Appendable appendable, int i, f.a aVar) throws IOException {
        appendable.append("<![CDATA[").append(k());
    }

    @Override // org.jsoup.nodes.p
    public final /* bridge */ /* synthetic */ p b() {
        return (c) super.clone();
    }

    @Override // org.jsoup.nodes.p, org.jsoup.nodes.m
    final void b(Appendable appendable, int i, f.a aVar) {
        try {
            appendable.append("]]>");
        } catch (IOException e) {
            throw new UncheckedIOException(e);
        }
    }

    @Override // org.jsoup.nodes.p, org.jsoup.nodes.m
    public final /* synthetic */ m c() {
        return (c) super.clone();
    }

    @Override // org.jsoup.nodes.p, org.jsoup.nodes.m
    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        return (c) super.clone();
    }
}
