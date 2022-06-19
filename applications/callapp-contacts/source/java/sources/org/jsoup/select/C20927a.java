package org.jsoup.select;

import org.jsoup.nodes.AbstractC20921m;
import org.jsoup.nodes.C20911h;
import org.jsoup.select.AbstractC20972e;
/* renamed from: org.jsoup.select.a */
/* loaded from: classes5-dex2jar.jar:org/jsoup/select/a.class */
public final class C20927a {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.jsoup.select.a$a */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/a$a.class */
    public static final class C20928a implements AbstractC20975g {

        /* renamed from: a */
        private final C20911h f67506a;

        /* renamed from: b */
        private final C20933c f67507b;

        /* renamed from: c */
        private final AbstractC20934d f67508c;

        C20928a(C20911h c20911h, C20933c c20933c, AbstractC20934d abstractC20934d) {
            this.f67506a = c20911h;
            this.f67507b = c20933c;
            this.f67508c = abstractC20934d;
        }

        @Override // org.jsoup.select.AbstractC20975g
        /* renamed from: a */
        public final void mo191a(AbstractC20921m abstractC20921m, int i) {
            if (abstractC20921m instanceof C20911h) {
                C20911h c20911h = (C20911h) abstractC20921m;
                if (!this.f67508c.mo170a(this.f67506a, c20911h)) {
                    return;
                }
                this.f67507b.add(c20911h);
            }
        }

        @Override // org.jsoup.select.AbstractC20975g
        /* renamed from: b */
        public final void mo190b(AbstractC20921m abstractC20921m, int i) {
        }
    }

    /* renamed from: org.jsoup.select.a$b */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/a$b.class */
    public static final class C20929b implements AbstractC20972e {

        /* renamed from: a */
        public C20911h f67509a = null;

        /* renamed from: b */
        private final C20911h f67510b;

        /* renamed from: c */
        private final AbstractC20934d f67511c;

        public C20929b(C20911h c20911h, AbstractC20934d abstractC20934d) {
            this.f67510b = c20911h;
            this.f67511c = abstractC20934d;
        }

        @Override // org.jsoup.select.AbstractC20972e
        /* renamed from: a */
        public final int mo194a() {
            return AbstractC20972e.EnumC20973a.f67532a;
        }

        @Override // org.jsoup.select.AbstractC20972e
        /* renamed from: a */
        public final int mo193a(AbstractC20921m abstractC20921m) {
            if (abstractC20921m instanceof C20911h) {
                C20911h c20911h = (C20911h) abstractC20921m;
                if (this.f67511c.mo170a(this.f67510b, c20911h)) {
                    this.f67509a = c20911h;
                    return AbstractC20972e.EnumC20973a.f67536e;
                }
            }
            return AbstractC20972e.EnumC20973a.f67532a;
        }
    }

    private C20927a() {
    }

    /* renamed from: a */
    public static C20933c m202a(AbstractC20934d abstractC20934d, C20911h c20911h) {
        C20933c c20933c = new C20933c();
        C20974f.m192a(new C20928a(c20911h, c20933c, abstractC20934d), c20911h);
        return c20933c;
    }
}
