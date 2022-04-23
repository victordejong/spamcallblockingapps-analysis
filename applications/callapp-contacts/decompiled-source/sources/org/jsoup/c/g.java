package org.jsoup.c;

import java.io.Reader;
import java.io.StringReader;
import org.jsoup.nodes.f;
/* loaded from: classes5-dex2jar.jar:org/jsoup/c/g.class */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    e f39228a = e.b();

    /* renamed from: b  reason: collision with root package name */
    public f f39229b;

    /* renamed from: c  reason: collision with root package name */
    private m f39230c;

    public g(m mVar) {
        this.f39230c = mVar;
        this.f39229b = mVar.a();
    }

    public static g a() {
        return new g(new n());
    }

    public final f a(Reader reader, String str) {
        return this.f39230c.b(reader, str, this);
    }

    public final f a(String str, String str2) {
        return this.f39230c.b(new StringReader(str), str2, this);
    }
}
