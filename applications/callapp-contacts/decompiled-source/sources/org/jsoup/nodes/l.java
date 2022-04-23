package org.jsoup.nodes;

import java.util.Collections;
import java.util.List;
import org.jsoup.a.c;
/* loaded from: classes5-dex2jar.jar:org/jsoup/nodes/l.class */
public abstract class l extends m {

    /* renamed from: b  reason: collision with root package name */
    private static final List<m> f39299b = Collections.emptyList();

    /* renamed from: a  reason: collision with root package name */
    Object f39300a;

    private void d() {
        Object obj = this.f39300a;
        if (!(obj instanceof b)) {
            b bVar = new b();
            this.f39300a = bVar;
            if (obj != null) {
                bVar.b(a(), (String) obj);
            }
        }
    }

    @Override // org.jsoup.nodes.m
    public String a(String str) {
        d();
        return super.a(str);
    }

    @Override // org.jsoup.nodes.m
    public m a(String str, String str2) {
        if ((this.f39300a instanceof b) || !str.equals(a())) {
            d();
            super.a(str, str2);
        } else {
            this.f39300a = str2;
        }
        return this;
    }

    @Override // org.jsoup.nodes.m
    public boolean b(String str) {
        d();
        return super.b(str);
    }

    @Override // org.jsoup.nodes.m
    public String c(String str) {
        c.a((Object) str);
        return !(this.f39300a instanceof b) ? str.equals(a()) ? (String) this.f39300a : "" : super.c(str);
    }

    @Override // org.jsoup.nodes.m
    protected final void d(String str) {
    }

    @Override // org.jsoup.nodes.m
    public m e() {
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.jsoup.nodes.m
    public final /* synthetic */ m e(m mVar) {
        l lVar = (l) super.e(mVar);
        Object obj = this.f39300a;
        if (obj instanceof b) {
            lVar.f39300a = ((b) obj).clone();
        }
        return lVar;
    }

    @Override // org.jsoup.nodes.m
    public int f() {
        return 0;
    }

    @Override // org.jsoup.nodes.m
    public String g() {
        return this.g != null ? v().g() : "";
    }

    @Override // org.jsoup.nodes.m
    protected final List<m> h() {
        return f39299b;
    }

    @Override // org.jsoup.nodes.m
    protected final boolean i() {
        return this.f39300a instanceof b;
    }

    @Override // org.jsoup.nodes.m
    public final b j() {
        d();
        return (b) this.f39300a;
    }

    public final String k() {
        return c(a());
    }
}
