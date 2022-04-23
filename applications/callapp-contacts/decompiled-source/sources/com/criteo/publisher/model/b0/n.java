package com.criteo.publisher.model.b0;

import com.criteo.publisher.model.b0.b;
import com.criteo.publisher.model.b0.h;
import com.google.gson.JsonParseException;
import com.google.gson.f;
import com.google.gson.j;
import java.net.URI;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/b0/n.class */
public abstract class n {

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/b0/n$a.class */
    static abstract class a {
        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract a a(m mVar);

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract a a(q qVar);

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract a a(List<r> list);

        abstract n a();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract a b(List<p> list);

        /* JADX INFO: Access modifiers changed from: package-private */
        public n b() {
            if (c().isEmpty()) {
                throw new JsonParseException("Expect that native payload has, at least, one product.");
            } else if (!d().isEmpty()) {
                return a();
            } else {
                throw new JsonParseException("Expect that native payload has, at least, one impression pixel.");
            }
        }

        abstract List<r> c();

        abstract List<p> d();
    }

    public static a a() {
        return new b.a();
    }

    public static j<n> a(f fVar) {
        return new h.a(fVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract m b();

    public String c() {
        return b().a();
    }

    public String d() {
        return b().b();
    }

    public URI e() {
        return b().d();
    }

    public URL f() {
        return b().c().a();
    }

    public List<URL> g() {
        ArrayList arrayList = new ArrayList();
        for (p pVar : i()) {
            arrayList.add(pVar.a());
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @com.google.gson.annotations.b(a = "products")
    public abstract List<r> h();

    /* JADX INFO: Access modifiers changed from: package-private */
    @com.google.gson.annotations.b(a = "impressionPixels")
    public abstract List<p> i();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract q j();

    public String k() {
        return j().c();
    }

    public URI l() {
        return j().a();
    }

    public URL m() {
        return j().b();
    }

    public r n() {
        return h().iterator().next();
    }
}
