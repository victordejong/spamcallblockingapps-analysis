package org.jsoup.p592c;

import java.io.Reader;
import java.io.StringReader;
import org.jsoup.nodes.C20906f;
/* renamed from: org.jsoup.c.g */
/* loaded from: classes5-dex2jar.jar:org/jsoup/c/g.class */
public final class C20814g {

    /* renamed from: a */
    C20812e f67376a = C20812e.m400b();

    /* renamed from: b */
    public C20813f f67377b;

    /* renamed from: c */
    private AbstractC20897m f67378c;

    public C20814g(AbstractC20897m abstractC20897m) {
        this.f67378c = abstractC20897m;
        this.f67377b = abstractC20897m.mo324a();
    }

    /* renamed from: a */
    public static C20814g m397a() {
        return new C20814g(new C20898n());
    }

    /* renamed from: a */
    public final C20906f m396a(Reader reader, String str) {
        return this.f67378c.m329b(reader, str, this);
    }

    /* renamed from: a */
    public final C20906f m395a(String str, String str2) {
        return this.f67378c.m329b(new StringReader(str), str2, this);
    }
}
