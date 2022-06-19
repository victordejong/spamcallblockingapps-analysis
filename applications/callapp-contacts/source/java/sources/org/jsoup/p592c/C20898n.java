package org.jsoup.p592c;

import java.io.Reader;
import org.jsoup.nodes.AbstractC20921m;
import org.jsoup.nodes.C20901b;
import org.jsoup.nodes.C20903c;
import org.jsoup.nodes.C20904d;
import org.jsoup.nodes.C20906f;
import org.jsoup.nodes.C20910g;
import org.jsoup.nodes.C20911h;
import org.jsoup.nodes.C20925p;
import org.jsoup.nodes.C20926q;
import org.jsoup.p590a.C20779c;
import org.jsoup.p592c.AbstractC20816i;
/* renamed from: org.jsoup.c.n */
/* loaded from: classes5-dex2jar.jar:org/jsoup/c/n.class */
public final class C20898n extends AbstractC20897m {

    /* renamed from: org.jsoup.c.n$1 */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/c/n$1.class */
    static final /* synthetic */ class C208991 {

        /* renamed from: a */
        static final /* synthetic */ int[] f67446a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004d -> B:31:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0051 -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0055 -> B:25:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0059 -> B:21:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005d -> B:29:0x0040). Please submit an issue!!! */
        static {
            int[] iArr = new int[AbstractC20816i.EnumC20826i.values().length];
            f67446a = iArr;
            try {
                iArr[AbstractC20816i.EnumC20826i.StartTag.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f67446a[AbstractC20816i.EnumC20826i.EndTag.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f67446a[AbstractC20816i.EnumC20826i.Comment.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f67446a[AbstractC20816i.EnumC20826i.Character.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f67446a[AbstractC20816i.EnumC20826i.Doctype.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f67446a[AbstractC20816i.EnumC20826i.EOF.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    /* renamed from: a */
    private void m320a(AbstractC20921m abstractC20921m) {
        m325p().m274a(abstractC20921m);
    }

    @Override // org.jsoup.p592c.AbstractC20897m
    /* renamed from: a */
    public final C20813f mo324a() {
        return C20813f.f67373b;
    }

    @Override // org.jsoup.p592c.AbstractC20897m
    /* renamed from: a */
    public final void mo323a(Reader reader, String str, C20814g c20814g) {
        super.mo323a(reader, str, c20814g);
        this.f67442v.add(this.f67441u);
        this.f67441u.f67457a.f67469h = C20906f.C20907a.EnumC20908a.f67471b;
    }

    @Override // org.jsoup.p592c.AbstractC20897m
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ boolean mo322a(String str, C20901b c20901b) {
        return super.mo322a(str, c20901b);
    }

    @Override // org.jsoup.p592c.AbstractC20897m
    /* renamed from: a */
    public final boolean mo321a(AbstractC20816i abstractC20816i) {
        C20911h c20911h;
        switch (C208991.f67446a[abstractC20816i.f67396a.ordinal()]) {
            case 1:
                AbstractC20816i.C20824g c20824g = (AbstractC20816i.C20824g) abstractC20816i;
                C20815h m392a = C20815h.m392a(c20824g.m365j(), this.f67445y);
                if (c20824g.f67411g != null) {
                    c20824g.f67411g.m308a(this.f67445y);
                }
                C20911h c20911h2 = new C20911h(m392a, null, this.f67445y.m398a(c20824g.f67411g));
                m320a(c20911h2);
                if (!c20824g.f67410f) {
                    this.f67442v.add(c20911h2);
                    return true;
                } else if (m392a.m390b()) {
                    return true;
                } else {
                    m392a.f67392f = true;
                    return true;
                }
            case 2:
                String m399a = this.f67445y.m399a(((AbstractC20816i.C20823f) abstractC20816i).f67406b);
                int size = this.f67442v.size() - 1;
                while (true) {
                    c20911h = null;
                    if (size >= 0) {
                        c20911h = this.f67442v.get(size);
                        if (!c20911h.mo215a().equals(m399a)) {
                            size--;
                        }
                    }
                }
                if (c20911h == null) {
                    return true;
                }
                for (int size2 = this.f67442v.size() - 1; size2 >= 0; size2--) {
                    C20911h c20911h3 = this.f67442v.get(size2);
                    this.f67442v.remove(size2);
                    if (c20911h3 == c20911h) {
                        return true;
                    }
                }
                return true;
            case 3:
                AbstractC20816i.C20820c c20820c = (AbstractC20816i.C20820c) abstractC20816i;
                C20904d c20904d = new C20904d(c20820c.m379h());
                AbstractC20921m abstractC20921m = c20904d;
                if (c20820c.f67398b) {
                    abstractC20921m = c20904d;
                    if (c20904d.m287b()) {
                        C20926q m286d = c20904d.m286d();
                        abstractC20921m = c20904d;
                        if (m286d != null) {
                            abstractC20921m = m286d;
                        }
                    }
                }
                m320a(abstractC20921m);
                return true;
            case 4:
                AbstractC20816i.C20819b c20819b = (AbstractC20816i.C20819b) abstractC20816i;
                String str = c20819b.f67397b;
                m320a(c20819b instanceof AbstractC20816i.C20818a ? new C20903c(str) : new C20925p(str));
                return true;
            case 5:
                AbstractC20816i.C20821d c20821d = (AbstractC20816i.C20821d) abstractC20816i;
                C20910g c20910g = new C20910g(this.f67445y.m399a(c20821d.f67401b.toString()), c20821d.f67403d.toString(), c20821d.f67404e.toString());
                c20910g.m281b_(c20821d.f67402c);
                m320a(c20910g);
                return true;
            case 6:
                return true;
            default:
                C20779c.m500b("Unexpected token type: " + abstractC20816i.f67396a);
                return true;
        }
    }
}
