package org.jsoup.select;

import org.jsoup.nodes.h;
import org.jsoup.nodes.m;
import org.jsoup.select.e;
/* loaded from: classes5-dex2jar.jar:org/jsoup/select/a.class */
public final class a {

    /* renamed from: org.jsoup.select.a$a  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/a$a.class */
    static final class C0752a implements g {

        /* renamed from: a  reason: collision with root package name */
        private final h f39304a;

        /* renamed from: b  reason: collision with root package name */
        private final c f39305b;

        /* renamed from: c  reason: collision with root package name */
        private final d f39306c;

        C0752a(h hVar, c cVar, d dVar) {
            this.f39304a = hVar;
            this.f39305b = cVar;
            this.f39306c = dVar;
        }

        @Override // org.jsoup.select.g
        public final void a(m mVar, int i) {
            if (mVar instanceof h) {
                h hVar = (h) mVar;
                if (this.f39306c.a(this.f39304a, hVar)) {
                    this.f39305b.add(hVar);
                }
            }
        }

        @Override // org.jsoup.select.g
        public final void b(m mVar, int i) {
        }
    }

    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/a$b.class */
    public static final class b implements e {

        /* renamed from: a  reason: collision with root package name */
        public h f39307a = null;

        /* renamed from: b  reason: collision with root package name */
        private final h f39308b;

        /* renamed from: c  reason: collision with root package name */
        private final d f39309c;

        public b(h hVar, d dVar) {
            this.f39308b = hVar;
            this.f39309c = dVar;
        }

        @Override // org.jsoup.select.e
        public final int a() {
            return e.a.f39330a;
        }

        @Override // org.jsoup.select.e
        public final int a(m mVar) {
            if (mVar instanceof h) {
                h hVar = (h) mVar;
                if (this.f39309c.a(this.f39308b, hVar)) {
                    this.f39307a = hVar;
                    return e.a.e;
                }
            }
            return e.a.f39330a;
        }
    }

    private a() {
    }

    public static c a(d dVar, h hVar) {
        c cVar = new c();
        f.a(new C0752a(hVar, cVar, dVar), hVar);
        return cVar;
    }
}
