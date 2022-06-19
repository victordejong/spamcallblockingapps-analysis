package org.jsoup.p592c;

import com.appsflyer.internal.referrer.Payload;
import com.google.api.client.googleapis.notifications.C15291b;
import com.mopub.common.AdType;
import java.util.ArrayList;
import java.util.Iterator;
import org.apache.commons.lang3.StringUtils;
import org.jsoup.nodes.AbstractC20921m;
import org.jsoup.nodes.C20900a;
import org.jsoup.nodes.C20901b;
import org.jsoup.nodes.C20906f;
import org.jsoup.nodes.C20910g;
import org.jsoup.nodes.C20911h;
import org.jsoup.p591b.C20782c;
import org.jsoup.p592c.AbstractC20816i;
/* renamed from: org.jsoup.c.c */
/* loaded from: classes5-dex2jar.jar:org/jsoup/c/c.class */
public enum EnumC20785c {
    Initial { // from class: org.jsoup.c.c.1
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20785c
        public final boolean process(AbstractC20816i abstractC20816i, C20784b c20784b) {
            if (EnumC20785c.isWhitespace(abstractC20816i)) {
                return true;
            }
            if (abstractC20816i.m384e()) {
                c20784b.m447a((AbstractC20816i.C20820c) abstractC20816i);
                return true;
            } else if (!abstractC20816i.m387b()) {
                c20784b.f67320h = BeforeHtml;
                return c20784b.mo321a(abstractC20816i);
            } else {
                AbstractC20816i.C20821d c20821d = (AbstractC20816i.C20821d) abstractC20816i;
                C20910g c20910g = new C20910g(c20784b.f67445y.m399a(c20821d.f67401b.toString()), c20821d.f67403d.toString(), c20821d.f67404e.toString());
                c20910g.m281b_(c20821d.f67402c);
                c20784b.m431c().m274a((AbstractC20921m) c20910g);
                if (c20821d.f67405f) {
                    c20784b.m431c().f67459c = C20906f.EnumC20909b.f67474b;
                }
                c20784b.f67320h = BeforeHtml;
                return true;
            }
        }
    },
    BeforeHtml { // from class: org.jsoup.c.c.12
        private boolean anythingElse(AbstractC20816i abstractC20816i, C20784b c20784b) {
            c20784b.m454a(AdType.HTML);
            c20784b.f67320h = BeforeHead;
            return c20784b.mo321a(abstractC20816i);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20785c
        public final boolean process(AbstractC20816i abstractC20816i, C20784b c20784b) {
            if (abstractC20816i.m387b()) {
                c20784b.m449a(this);
                return false;
            } else if (abstractC20816i.m384e()) {
                c20784b.m447a((AbstractC20816i.C20820c) abstractC20816i);
                return true;
            } else if (EnumC20785c.isWhitespace(abstractC20816i)) {
                c20784b.m448a((AbstractC20816i.C20819b) abstractC20816i);
                return true;
            } else {
                if (abstractC20816i.m386c()) {
                    AbstractC20816i.C20824g c20824g = (AbstractC20816i.C20824g) abstractC20816i;
                    if (c20824g.m364k().equals(AdType.HTML)) {
                        c20784b.m446a(c20824g);
                        c20784b.f67320h = BeforeHead;
                        return true;
                    }
                }
                if ((!abstractC20816i.m385d() || !C20782c.m486b(((AbstractC20816i.C20823f) abstractC20816i).m364k(), C20810a.f67347e)) && abstractC20816i.m385d()) {
                    c20784b.m449a(this);
                    return false;
                }
                return anythingElse(abstractC20816i, c20784b);
            }
        }
    },
    BeforeHead { // from class: org.jsoup.c.c.18
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20785c
        public final boolean process(AbstractC20816i abstractC20816i, C20784b c20784b) {
            if (EnumC20785c.isWhitespace(abstractC20816i)) {
                c20784b.m448a((AbstractC20816i.C20819b) abstractC20816i);
                return true;
            } else if (abstractC20816i.m384e()) {
                c20784b.m447a((AbstractC20816i.C20820c) abstractC20816i);
                return true;
            } else if (abstractC20816i.m387b()) {
                c20784b.m449a(this);
                return false;
            } else if (abstractC20816i.m386c() && ((AbstractC20816i.C20824g) abstractC20816i).m364k().equals(AdType.HTML)) {
                return InBody.process(abstractC20816i, c20784b);
            } else {
                if (abstractC20816i.m386c()) {
                    AbstractC20816i.C20824g c20824g = (AbstractC20816i.C20824g) abstractC20816i;
                    if (c20824g.m364k().equals("head")) {
                        c20784b.f67322j = c20784b.m446a(c20824g);
                        c20784b.f67320h = InHead;
                        return true;
                    }
                }
                if (abstractC20816i.m385d() && C20782c.m486b(((AbstractC20816i.C20823f) abstractC20816i).m364k(), C20810a.f67347e)) {
                    c20784b.m328l("head");
                    return c20784b.mo321a(abstractC20816i);
                } else if (abstractC20816i.m385d()) {
                    c20784b.m449a(this);
                    return false;
                } else {
                    c20784b.m328l("head");
                    return c20784b.mo321a(abstractC20816i);
                }
            }
        }
    },
    InHead { // from class: org.jsoup.c.c.19
        private boolean anythingElse(AbstractC20816i abstractC20816i, AbstractC20897m abstractC20897m) {
            abstractC20897m.m327m("head");
            return abstractC20897m.mo321a(abstractC20816i);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20785c
        public final boolean process(AbstractC20816i abstractC20816i, C20784b c20784b) {
            if (EnumC20785c.isWhitespace(abstractC20816i)) {
                c20784b.m448a((AbstractC20816i.C20819b) abstractC20816i);
                return true;
            }
            int i = C2079417.f67330a[abstractC20816i.f67396a.ordinal()];
            if (i == 1) {
                c20784b.m447a((AbstractC20816i.C20820c) abstractC20816i);
                return true;
            } else if (i == 2) {
                c20784b.m449a(this);
                return false;
            } else if (i != 3) {
                if (i != 4) {
                    return anythingElse(abstractC20816i, c20784b);
                }
                String k = ((AbstractC20816i.C20823f) abstractC20816i).m364k();
                if (k.equals("head")) {
                    c20784b.m424e();
                    c20784b.f67320h = AfterHead;
                    return true;
                } else if (C20782c.m486b(k, C20810a.f67345c)) {
                    return anythingElse(abstractC20816i, c20784b);
                } else {
                    c20784b.m449a(this);
                    return false;
                }
            } else {
                AbstractC20816i.C20824g c20824g = (AbstractC20816i.C20824g) abstractC20816i;
                String k2 = c20824g.m364k();
                if (k2.equals(AdType.HTML)) {
                    return InBody.process(abstractC20816i, c20784b);
                }
                if (C20782c.m486b(k2, C20810a.f67343a)) {
                    C20911h m436b = c20784b.m436b(c20824g);
                    if (!k2.equals("base") || !m436b.mo210b("href")) {
                        return true;
                    }
                    c20784b.m443a(m436b);
                    return true;
                } else if (k2.equals("meta")) {
                    c20784b.m436b(c20824g);
                    return true;
                } else if (k2.equals("title")) {
                    EnumC20785c.handleRcData(c20824g, c20784b);
                    return true;
                } else if (C20782c.m486b(k2, C20810a.f67344b)) {
                    EnumC20785c.handleRawtext(c20824g, c20784b);
                    return true;
                } else if (k2.equals("noscript")) {
                    c20784b.m446a(c20824g);
                    c20784b.f67320h = InHeadNoscript;
                    return true;
                } else if (!k2.equals("script")) {
                    if (!k2.equals("head")) {
                        return anythingElse(abstractC20816i, c20784b);
                    }
                    c20784b.m449a(this);
                    return false;
                } else {
                    c20784b.f67440t.f67420c = EnumC20829l.ScriptData;
                    c20784b.m438b();
                    c20784b.f67320h = Text;
                    c20784b.m446a(c20824g);
                    return true;
                }
            }
        }
    },
    InHeadNoscript { // from class: org.jsoup.c.c.20
        private boolean anythingElse(AbstractC20816i abstractC20816i, C20784b c20784b) {
            c20784b.m449a(this);
            AbstractC20816i.C20819b c20819b = new AbstractC20816i.C20819b();
            c20819b.f67397b = abstractC20816i.toString();
            c20784b.m448a(c20819b);
            return true;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20785c
        public final boolean process(AbstractC20816i abstractC20816i, C20784b c20784b) {
            if (abstractC20816i.m387b()) {
                c20784b.m449a(this);
                return true;
            } else if (abstractC20816i.m386c() && ((AbstractC20816i.C20824g) abstractC20816i).m364k().equals(AdType.HTML)) {
                return c20784b.m444a(abstractC20816i, InBody);
            } else {
                if (abstractC20816i.m385d() && ((AbstractC20816i.C20823f) abstractC20816i).m364k().equals("noscript")) {
                    c20784b.m424e();
                    c20784b.f67320h = InHead;
                    return true;
                } else if (EnumC20785c.isWhitespace(abstractC20816i) || abstractC20816i.m384e() || (abstractC20816i.m386c() && C20782c.m486b(((AbstractC20816i.C20824g) abstractC20816i).m364k(), C20810a.f67348f))) {
                    return c20784b.m444a(abstractC20816i, InHead);
                } else {
                    if (abstractC20816i.m385d() && ((AbstractC20816i.C20823f) abstractC20816i).m364k().equals("br")) {
                        return anythingElse(abstractC20816i, c20784b);
                    }
                    if ((!abstractC20816i.m386c() || !C20782c.m486b(((AbstractC20816i.C20824g) abstractC20816i).m364k(), C20810a.f67341K)) && !abstractC20816i.m385d()) {
                        return anythingElse(abstractC20816i, c20784b);
                    }
                    c20784b.m449a(this);
                    return false;
                }
            }
        }
    },
    AfterHead { // from class: org.jsoup.c.c.21
        private boolean anythingElse(AbstractC20816i abstractC20816i, C20784b c20784b) {
            c20784b.m328l("body");
            c20784b.f67326n = true;
            return c20784b.mo321a(abstractC20816i);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20785c
        public final boolean process(AbstractC20816i abstractC20816i, C20784b c20784b) {
            if (EnumC20785c.isWhitespace(abstractC20816i)) {
                c20784b.m448a((AbstractC20816i.C20819b) abstractC20816i);
                return true;
            } else if (abstractC20816i.m384e()) {
                c20784b.m447a((AbstractC20816i.C20820c) abstractC20816i);
                return true;
            } else if (abstractC20816i.m387b()) {
                c20784b.m449a(this);
                return true;
            } else if (!abstractC20816i.m386c()) {
                if (!abstractC20816i.m385d()) {
                    anythingElse(abstractC20816i, c20784b);
                    return true;
                } else if (C20782c.m486b(((AbstractC20816i.C20823f) abstractC20816i).m364k(), C20810a.f67346d)) {
                    anythingElse(abstractC20816i, c20784b);
                    return true;
                } else {
                    c20784b.m449a(this);
                    return false;
                }
            } else {
                AbstractC20816i.C20824g c20824g = (AbstractC20816i.C20824g) abstractC20816i;
                String k = c20824g.m364k();
                if (k.equals(AdType.HTML)) {
                    return c20784b.m444a(abstractC20816i, InBody);
                }
                if (k.equals("body")) {
                    c20784b.m446a(c20824g);
                    c20784b.f67326n = false;
                    c20784b.f67320h = InBody;
                    return true;
                } else if (k.equals("frameset")) {
                    c20784b.m446a(c20824g);
                    c20784b.f67320h = InFrameset;
                    return true;
                } else if (!C20782c.m486b(k, C20810a.f67349g)) {
                    if (k.equals("head")) {
                        c20784b.m449a(this);
                        return false;
                    }
                    anythingElse(abstractC20816i, c20784b);
                    return true;
                } else {
                    c20784b.m449a(this);
                    C20911h c20911h = c20784b.f67322j;
                    c20784b.m435b(c20911h);
                    c20784b.m444a(abstractC20816i, InHead);
                    c20784b.m425d(c20911h);
                    return true;
                }
            }
        }
    },
    InBody { // from class: org.jsoup.c.c.22
        private boolean inBodyEndTag(AbstractC20816i abstractC20816i, C20784b c20784b) {
            AbstractC20816i.C20823f c20823f = (AbstractC20816i.C20823f) abstractC20816i;
            String k = c20823f.m364k();
            k.hashCode();
            boolean z = true;
            switch (k.hashCode()) {
                case 112:
                    if (k.equals("p")) {
                        z = false;
                        break;
                    }
                    break;
                case 3152:
                    if (k.equals("br")) {
                        z = true;
                        break;
                    }
                    break;
                case 3200:
                    if (k.equals("dd")) {
                        z = true;
                        break;
                    }
                    break;
                case 3216:
                    if (k.equals("dt")) {
                        z = true;
                        break;
                    }
                    break;
                case 3273:
                    if (k.equals("h1")) {
                        z = true;
                        break;
                    }
                    break;
                case 3274:
                    if (k.equals("h2")) {
                        z = true;
                        break;
                    }
                    break;
                case 3275:
                    if (k.equals("h3")) {
                        z = true;
                        break;
                    }
                    break;
                case 3276:
                    if (k.equals("h4")) {
                        z = true;
                        break;
                    }
                    break;
                case 3277:
                    if (k.equals("h5")) {
                        z = true;
                        break;
                    }
                    break;
                case 3278:
                    if (k.equals("h6")) {
                        z = true;
                        break;
                    }
                    break;
                case 3453:
                    if (k.equals("li")) {
                        z = true;
                        break;
                    }
                    break;
                case 3029410:
                    if (k.equals("body")) {
                        z = true;
                        break;
                    }
                    break;
                case 3148996:
                    if (k.equals("form")) {
                        z = true;
                        break;
                    }
                    break;
                case 3213227:
                    if (k.equals(AdType.HTML)) {
                        z = true;
                        break;
                    }
                    break;
                case 3536714:
                    if (k.equals("span")) {
                        z = true;
                        break;
                    }
                    break;
                case 1869063452:
                    if (k.equals("sarcasm")) {
                        z = true;
                        break;
                    }
                    break;
            }
            switch (z) {
                case false:
                    if (!c20784b.m417g(k)) {
                        c20784b.m449a(this);
                        c20784b.m328l(k);
                        return c20784b.mo321a(c20823f);
                    }
                    c20784b.m408j(k);
                    if (!c20784b.m325p().f67481e.f67388b.equals(k)) {
                        c20784b.m449a(this);
                    }
                    c20784b.m430c(k);
                    return true;
                case true:
                    c20784b.m449a(this);
                    c20784b.m328l("br");
                    return false;
                case true:
                case true:
                    if (!c20784b.m423e(k)) {
                        c20784b.m449a(this);
                        return false;
                    }
                    c20784b.m408j(k);
                    if (!c20784b.m325p().f67481e.f67388b.equals(k)) {
                        c20784b.m449a(this);
                    }
                    c20784b.m430c(k);
                    return true;
                case true:
                case true:
                case true:
                case true:
                case true:
                case true:
                    if (!c20784b.m432b(C20810a.f67351i)) {
                        c20784b.m449a(this);
                        return false;
                    }
                    c20784b.m408j(k);
                    if (!c20784b.m325p().f67481e.f67388b.equals(k)) {
                        c20784b.m449a(this);
                    }
                    c20784b.m440a(C20810a.f67351i);
                    return true;
                case true:
                    if (!c20784b.m420f(k)) {
                        c20784b.m449a(this);
                        return false;
                    }
                    c20784b.m408j(k);
                    if (!c20784b.m325p().f67481e.f67388b.equals(k)) {
                        c20784b.m449a(this);
                    }
                    c20784b.m430c(k);
                    return true;
                case true:
                    if (!c20784b.m423e("body")) {
                        c20784b.m449a(this);
                        return false;
                    }
                    c20784b.f67320h = AfterBody;
                    return true;
                case true:
                    C20911h c20911h = c20784b.f67323k;
                    c20784b.f67323k = null;
                    if (c20911h == null || !c20784b.m423e(k)) {
                        c20784b.m449a(this);
                        return false;
                    }
                    c20784b.m405l();
                    if (!c20784b.m325p().f67481e.f67388b.equals(k)) {
                        c20784b.m449a(this);
                    }
                    c20784b.m425d(c20911h);
                    return true;
                case true:
                    if (!c20784b.m327m("body")) {
                        return true;
                    }
                    return c20784b.mo321a(c20823f);
                case true:
                case true:
                    return anyOtherEndTag(abstractC20816i, c20784b);
                default:
                    if (C20782c.m486b(k, C20810a.f67361s)) {
                        return inBodyEndTagAdoption(abstractC20816i, c20784b);
                    }
                    if (C20782c.m486b(k, C20810a.f67360r)) {
                        if (!c20784b.m423e(k)) {
                            c20784b.m449a(this);
                            return false;
                        }
                        c20784b.m405l();
                        if (!c20784b.m325p().f67481e.f67388b.equals(k)) {
                            c20784b.m449a(this);
                        }
                        c20784b.m430c(k);
                        return true;
                    } else if (!C20782c.m486b(k, C20810a.f67355m)) {
                        return anyOtherEndTag(abstractC20816i, c20784b);
                    } else {
                        if (c20784b.m423e("name")) {
                            return true;
                        }
                        if (!c20784b.m423e(k)) {
                            c20784b.m449a(this);
                            return false;
                        }
                        c20784b.m405l();
                        if (!c20784b.m325p().f67481e.f67388b.equals(k)) {
                            c20784b.m449a(this);
                        }
                        c20784b.m430c(k);
                        c20784b.m403n();
                        return true;
                    }
            }
        }

        private boolean inBodyEndTagAdoption(AbstractC20816i abstractC20816i, C20784b c20784b) {
            C20911h c20911h;
            boolean z;
            C20911h c20911h2;
            String k = ((AbstractC20816i.C20823f) abstractC20816i).m364k();
            ArrayList<C20911h> m421f = c20784b.m421f();
            for (int i = 0; i < 8; i++) {
                C20911h m406k = c20784b.m406k(k);
                if (m406k == null) {
                    return anyOtherEndTag(abstractC20816i, c20784b);
                }
                if (!c20784b.m429c(m406k)) {
                    c20784b.m449a(this);
                    c20784b.m413h(m406k);
                    return true;
                } else if (!c20784b.m423e(m406k.f67481e.f67388b)) {
                    c20784b.m449a(this);
                    return false;
                } else {
                    if (c20784b.m325p() != m406k) {
                        c20784b.m449a(this);
                    }
                    int size = m421f.size();
                    C20911h c20911h3 = null;
                    int i2 = 0;
                    boolean z2 = false;
                    while (true) {
                        c20911h = null;
                        if (i2 >= size) {
                            break;
                        }
                        c20911h = null;
                        if (i2 >= 64) {
                            break;
                        }
                        C20911h c20911h4 = m421f.get(i2);
                        if (c20911h4 == m406k) {
                            c20911h2 = m421f.get(i2 - 1);
                            z = true;
                        } else {
                            z = z2;
                            c20911h2 = c20911h3;
                            if (z2) {
                                z = z2;
                                c20911h2 = c20911h3;
                                if (C20784b.m419f(c20911h4)) {
                                    c20911h = c20911h4;
                                    break;
                                }
                            } else {
                                continue;
                            }
                        }
                        i2++;
                        z2 = z;
                        c20911h3 = c20911h2;
                    }
                    if (c20911h == null) {
                        c20784b.m430c(m406k.f67481e.f67388b);
                        c20784b.m413h(m406k);
                        return true;
                    }
                    C20911h c20911h5 = c20911h;
                    C20911h c20911h6 = c20911h5;
                    for (int i3 = 0; i3 < 3; i3++) {
                        C20911h c20911h7 = c20911h5;
                        if (c20784b.m429c(c20911h5)) {
                            c20911h7 = c20784b.m422e(c20911h5);
                        }
                        if (C20784b.m451a(c20784b.f67324l, c20911h7)) {
                            if (c20911h7 == m406k) {
                                break;
                            }
                            c20911h5 = new C20911h(C20815h.m392a(c20911h7.mo215a(), C20813f.f67373b), c20784b.m427d());
                            C20784b.m450a(c20784b.f67324l, c20911h7, c20911h5);
                            c20784b.m434b(c20911h7, c20911h5);
                            if (((C20911h) c20911h6.f67501g) != null) {
                                c20911h6.m221y();
                            }
                            c20911h5.m274a((AbstractC20921m) c20911h6);
                            c20911h6 = c20911h5;
                        } else {
                            c20784b.m425d(c20911h7);
                            c20911h5 = c20911h7;
                        }
                    }
                    if (C20782c.m486b(c20911h3.f67481e.f67388b, C20810a.f67362t)) {
                        if (((C20911h) c20911h6.f67501g) != null) {
                            c20911h6.m221y();
                        }
                        c20784b.m441a((AbstractC20921m) c20911h6);
                    } else {
                        if (((C20911h) c20911h6.f67501g) != null) {
                            c20911h6.m221y();
                        }
                        c20911h3.m274a((AbstractC20921m) c20911h6);
                    }
                    C20911h c20911h8 = new C20911h(m406k.f67481e, c20784b.m427d());
                    c20911h8.mo227j().m306a(m406k.mo227j());
                    for (AbstractC20921m abstractC20921m : (AbstractC20921m[]) c20911h.m223w().toArray(new AbstractC20921m[0])) {
                        c20911h8.m274a(abstractC20921m);
                    }
                    c20911h.m274a((AbstractC20921m) c20911h8);
                    c20784b.m413h(m406k);
                    c20784b.m425d(m406k);
                    c20784b.m442a(c20911h, c20911h8);
                }
            }
            return true;
        }

        private boolean inBodyStartTag(AbstractC20816i abstractC20816i, C20784b c20784b) {
            AbstractC20816i.C20824g c20824g = (AbstractC20816i.C20824g) abstractC20816i;
            String k = c20824g.m364k();
            k.hashCode();
            boolean z = true;
            switch (k.hashCode()) {
                case -1644953643:
                    if (k.equals("frameset")) {
                        z = false;
                        break;
                    }
                    break;
                case -1377687758:
                    if (k.equals("button")) {
                        z = true;
                        break;
                    }
                    break;
                case -1191214428:
                    if (k.equals("iframe")) {
                        z = true;
                        break;
                    }
                    break;
                case -1010136971:
                    if (k.equals("option")) {
                        z = true;
                        break;
                    }
                    break;
                case -1003243718:
                    if (k.equals("textarea")) {
                        z = true;
                        break;
                    }
                    break;
                case -906021636:
                    if (k.equals("select")) {
                        z = true;
                        break;
                    }
                    break;
                case -80773204:
                    if (k.equals("optgroup")) {
                        z = true;
                        break;
                    }
                    break;
                case 97:
                    if (k.equals("a")) {
                        z = true;
                        break;
                    }
                    break;
                case 3200:
                    if (k.equals("dd")) {
                        z = true;
                        break;
                    }
                    break;
                case 3216:
                    if (k.equals("dt")) {
                        z = true;
                        break;
                    }
                    break;
                case 3273:
                    if (k.equals("h1")) {
                        z = true;
                        break;
                    }
                    break;
                case 3274:
                    if (k.equals("h2")) {
                        z = true;
                        break;
                    }
                    break;
                case 3275:
                    if (k.equals("h3")) {
                        z = true;
                        break;
                    }
                    break;
                case 3276:
                    if (k.equals("h4")) {
                        z = true;
                        break;
                    }
                    break;
                case 3277:
                    if (k.equals("h5")) {
                        z = true;
                        break;
                    }
                    break;
                case 3278:
                    if (k.equals("h6")) {
                        z = true;
                        break;
                    }
                    break;
                case 3338:
                    if (k.equals("hr")) {
                        z = true;
                        break;
                    }
                    break;
                case 3453:
                    if (k.equals("li")) {
                        z = true;
                        break;
                    }
                    break;
                case 3646:
                    if (k.equals("rp")) {
                        z = true;
                        break;
                    }
                    break;
                case 3650:
                    if (k.equals("rt")) {
                        z = true;
                        break;
                    }
                    break;
                case 111267:
                    if (k.equals("pre")) {
                        z = true;
                        break;
                    }
                    break;
                case 114276:
                    if (k.equals("svg")) {
                        z = true;
                        break;
                    }
                    break;
                case 118811:
                    if (k.equals("xmp")) {
                        z = true;
                        break;
                    }
                    break;
                case 3029410:
                    if (k.equals("body")) {
                        z = true;
                        break;
                    }
                    break;
                case 3148996:
                    if (k.equals("form")) {
                        z = true;
                        break;
                    }
                    break;
                case 3213227:
                    if (k.equals(AdType.HTML)) {
                        z = true;
                        break;
                    }
                    break;
                case 3344136:
                    if (k.equals("math")) {
                        z = true;
                        break;
                    }
                    break;
                case 3386833:
                    if (k.equals("nobr")) {
                        z = true;
                        break;
                    }
                    break;
                case 3536714:
                    if (k.equals("span")) {
                        z = true;
                        break;
                    }
                    break;
                case 100313435:
                    if (k.equals("image")) {
                        z = true;
                        break;
                    }
                    break;
                case 100358090:
                    if (k.equals("input")) {
                        z = true;
                        break;
                    }
                    break;
                case 110115790:
                    if (k.equals("table")) {
                        z = true;
                        break;
                    }
                    break;
                case 181975684:
                    if (k.equals("listing")) {
                        z = true;
                        break;
                    }
                    break;
                case 1973234167:
                    if (k.equals("plaintext")) {
                        z = true;
                        break;
                    }
                    break;
                case 2091304424:
                    if (k.equals("isindex")) {
                        z = true;
                        break;
                    }
                    break;
                case 2115613112:
                    if (k.equals("noembed")) {
                        z = true;
                        break;
                    }
                    break;
            }
            switch (z) {
                case false:
                    c20784b.m449a(this);
                    ArrayList<C20911h> m421f = c20784b.m421f();
                    if (m421f.size() == 1) {
                        return false;
                    }
                    if ((m421f.size() > 2 && !m421f.get(1).f67481e.f67388b.equals("body")) || !c20784b.f67326n) {
                        return false;
                    }
                    C20911h c20911h = m421f.get(1);
                    if (((C20911h) c20911h.f67501g) != null) {
                        c20911h.m221y();
                    }
                    while (m421f.size() > 1) {
                        m421f.remove(m421f.size() - 1);
                    }
                    c20784b.m446a(c20824g);
                    c20784b.f67320h = InFrameset;
                    return true;
                case true:
                    if (c20784b.m417g("button")) {
                        c20784b.m449a(this);
                        c20784b.m327m("button");
                        c20784b.mo321a((AbstractC20816i) c20824g);
                        return true;
                    }
                    c20784b.m404m();
                    c20784b.m446a(c20824g);
                    c20784b.f67326n = false;
                    return true;
                case true:
                    c20784b.f67326n = false;
                    EnumC20785c.handleRawtext(c20824g, c20784b);
                    return true;
                case true:
                case true:
                    if (c20784b.m325p().f67481e.f67388b.equals("option")) {
                        c20784b.m327m("option");
                    }
                    c20784b.m404m();
                    c20784b.m446a(c20824g);
                    return true;
                case true:
                    c20784b.m446a(c20824g);
                    if (c20824g.f67410f) {
                        return true;
                    }
                    c20784b.f67440t.f67420c = EnumC20829l.Rcdata;
                    c20784b.m438b();
                    c20784b.f67326n = false;
                    c20784b.f67320h = Text;
                    return true;
                case true:
                    c20784b.m404m();
                    c20784b.m446a(c20824g);
                    c20784b.f67326n = false;
                    EnumC20785c enumC20785c = c20784b.f67320h;
                    if (enumC20785c.equals(InTable) || enumC20785c.equals(InCaption) || enumC20785c.equals(InTableBody) || enumC20785c.equals(InRow) || enumC20785c.equals(InCell)) {
                        c20784b.f67320h = InSelectInTable;
                        return true;
                    }
                    c20784b.f67320h = InSelect;
                    return true;
                case true:
                    if (c20784b.m406k("a") != null) {
                        c20784b.m449a(this);
                        c20784b.m327m("a");
                        C20911h m437b = c20784b.m437b("a");
                        if (m437b != null) {
                            c20784b.m413h(m437b);
                            c20784b.m425d(m437b);
                        }
                    }
                    c20784b.m404m();
                    c20784b.m416g(c20784b.m446a(c20824g));
                    return true;
                case true:
                case true:
                    c20784b.f67326n = false;
                    ArrayList<C20911h> m421f2 = c20784b.m421f();
                    int size = m421f2.size() - 1;
                    while (true) {
                        if (size > 0) {
                            C20911h c20911h2 = m421f2.get(size);
                            if (C20782c.m486b(c20911h2.f67481e.f67388b, C20810a.f67353k)) {
                                c20784b.m327m(c20911h2.f67481e.f67388b);
                            } else if (!C20784b.m419f(c20911h2) || C20782c.m486b(c20911h2.f67481e.f67388b, C20810a.f67352j)) {
                                size--;
                            }
                        }
                    }
                    if (c20784b.m417g("p")) {
                        c20784b.m327m("p");
                    }
                    c20784b.m446a(c20824g);
                    return true;
                case true:
                case true:
                case true:
                case true:
                case true:
                case true:
                    if (c20784b.m417g("p")) {
                        c20784b.m327m("p");
                    }
                    if (C20782c.m486b(c20784b.m325p().f67481e.f67388b, C20810a.f67351i)) {
                        c20784b.m449a(this);
                        c20784b.m424e();
                    }
                    c20784b.m446a(c20824g);
                    return true;
                case true:
                    if (c20784b.m417g("p")) {
                        c20784b.m327m("p");
                    }
                    c20784b.m436b(c20824g);
                    c20784b.f67326n = false;
                    return true;
                case true:
                    c20784b.f67326n = false;
                    ArrayList<C20911h> m421f3 = c20784b.m421f();
                    int size2 = m421f3.size() - 1;
                    while (true) {
                        if (size2 > 0) {
                            C20911h c20911h3 = m421f3.get(size2);
                            if (c20911h3.f67481e.f67388b.equals("li")) {
                                c20784b.m327m("li");
                            } else if (!C20784b.m419f(c20911h3) || C20782c.m486b(c20911h3.f67481e.f67388b, C20810a.f67352j)) {
                                size2--;
                            }
                        }
                    }
                    if (c20784b.m417g("p")) {
                        c20784b.m327m("p");
                    }
                    c20784b.m446a(c20824g);
                    return true;
                case true:
                case true:
                    if (!c20784b.m423e("ruby")) {
                        return true;
                    }
                    c20784b.m405l();
                    if (!c20784b.m325p().f67481e.f67388b.equals("ruby")) {
                        c20784b.m449a(this);
                        c20784b.m426d("ruby");
                    }
                    c20784b.m446a(c20824g);
                    return true;
                case true:
                case true:
                    if (c20784b.m417g("p")) {
                        c20784b.m327m("p");
                    }
                    c20784b.m446a(c20824g);
                    c20784b.f67439s.m482a(StringUtils.f67179LF);
                    c20784b.f67326n = false;
                    return true;
                case true:
                    c20784b.m404m();
                    c20784b.m446a(c20824g);
                    return true;
                case true:
                    if (c20784b.m417g("p")) {
                        c20784b.m327m("p");
                    }
                    c20784b.m404m();
                    c20784b.f67326n = false;
                    EnumC20785c.handleRawtext(c20824g, c20784b);
                    return true;
                case true:
                    c20784b.m449a(this);
                    ArrayList<C20911h> m421f4 = c20784b.m421f();
                    if (m421f4.size() == 1) {
                        return false;
                    }
                    if (m421f4.size() > 2 && !m421f4.get(1).f67481e.f67388b.equals("body")) {
                        return false;
                    }
                    c20784b.f67326n = false;
                    C20911h c20911h4 = m421f4.get(1);
                    Iterator<C20900a> it2 = c20824g.m363l().iterator();
                    while (it2.hasNext()) {
                        C20900a next = it2.next();
                        if (!c20911h4.mo210b(next.f67448a)) {
                            c20911h4.mo227j().m307a(next);
                        }
                    }
                    return true;
                case true:
                    if (c20784b.f67323k != null) {
                        c20784b.m449a(this);
                        return false;
                    }
                    if (c20784b.m417g("p")) {
                        c20784b.m327m("p");
                    }
                    c20784b.m445a(c20824g, true);
                    return true;
                case true:
                    c20784b.m449a(this);
                    C20911h c20911h5 = c20784b.m421f().get(0);
                    Iterator<C20900a> it3 = c20824g.m363l().iterator();
                    while (it3.hasNext()) {
                        C20900a next2 = it3.next();
                        if (!c20911h5.mo210b(next2.f67448a)) {
                            c20911h5.mo227j().m307a(next2);
                        }
                    }
                    return true;
                case true:
                    c20784b.m404m();
                    c20784b.m446a(c20824g);
                    return true;
                case true:
                    c20784b.m404m();
                    if (c20784b.m423e("nobr")) {
                        c20784b.m449a(this);
                        c20784b.m327m("nobr");
                        c20784b.m404m();
                    }
                    c20784b.m416g(c20784b.m446a(c20824g));
                    return true;
                case true:
                    c20784b.m404m();
                    c20784b.m446a(c20824g);
                    return true;
                case true:
                    if (c20784b.m437b("svg") == null) {
                        return c20784b.mo321a(c20824g.m374a("img"));
                    }
                    c20784b.m446a(c20824g);
                    return true;
                case true:
                    c20784b.m404m();
                    if (c20784b.m436b(c20824g).mo208c("type").equalsIgnoreCase("hidden")) {
                        return true;
                    }
                    c20784b.f67326n = false;
                    return true;
                case true:
                    if (c20784b.m431c().f67459c != C20906f.EnumC20909b.f67474b && c20784b.m417g("p")) {
                        c20784b.m327m("p");
                    }
                    c20784b.m446a(c20824g);
                    c20784b.f67326n = false;
                    c20784b.f67320h = InTable;
                    return true;
                case true:
                    if (c20784b.m417g("p")) {
                        c20784b.m327m("p");
                    }
                    c20784b.m446a(c20824g);
                    c20784b.f67440t.f67420c = EnumC20829l.PLAINTEXT;
                    return true;
                case true:
                    c20784b.m449a(this);
                    if (c20784b.f67323k != null) {
                        return false;
                    }
                    c20784b.m328l("form");
                    if (c20824g.f67411g.m292f("action")) {
                        c20784b.f67323k.mo212a("action", c20824g.f67411g.m295d("action"));
                    }
                    c20784b.m328l("hr");
                    c20784b.m328l("label");
                    String m295d = c20824g.f67411g.m292f("prompt") ? c20824g.f67411g.m295d("prompt") : "This is a searchable index. Enter search keywords: ";
                    AbstractC20816i.C20819b c20819b = new AbstractC20816i.C20819b();
                    c20819b.f67397b = m295d;
                    c20784b.mo321a((AbstractC20816i) c20819b);
                    C20901b c20901b = new C20901b();
                    Iterator<C20900a> it4 = c20824g.f67411g.iterator();
                    while (it4.hasNext()) {
                        C20900a next3 = it4.next();
                        if (!C20782c.m486b(next3.f67448a, C20810a.f67358p)) {
                            c20901b.m307a(next3);
                        }
                    }
                    c20901b.m300b("name", "isindex");
                    c20784b.mo322a("input", c20901b);
                    c20784b.m327m("label");
                    c20784b.m328l("hr");
                    c20784b.m327m("form");
                    return true;
                case true:
                    EnumC20785c.handleRawtext(c20824g, c20784b);
                    return true;
                default:
                    if (C20782c.m486b(k, C20810a.f67356n)) {
                        c20784b.m404m();
                        c20784b.m436b(c20824g);
                        c20784b.f67326n = false;
                        return true;
                    } else if (C20782c.m486b(k, C20810a.f67350h)) {
                        if (c20784b.m417g("p")) {
                            c20784b.m327m("p");
                        }
                        c20784b.m446a(c20824g);
                        return true;
                    } else if (C20782c.m486b(k, C20810a.f67349g)) {
                        return c20784b.m444a(abstractC20816i, InHead);
                    } else {
                        if (C20782c.m486b(k, C20810a.f67354l)) {
                            c20784b.m404m();
                            c20784b.m416g(c20784b.m446a(c20824g));
                            return true;
                        } else if (C20782c.m486b(k, C20810a.f67355m)) {
                            c20784b.m404m();
                            c20784b.m446a(c20824g);
                            c20784b.m402o();
                            c20784b.f67326n = false;
                            return true;
                        } else if (C20782c.m486b(k, C20810a.f67357o)) {
                            c20784b.m436b(c20824g);
                            return true;
                        } else if (C20782c.m486b(k, C20810a.f67359q)) {
                            c20784b.m449a(this);
                            return false;
                        } else {
                            c20784b.m404m();
                            c20784b.m446a(c20824g);
                            return true;
                        }
                    }
            }
        }

        final boolean anyOtherEndTag(AbstractC20816i abstractC20816i, C20784b c20784b) {
            String str = ((AbstractC20816i.C20823f) abstractC20816i).f67407c;
            ArrayList<C20911h> m421f = c20784b.m421f();
            for (int size = m421f.size() - 1; size >= 0; size--) {
                C20911h c20911h = m421f.get(size);
                if (c20911h.f67481e.f67388b.equals(str)) {
                    c20784b.m408j(str);
                    if (!str.equals(c20784b.m325p().f67481e.f67388b)) {
                        c20784b.m449a(this);
                    }
                    c20784b.m430c(str);
                    return true;
                } else if (C20784b.m419f(c20911h)) {
                    c20784b.m449a(this);
                    return false;
                }
            }
            return true;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20785c
        public final boolean process(AbstractC20816i abstractC20816i, C20784b c20784b) {
            int i = C2079417.f67330a[abstractC20816i.f67396a.ordinal()];
            if (i == 1) {
                c20784b.m447a((AbstractC20816i.C20820c) abstractC20816i);
                return true;
            } else if (i == 2) {
                c20784b.m449a(this);
                return false;
            } else if (i == 3) {
                return inBodyStartTag(abstractC20816i, c20784b);
            } else {
                if (i == 4) {
                    return inBodyEndTag(abstractC20816i, c20784b);
                }
                if (i != 5) {
                    return true;
                }
                AbstractC20816i.C20819b c20819b = (AbstractC20816i.C20819b) abstractC20816i;
                if (c20819b.f67397b.equals(EnumC20785c.nullString)) {
                    c20784b.m449a(this);
                    return false;
                } else if (c20784b.f67326n && EnumC20785c.isWhitespace(c20819b)) {
                    c20784b.m404m();
                    c20784b.m448a(c20819b);
                    return true;
                } else {
                    c20784b.m404m();
                    c20784b.m448a(c20819b);
                    c20784b.f67326n = false;
                    return true;
                }
            }
        }
    },
    Text { // from class: org.jsoup.c.c.23
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20785c
        public final boolean process(AbstractC20816i abstractC20816i, C20784b c20784b) {
            if (abstractC20816i.m383f()) {
                c20784b.m448a((AbstractC20816i.C20819b) abstractC20816i);
                return true;
            } else if (abstractC20816i.m382g()) {
                c20784b.m449a(this);
                c20784b.m424e();
                c20784b.f67320h = c20784b.f67321i;
                return c20784b.mo321a(abstractC20816i);
            } else if (!abstractC20816i.m385d()) {
                return true;
            } else {
                c20784b.m424e();
                c20784b.f67320h = c20784b.f67321i;
                return true;
            }
        }
    },
    InTable { // from class: org.jsoup.c.c.24
        final boolean anythingElse(AbstractC20816i abstractC20816i, C20784b c20784b) {
            boolean z;
            c20784b.m449a(this);
            if (C20782c.m486b(c20784b.m325p().f67481e.f67388b, C20810a.f67333C)) {
                c20784b.f67327o = true;
                z = c20784b.m444a(abstractC20816i, InBody);
                c20784b.f67327o = false;
            } else {
                z = c20784b.m444a(abstractC20816i, InBody);
            }
            return z;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20785c
        public final boolean process(AbstractC20816i abstractC20816i, C20784b c20784b) {
            if (abstractC20816i.m383f()) {
                c20784b.m407k();
                c20784b.m438b();
                c20784b.f67320h = InTableText;
                return c20784b.mo321a(abstractC20816i);
            } else if (abstractC20816i.m384e()) {
                c20784b.m447a((AbstractC20816i.C20820c) abstractC20816i);
                return true;
            } else if (abstractC20816i.m387b()) {
                c20784b.m449a(this);
                return false;
            } else if (!abstractC20816i.m386c()) {
                if (!abstractC20816i.m385d()) {
                    if (!abstractC20816i.m382g()) {
                        return anythingElse(abstractC20816i, c20784b);
                    }
                    if (!c20784b.m325p().f67481e.f67388b.equals(AdType.HTML)) {
                        return true;
                    }
                    c20784b.m449a(this);
                    return true;
                }
                String k = ((AbstractC20816i.C20823f) abstractC20816i).m364k();
                if (!k.equals("table")) {
                    if (!C20782c.m486b(k, C20810a.f67332B)) {
                        return anythingElse(abstractC20816i, c20784b);
                    }
                    c20784b.m449a(this);
                    return false;
                } else if (!c20784b.m414h(k)) {
                    c20784b.m449a(this);
                    return false;
                } else {
                    c20784b.m430c("table");
                    c20784b.m409j();
                    return true;
                }
            } else {
                AbstractC20816i.C20824g c20824g = (AbstractC20816i.C20824g) abstractC20816i;
                String k2 = c20824g.m364k();
                if (k2.equals("caption")) {
                    c20784b.m418g();
                    c20784b.m402o();
                    c20784b.m446a(c20824g);
                    c20784b.f67320h = InCaption;
                    return true;
                } else if (k2.equals("colgroup")) {
                    c20784b.m418g();
                    c20784b.m446a(c20824g);
                    c20784b.f67320h = InColumnGroup;
                    return true;
                } else if (k2.equals("col")) {
                    c20784b.m328l("colgroup");
                    return c20784b.mo321a(abstractC20816i);
                } else if (C20782c.m486b(k2, C20810a.f67363u)) {
                    c20784b.m418g();
                    c20784b.m446a(c20824g);
                    c20784b.f67320h = InTableBody;
                    return true;
                } else if (C20782c.m486b(k2, C20810a.f67364v)) {
                    c20784b.m328l("tbody");
                    return c20784b.mo321a(abstractC20816i);
                } else if (k2.equals("table")) {
                    c20784b.m449a(this);
                    if (!c20784b.m327m("table")) {
                        return true;
                    }
                    return c20784b.mo321a(abstractC20816i);
                } else if (C20782c.m486b(k2, C20810a.f67365w)) {
                    return c20784b.m444a(abstractC20816i, InHead);
                } else {
                    if (k2.equals("input")) {
                        if (!c20824g.f67411g.m295d("type").equalsIgnoreCase("hidden")) {
                            return anythingElse(abstractC20816i, c20784b);
                        }
                        c20784b.m436b(c20824g);
                        return true;
                    } else if (!k2.equals("form")) {
                        return anythingElse(abstractC20816i, c20784b);
                    } else {
                        c20784b.m449a(this);
                        if (c20784b.f67323k != null) {
                            return false;
                        }
                        c20784b.m445a(c20824g, false);
                        return true;
                    }
                }
            }
        }
    },
    InTableText { // from class: org.jsoup.c.c.2
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20785c
        public final boolean process(AbstractC20816i abstractC20816i, C20784b c20784b) {
            if (abstractC20816i.f67396a == AbstractC20816i.EnumC20826i.Character) {
                AbstractC20816i.C20819b c20819b = (AbstractC20816i.C20819b) abstractC20816i;
                if (c20819b.f67397b.equals(EnumC20785c.nullString)) {
                    c20784b.m449a(this);
                    return false;
                }
                c20784b.f67325m.add(c20819b.f67397b);
                return true;
            }
            if (c20784b.f67325m.size() > 0) {
                for (String str : c20784b.f67325m) {
                    if (!EnumC20785c.isWhitespace(str)) {
                        c20784b.m449a(this);
                        if (C20782c.m486b(c20784b.m325p().f67481e.f67388b, C20810a.f67333C)) {
                            c20784b.f67327o = true;
                            AbstractC20816i.C20819b c20819b2 = new AbstractC20816i.C20819b();
                            c20819b2.f67397b = str;
                            c20784b.m444a(c20819b2, InBody);
                            c20784b.f67327o = false;
                        } else {
                            AbstractC20816i.C20819b c20819b3 = new AbstractC20816i.C20819b();
                            c20819b3.f67397b = str;
                            c20784b.m444a(c20819b3, InBody);
                        }
                    } else {
                        AbstractC20816i.C20819b c20819b4 = new AbstractC20816i.C20819b();
                        c20819b4.f67397b = str;
                        c20784b.m448a(c20819b4);
                    }
                }
                c20784b.m407k();
            }
            c20784b.f67320h = c20784b.f67321i;
            return c20784b.mo321a(abstractC20816i);
        }
    },
    InCaption { // from class: org.jsoup.c.c.3
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20785c
        public final boolean process(AbstractC20816i abstractC20816i, C20784b c20784b) {
            if (abstractC20816i.m385d()) {
                AbstractC20816i.C20823f c20823f = (AbstractC20816i.C20823f) abstractC20816i;
                if (c20823f.m364k().equals("caption")) {
                    if (!c20784b.m414h(c20823f.m364k())) {
                        c20784b.m449a(this);
                        return false;
                    }
                    c20784b.m405l();
                    if (!c20784b.m325p().f67481e.f67388b.equals("caption")) {
                        c20784b.m449a(this);
                    }
                    c20784b.m430c("caption");
                    c20784b.m403n();
                    c20784b.f67320h = InTable;
                    return true;
                }
            }
            if ((abstractC20816i.m386c() && C20782c.m486b(((AbstractC20816i.C20824g) abstractC20816i).m364k(), C20810a.f67331A)) || (abstractC20816i.m385d() && ((AbstractC20816i.C20823f) abstractC20816i).m364k().equals("table"))) {
                c20784b.m449a(this);
                if (!c20784b.m327m("caption")) {
                    return true;
                }
                return c20784b.mo321a(abstractC20816i);
            } else if (!abstractC20816i.m385d() || !C20782c.m486b(((AbstractC20816i.C20823f) abstractC20816i).m364k(), C20810a.f67342L)) {
                return c20784b.m444a(abstractC20816i, InBody);
            } else {
                c20784b.m449a(this);
                return false;
            }
        }
    },
    InColumnGroup { // from class: org.jsoup.c.c.4
        private boolean anythingElse(AbstractC20816i abstractC20816i, AbstractC20897m abstractC20897m) {
            if (abstractC20897m.m327m("colgroup")) {
                return abstractC20897m.mo321a(abstractC20816i);
            }
            return true;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20785c
        public final boolean process(AbstractC20816i abstractC20816i, C20784b c20784b) {
            if (EnumC20785c.isWhitespace(abstractC20816i)) {
                c20784b.m448a((AbstractC20816i.C20819b) abstractC20816i);
                return true;
            }
            int i = C2079417.f67330a[abstractC20816i.f67396a.ordinal()];
            if (i == 1) {
                c20784b.m447a((AbstractC20816i.C20820c) abstractC20816i);
                return true;
            } else if (i == 2) {
                c20784b.m449a(this);
                return true;
            } else if (i == 3) {
                AbstractC20816i.C20824g c20824g = (AbstractC20816i.C20824g) abstractC20816i;
                String k = c20824g.m364k();
                k.hashCode();
                if (!k.equals("col")) {
                    return !k.equals(AdType.HTML) ? anythingElse(abstractC20816i, c20784b) : c20784b.m444a(abstractC20816i, InBody);
                }
                c20784b.m436b(c20824g);
                return true;
            } else if (i != 4) {
                if (i != 6 || !c20784b.m325p().f67481e.f67388b.equals(AdType.HTML)) {
                    return anythingElse(abstractC20816i, c20784b);
                }
                return true;
            } else if (!((AbstractC20816i.C20823f) abstractC20816i).f67407c.equals("colgroup")) {
                return anythingElse(abstractC20816i, c20784b);
            } else {
                if (c20784b.m325p().f67481e.f67388b.equals(AdType.HTML)) {
                    c20784b.m449a(this);
                    return false;
                }
                c20784b.m424e();
                c20784b.f67320h = InTable;
                return true;
            }
        }
    },
    InTableBody { // from class: org.jsoup.c.c.5
        private boolean anythingElse(AbstractC20816i abstractC20816i, C20784b c20784b) {
            return c20784b.m444a(abstractC20816i, InTable);
        }

        private boolean exitTableBody(AbstractC20816i abstractC20816i, C20784b c20784b) {
            if (!c20784b.m414h("tbody") && !c20784b.m414h("thead") && !c20784b.m423e("tfoot")) {
                c20784b.m449a(this);
                return false;
            }
            c20784b.m415h();
            c20784b.m327m(c20784b.m325p().f67481e.f67388b);
            return c20784b.mo321a(abstractC20816i);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20785c
        public final boolean process(AbstractC20816i abstractC20816i, C20784b c20784b) {
            int i = C2079417.f67330a[abstractC20816i.f67396a.ordinal()];
            if (i == 3) {
                AbstractC20816i.C20824g c20824g = (AbstractC20816i.C20824g) abstractC20816i;
                String k = c20824g.m364k();
                if (k.equals("template")) {
                    c20784b.m446a(c20824g);
                    return true;
                } else if (k.equals("tr")) {
                    c20784b.m415h();
                    c20784b.m446a(c20824g);
                    c20784b.f67320h = InRow;
                    return true;
                } else if (!C20782c.m486b(k, C20810a.f67366x)) {
                    return C20782c.m486b(k, C20810a.f67334D) ? exitTableBody(abstractC20816i, c20784b) : anythingElse(abstractC20816i, c20784b);
                } else {
                    c20784b.m449a(this);
                    c20784b.m328l("tr");
                    return c20784b.mo321a((AbstractC20816i) c20824g);
                }
            } else if (i != 4) {
                return anythingElse(abstractC20816i, c20784b);
            } else {
                String k2 = ((AbstractC20816i.C20823f) abstractC20816i).m364k();
                if (!C20782c.m486b(k2, C20810a.f67340J)) {
                    if (k2.equals("table")) {
                        return exitTableBody(abstractC20816i, c20784b);
                    }
                    if (!C20782c.m486b(k2, C20810a.f67335E)) {
                        return anythingElse(abstractC20816i, c20784b);
                    }
                    c20784b.m449a(this);
                    return false;
                } else if (!c20784b.m414h(k2)) {
                    c20784b.m449a(this);
                    return false;
                } else {
                    c20784b.m415h();
                    c20784b.m424e();
                    c20784b.f67320h = InTable;
                    return true;
                }
            }
        }
    },
    InRow { // from class: org.jsoup.c.c.6
        private boolean anythingElse(AbstractC20816i abstractC20816i, C20784b c20784b) {
            return c20784b.m444a(abstractC20816i, InTable);
        }

        private boolean handleMissingTr(AbstractC20816i abstractC20816i, AbstractC20897m abstractC20897m) {
            if (abstractC20897m.m327m("tr")) {
                return abstractC20897m.mo321a(abstractC20816i);
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20785c
        public final boolean process(AbstractC20816i abstractC20816i, C20784b c20784b) {
            if (abstractC20816i.m386c()) {
                AbstractC20816i.C20824g c20824g = (AbstractC20816i.C20824g) abstractC20816i;
                String k = c20824g.m364k();
                if (k.equals("template")) {
                    c20784b.m446a(c20824g);
                    return true;
                } else if (!C20782c.m486b(k, C20810a.f67366x)) {
                    return C20782c.m486b(k, C20810a.f67336F) ? handleMissingTr(abstractC20816i, c20784b) : anythingElse(abstractC20816i, c20784b);
                } else {
                    c20784b.m412i();
                    c20784b.m446a(c20824g);
                    c20784b.f67320h = InCell;
                    c20784b.m402o();
                    return true;
                }
            } else if (!abstractC20816i.m385d()) {
                return anythingElse(abstractC20816i, c20784b);
            } else {
                String k2 = ((AbstractC20816i.C20823f) abstractC20816i).m364k();
                if (k2.equals("tr")) {
                    if (!c20784b.m414h(k2)) {
                        c20784b.m449a(this);
                        return false;
                    }
                    c20784b.m412i();
                    c20784b.m424e();
                    c20784b.f67320h = InTableBody;
                    return true;
                } else if (k2.equals("table")) {
                    return handleMissingTr(abstractC20816i, c20784b);
                } else {
                    if (!C20782c.m486b(k2, C20810a.f67363u)) {
                        if (!C20782c.m486b(k2, C20810a.f67337G)) {
                            return anythingElse(abstractC20816i, c20784b);
                        }
                        c20784b.m449a(this);
                        return false;
                    } else if (!c20784b.m414h(k2)) {
                        c20784b.m449a(this);
                        return false;
                    } else {
                        c20784b.m327m("tr");
                        return c20784b.mo321a(abstractC20816i);
                    }
                }
            }
        }
    },
    InCell { // from class: org.jsoup.c.c.7
        private boolean anythingElse(AbstractC20816i abstractC20816i, C20784b c20784b) {
            return c20784b.m444a(abstractC20816i, InBody);
        }

        private void closeCell(C20784b c20784b) {
            if (c20784b.m414h("td")) {
                c20784b.m327m("td");
            } else {
                c20784b.m327m("th");
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20785c
        public final boolean process(AbstractC20816i abstractC20816i, C20784b c20784b) {
            if (!abstractC20816i.m385d()) {
                if (!abstractC20816i.m386c() || !C20782c.m486b(((AbstractC20816i.C20824g) abstractC20816i).m364k(), C20810a.f67331A)) {
                    return anythingElse(abstractC20816i, c20784b);
                }
                if (c20784b.m414h("td") || c20784b.m414h("th")) {
                    closeCell(c20784b);
                    return c20784b.mo321a(abstractC20816i);
                }
                c20784b.m449a(this);
                return false;
            }
            String k = ((AbstractC20816i.C20823f) abstractC20816i).m364k();
            if (!C20782c.m486b(k, C20810a.f67366x)) {
                if (C20782c.m486b(k, C20810a.f67367y)) {
                    c20784b.m449a(this);
                    return false;
                } else if (!C20782c.m486b(k, C20810a.f67368z)) {
                    return anythingElse(abstractC20816i, c20784b);
                } else {
                    if (!c20784b.m414h(k)) {
                        c20784b.m449a(this);
                        return false;
                    }
                    closeCell(c20784b);
                    return c20784b.mo321a(abstractC20816i);
                }
            } else if (!c20784b.m414h(k)) {
                c20784b.m449a(this);
                c20784b.f67320h = InRow;
                return false;
            } else {
                c20784b.m405l();
                if (!c20784b.m325p().f67481e.f67388b.equals(k)) {
                    c20784b.m449a(this);
                }
                c20784b.m430c(k);
                c20784b.m403n();
                c20784b.f67320h = InRow;
                return true;
            }
        }
    },
    InSelect { // from class: org.jsoup.c.c.8
        private boolean anythingElse(AbstractC20816i abstractC20816i, C20784b c20784b) {
            c20784b.m449a(this);
            return false;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20785c
        public final boolean process(AbstractC20816i abstractC20816i, C20784b c20784b) {
            switch (C2079417.f67330a[abstractC20816i.f67396a.ordinal()]) {
                case 1:
                    c20784b.m447a((AbstractC20816i.C20820c) abstractC20816i);
                    return true;
                case 2:
                    c20784b.m449a(this);
                    return false;
                case 3:
                    AbstractC20816i.C20824g c20824g = (AbstractC20816i.C20824g) abstractC20816i;
                    String k = c20824g.m364k();
                    if (k.equals(AdType.HTML)) {
                        return c20784b.m444a(c20824g, InBody);
                    }
                    if (k.equals("option")) {
                        if (c20784b.m325p().f67481e.f67388b.equals("option")) {
                            c20784b.m327m("option");
                        }
                        c20784b.m446a(c20824g);
                        return true;
                    } else if (k.equals("optgroup")) {
                        if (c20784b.m325p().f67481e.f67388b.equals("option")) {
                            c20784b.m327m("option");
                        }
                        if (c20784b.m325p().f67481e.f67388b.equals("optgroup")) {
                            c20784b.m327m("optgroup");
                        }
                        c20784b.m446a(c20824g);
                        return true;
                    } else if (k.equals("select")) {
                        c20784b.m449a(this);
                        return c20784b.m327m("select");
                    } else if (!C20782c.m486b(k, C20810a.f67338H)) {
                        return k.equals("script") ? c20784b.m444a(abstractC20816i, InHead) : anythingElse(abstractC20816i, c20784b);
                    } else {
                        c20784b.m449a(this);
                        if (!c20784b.m411i("select")) {
                            return false;
                        }
                        c20784b.m327m("select");
                        return c20784b.mo321a((AbstractC20816i) c20824g);
                    }
                case 4:
                    String k2 = ((AbstractC20816i.C20823f) abstractC20816i).m364k();
                    k2.hashCode();
                    boolean z = true;
                    switch (k2.hashCode()) {
                        case -1010136971:
                            if (k2.equals("option")) {
                                z = false;
                                break;
                            }
                            break;
                        case -906021636:
                            if (k2.equals("select")) {
                                z = true;
                                break;
                            }
                            break;
                        case -80773204:
                            if (k2.equals("optgroup")) {
                                z = true;
                                break;
                            }
                            break;
                    }
                    switch (z) {
                        case false:
                            if (c20784b.m325p().f67481e.f67388b.equals("option")) {
                                c20784b.m424e();
                                return true;
                            }
                            c20784b.m449a(this);
                            return true;
                        case true:
                            if (!c20784b.m411i(k2)) {
                                c20784b.m449a(this);
                                return false;
                            }
                            c20784b.m430c(k2);
                            c20784b.m409j();
                            return true;
                        case true:
                            if (c20784b.m325p().f67481e.f67388b.equals("option") && c20784b.m422e(c20784b.m325p()) != null && c20784b.m422e(c20784b.m325p()).f67481e.f67388b.equals("optgroup")) {
                                c20784b.m327m("option");
                            }
                            if (c20784b.m325p().f67481e.f67388b.equals("optgroup")) {
                                c20784b.m424e();
                                return true;
                            }
                            c20784b.m449a(this);
                            return true;
                        default:
                            return anythingElse(abstractC20816i, c20784b);
                    }
                case 5:
                    AbstractC20816i.C20819b c20819b = (AbstractC20816i.C20819b) abstractC20816i;
                    if (c20819b.f67397b.equals(EnumC20785c.nullString)) {
                        c20784b.m449a(this);
                        return false;
                    }
                    c20784b.m448a(c20819b);
                    return true;
                case 6:
                    if (c20784b.m325p().f67481e.f67388b.equals(AdType.HTML)) {
                        return true;
                    }
                    c20784b.m449a(this);
                    return true;
                default:
                    return anythingElse(abstractC20816i, c20784b);
            }
        }
    },
    InSelectInTable { // from class: org.jsoup.c.c.9
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20785c
        public final boolean process(AbstractC20816i abstractC20816i, C20784b c20784b) {
            if (abstractC20816i.m386c() && C20782c.m486b(((AbstractC20816i.C20824g) abstractC20816i).m364k(), C20810a.f67339I)) {
                c20784b.m449a(this);
                c20784b.m327m("select");
                return c20784b.mo321a(abstractC20816i);
            }
            if (abstractC20816i.m385d()) {
                AbstractC20816i.C20823f c20823f = (AbstractC20816i.C20823f) abstractC20816i;
                if (C20782c.m486b(c20823f.m364k(), C20810a.f67339I)) {
                    c20784b.m449a(this);
                    if (!c20784b.m414h(c20823f.m364k())) {
                        return false;
                    }
                    c20784b.m327m("select");
                    return c20784b.mo321a(abstractC20816i);
                }
            }
            return c20784b.m444a(abstractC20816i, InSelect);
        }
    },
    AfterBody { // from class: org.jsoup.c.c.10
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20785c
        public final boolean process(AbstractC20816i abstractC20816i, C20784b c20784b) {
            if (EnumC20785c.isWhitespace(abstractC20816i)) {
                c20784b.m448a((AbstractC20816i.C20819b) abstractC20816i);
                return true;
            } else if (abstractC20816i.m384e()) {
                c20784b.m447a((AbstractC20816i.C20820c) abstractC20816i);
                return true;
            } else if (abstractC20816i.m387b()) {
                c20784b.m449a(this);
                return false;
            } else if (abstractC20816i.m386c() && ((AbstractC20816i.C20824g) abstractC20816i).m364k().equals(AdType.HTML)) {
                return c20784b.m444a(abstractC20816i, InBody);
            } else {
                if (!abstractC20816i.m385d() || !((AbstractC20816i.C20823f) abstractC20816i).m364k().equals(AdType.HTML)) {
                    if (abstractC20816i.m382g()) {
                        return true;
                    }
                    c20784b.m449a(this);
                    c20784b.f67320h = InBody;
                    return c20784b.mo321a(abstractC20816i);
                } else if (c20784b.f67328p) {
                    c20784b.m449a(this);
                    return false;
                } else {
                    c20784b.f67320h = AfterAfterBody;
                    return true;
                }
            }
        }
    },
    InFrameset { // from class: org.jsoup.c.c.11
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20785c
        public final boolean process(AbstractC20816i abstractC20816i, C20784b c20784b) {
            if (EnumC20785c.isWhitespace(abstractC20816i)) {
                c20784b.m448a((AbstractC20816i.C20819b) abstractC20816i);
                return true;
            } else if (abstractC20816i.m384e()) {
                c20784b.m447a((AbstractC20816i.C20820c) abstractC20816i);
                return true;
            } else if (abstractC20816i.m387b()) {
                c20784b.m449a(this);
                return false;
            } else if (!abstractC20816i.m386c()) {
                if (!abstractC20816i.m385d() || !((AbstractC20816i.C20823f) abstractC20816i).m364k().equals("frameset")) {
                    if (!abstractC20816i.m382g()) {
                        c20784b.m449a(this);
                        return false;
                    } else if (c20784b.m325p().f67481e.f67388b.equals(AdType.HTML)) {
                        return true;
                    } else {
                        c20784b.m449a(this);
                        return true;
                    }
                } else if (c20784b.m325p().f67481e.f67388b.equals(AdType.HTML)) {
                    c20784b.m449a(this);
                    return false;
                } else {
                    c20784b.m424e();
                    if (c20784b.f67328p || c20784b.m325p().f67481e.f67388b.equals("frameset")) {
                        return true;
                    }
                    c20784b.f67320h = AfterFrameset;
                    return true;
                }
            } else {
                AbstractC20816i.C20824g c20824g = (AbstractC20816i.C20824g) abstractC20816i;
                String k = c20824g.m364k();
                k.hashCode();
                boolean z = true;
                switch (k.hashCode()) {
                    case -1644953643:
                        if (k.equals("frameset")) {
                            z = false;
                            break;
                        }
                        break;
                    case 3213227:
                        if (k.equals(AdType.HTML)) {
                            z = true;
                            break;
                        }
                        break;
                    case 97692013:
                        if (k.equals("frame")) {
                            z = true;
                            break;
                        }
                        break;
                    case 1192721831:
                        if (k.equals("noframes")) {
                            z = true;
                            break;
                        }
                        break;
                }
                switch (z) {
                    case false:
                        c20784b.m446a(c20824g);
                        return true;
                    case true:
                        return c20784b.m444a(c20824g, InBody);
                    case true:
                        c20784b.m436b(c20824g);
                        return true;
                    case true:
                        return c20784b.m444a(c20824g, InHead);
                    default:
                        c20784b.m449a(this);
                        return false;
                }
            }
        }
    },
    AfterFrameset { // from class: org.jsoup.c.c.13
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20785c
        public final boolean process(AbstractC20816i abstractC20816i, C20784b c20784b) {
            if (EnumC20785c.isWhitespace(abstractC20816i)) {
                c20784b.m448a((AbstractC20816i.C20819b) abstractC20816i);
                return true;
            } else if (abstractC20816i.m384e()) {
                c20784b.m447a((AbstractC20816i.C20820c) abstractC20816i);
                return true;
            } else if (abstractC20816i.m387b()) {
                c20784b.m449a(this);
                return false;
            } else if (abstractC20816i.m386c() && ((AbstractC20816i.C20824g) abstractC20816i).m364k().equals(AdType.HTML)) {
                return c20784b.m444a(abstractC20816i, InBody);
            } else {
                if (abstractC20816i.m385d() && ((AbstractC20816i.C20823f) abstractC20816i).m364k().equals(AdType.HTML)) {
                    c20784b.f67320h = AfterAfterFrameset;
                    return true;
                } else if (abstractC20816i.m386c() && ((AbstractC20816i.C20824g) abstractC20816i).m364k().equals("noframes")) {
                    return c20784b.m444a(abstractC20816i, InHead);
                } else {
                    if (abstractC20816i.m382g()) {
                        return true;
                    }
                    c20784b.m449a(this);
                    return false;
                }
            }
        }
    },
    AfterAfterBody { // from class: org.jsoup.c.c.14
        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x00d2, code lost:
            if (r14 == org.jsoup.select.AbstractC20972e.EnumC20973a.f67533b) goto L31;
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x0115, code lost:
            if (r14 == org.jsoup.select.AbstractC20972e.EnumC20973a.f67533b) goto L41;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v58, types: [org.jsoup.nodes.m] */
        @Override // org.jsoup.p592c.EnumC20785c
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean process(org.jsoup.p592c.AbstractC20816i r6, org.jsoup.p592c.C20784b r7) {
            /*
                Method dump skipped, instructions count: 381
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.jsoup.p592c.EnumC20785c.C2079114.process(org.jsoup.c.i, org.jsoup.c.b):boolean");
        }
    },
    AfterAfterFrameset { // from class: org.jsoup.c.c.15
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20785c
        public final boolean process(AbstractC20816i abstractC20816i, C20784b c20784b) {
            if (abstractC20816i.m384e()) {
                c20784b.m447a((AbstractC20816i.C20820c) abstractC20816i);
                return true;
            } else if (abstractC20816i.m387b() || EnumC20785c.isWhitespace(abstractC20816i) || (abstractC20816i.m386c() && ((AbstractC20816i.C20824g) abstractC20816i).m364k().equals(AdType.HTML))) {
                return c20784b.m444a(abstractC20816i, InBody);
            } else {
                if (abstractC20816i.m382g()) {
                    return true;
                }
                if (abstractC20816i.m386c() && ((AbstractC20816i.C20824g) abstractC20816i).m364k().equals("noframes")) {
                    return c20784b.m444a(abstractC20816i, InHead);
                }
                c20784b.m449a(this);
                return false;
            }
        }
    },
    ForeignContent { // from class: org.jsoup.c.c.16
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20785c
        public final boolean process(AbstractC20816i abstractC20816i, C20784b c20784b) {
            return true;
        }
    };
    
    private static final String nullString = "��";

    /* renamed from: org.jsoup.c.c$17 */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/c/c$17.class */
    static final /* synthetic */ class C2079417 {

        /* renamed from: a */
        static final /* synthetic */ int[] f67330a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004d -> B:31:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0051 -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0055 -> B:25:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0059 -> B:21:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005d -> B:29:0x0040). Please submit an issue!!! */
        static {
            int[] iArr = new int[AbstractC20816i.EnumC20826i.values().length];
            f67330a = iArr;
            try {
                iArr[AbstractC20816i.EnumC20826i.Comment.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f67330a[AbstractC20816i.EnumC20826i.Doctype.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f67330a[AbstractC20816i.EnumC20826i.StartTag.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f67330a[AbstractC20816i.EnumC20826i.EndTag.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f67330a[AbstractC20816i.EnumC20826i.Character.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f67330a[AbstractC20816i.EnumC20826i.EOF.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    /* renamed from: org.jsoup.c.c$a */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/c/c$a.class */
    public static final class C20810a {

        /* renamed from: a */
        static final String[] f67343a = {"base", "basefont", "bgsound", "command", "link"};

        /* renamed from: b */
        static final String[] f67344b = {"noframes", "style"};

        /* renamed from: c */
        static final String[] f67345c = {"body", "br", AdType.HTML};

        /* renamed from: d */
        static final String[] f67346d = {"body", AdType.HTML};

        /* renamed from: e */
        static final String[] f67347e = {"body", "br", "head", AdType.HTML};

        /* renamed from: f */
        static final String[] f67348f = {"basefont", "bgsound", "link", "meta", "noframes", "style"};

        /* renamed from: g */
        static final String[] f67349g = {"base", "basefont", "bgsound", "command", "link", "meta", "noframes", "script", "style", "title"};

        /* renamed from: h */
        static final String[] f67350h = {"address", "article", "aside", "blockquote", "center", "details", "dir", "div", "dl", "fieldset", "figcaption", "figure", "footer", "header", "hgroup", "menu", "nav", "ol", "p", "section", "summary", "ul"};

        /* renamed from: i */
        static final String[] f67351i = {"h1", "h2", "h3", "h4", "h5", "h6"};

        /* renamed from: j */
        static final String[] f67352j = {"address", "div", "p"};

        /* renamed from: k */
        static final String[] f67353k = {"dd", "dt"};

        /* renamed from: l */
        static final String[] f67354l = {C15291b.f55271a, "big", "code", "em", "font", "i", "s", "small", "strike", "strong", "tt", "u"};

        /* renamed from: m */
        static final String[] f67355m = {"applet", "marquee", "object"};

        /* renamed from: n */
        static final String[] f67356n = {"area", "br", "embed", "img", "keygen", "wbr"};

        /* renamed from: o */
        static final String[] f67357o = {"param", Payload.SOURCE, "track"};

        /* renamed from: p */
        static final String[] f67358p = {"action", "name", "prompt"};

        /* renamed from: q */
        static final String[] f67359q = {"caption", "col", "colgroup", "frame", "head", "tbody", "td", "tfoot", "th", "thead", "tr"};

        /* renamed from: r */
        static final String[] f67360r = {"address", "article", "aside", "blockquote", "button", "center", "details", "dir", "div", "dl", "fieldset", "figcaption", "figure", "footer", "header", "hgroup", "listing", "menu", "nav", "ol", "pre", "section", "summary", "ul"};

        /* renamed from: s */
        static final String[] f67361s = {"a", C15291b.f55271a, "big", "code", "em", "font", "i", "nobr", "s", "small", "strike", "strong", "tt", "u"};

        /* renamed from: t */
        static final String[] f67362t = {"table", "tbody", "tfoot", "thead", "tr"};

        /* renamed from: u */
        static final String[] f67363u = {"tbody", "tfoot", "thead"};

        /* renamed from: v */
        static final String[] f67364v = {"td", "th", "tr"};

        /* renamed from: w */
        static final String[] f67365w = {"script", "style"};

        /* renamed from: x */
        static final String[] f67366x = {"td", "th"};

        /* renamed from: y */
        static final String[] f67367y = {"body", "caption", "col", "colgroup", AdType.HTML};

        /* renamed from: z */
        static final String[] f67368z = {"table", "tbody", "tfoot", "thead", "tr"};

        /* renamed from: A */
        static final String[] f67331A = {"caption", "col", "colgroup", "tbody", "td", "tfoot", "th", "thead", "tr"};

        /* renamed from: B */
        static final String[] f67332B = {"body", "caption", "col", "colgroup", AdType.HTML, "tbody", "td", "tfoot", "th", "thead", "tr"};

        /* renamed from: C */
        static final String[] f67333C = {"table", "tbody", "tfoot", "thead", "tr"};

        /* renamed from: D */
        static final String[] f67334D = {"caption", "col", "colgroup", "tbody", "tfoot", "thead"};

        /* renamed from: E */
        static final String[] f67335E = {"body", "caption", "col", "colgroup", AdType.HTML, "td", "th", "tr"};

        /* renamed from: F */
        static final String[] f67336F = {"caption", "col", "colgroup", "tbody", "tfoot", "thead", "tr"};

        /* renamed from: G */
        static final String[] f67337G = {"body", "caption", "col", "colgroup", AdType.HTML, "td", "th"};

        /* renamed from: H */
        static final String[] f67338H = {"input", "keygen", "textarea"};

        /* renamed from: I */
        static final String[] f67339I = {"caption", "table", "tbody", "td", "tfoot", "th", "thead", "tr"};

        /* renamed from: J */
        static final String[] f67340J = {"tbody", "tfoot", "thead"};

        /* renamed from: K */
        static final String[] f67341K = {"head", "noscript"};

        /* renamed from: L */
        static final String[] f67342L = {"body", "col", "colgroup", AdType.HTML, "tbody", "td", "tfoot", "th", "thead", "tr"};

        C20810a() {
        }
    }

    public static void handleRawtext(AbstractC20816i.C20824g c20824g, C20784b c20784b) {
        c20784b.f67440t.f67420c = EnumC20829l.Rawtext;
        c20784b.m438b();
        c20784b.f67320h = Text;
        c20784b.m446a(c20824g);
    }

    public static void handleRcData(AbstractC20816i.C20824g c20824g, C20784b c20784b) {
        c20784b.f67440t.f67420c = EnumC20829l.Rcdata;
        c20784b.m438b();
        c20784b.f67320h = Text;
        c20784b.m446a(c20824g);
    }

    public static boolean isWhitespace(String str) {
        return C20782c.m494a(str);
    }

    public static boolean isWhitespace(AbstractC20816i abstractC20816i) {
        if (abstractC20816i.m383f()) {
            return C20782c.m494a(((AbstractC20816i.C20819b) abstractC20816i).f67397b);
        }
        return false;
    }

    public abstract boolean process(AbstractC20816i abstractC20816i, C20784b c20784b);
}
