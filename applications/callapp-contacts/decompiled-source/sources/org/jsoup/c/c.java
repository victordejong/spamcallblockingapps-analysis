package org.jsoup.c;

import com.appsflyer.internal.referrer.Payload;
import com.mopub.common.AdType;
import java.util.ArrayList;
import java.util.Iterator;
import org.apache.commons.lang3.StringUtils;
import org.jsoup.c.i;
import org.jsoup.nodes.b;
import org.jsoup.nodes.f;
import org.jsoup.nodes.g;
import org.jsoup.nodes.h;
import org.jsoup.nodes.m;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5-dex2jar.jar:org/jsoup/c/c.class */
public enum c {
    Initial { // from class: org.jsoup.c.c.1
        @Override // org.jsoup.c.c
        final boolean process(i iVar, b bVar) {
            if (c.isWhitespace(iVar)) {
                return true;
            }
            if (iVar.e()) {
                bVar.a((i.c) iVar);
                return true;
            } else if (iVar.b()) {
                i.d dVar = (i.d) iVar;
                g gVar = new g(bVar.y.a(dVar.f39240b.toString()), dVar.f39242d.toString(), dVar.e.toString());
                gVar.b_(dVar.f39241c);
                bVar.c().a((m) gVar);
                if (dVar.f) {
                    bVar.c().f39267c = f.b.f39277b;
                }
                bVar.h = BeforeHtml;
                return true;
            } else {
                bVar.h = BeforeHtml;
                return bVar.a(iVar);
            }
        }
    },
    BeforeHtml { // from class: org.jsoup.c.c.12
        private boolean anythingElse(i iVar, b bVar) {
            bVar.a(AdType.HTML);
            bVar.h = BeforeHead;
            return bVar.a(iVar);
        }

        @Override // org.jsoup.c.c
        final boolean process(i iVar, b bVar) {
            if (iVar.b()) {
                bVar.a(this);
                return false;
            } else if (iVar.e()) {
                bVar.a((i.c) iVar);
                return true;
            } else if (c.isWhitespace(iVar)) {
                bVar.a((i.b) iVar);
                return true;
            } else {
                if (iVar.c()) {
                    i.g gVar = (i.g) iVar;
                    if (gVar.k().equals(AdType.HTML)) {
                        bVar.a(gVar);
                        bVar.h = BeforeHead;
                        return true;
                    }
                }
                if ((!iVar.d() || !org.jsoup.b.c.b(((i.f) iVar).k(), a.e)) && iVar.d()) {
                    bVar.a(this);
                    return false;
                }
                return anythingElse(iVar, bVar);
            }
        }
    },
    BeforeHead { // from class: org.jsoup.c.c.18
        @Override // org.jsoup.c.c
        final boolean process(i iVar, b bVar) {
            if (c.isWhitespace(iVar)) {
                bVar.a((i.b) iVar);
                return true;
            } else if (iVar.e()) {
                bVar.a((i.c) iVar);
                return true;
            } else if (iVar.b()) {
                bVar.a(this);
                return false;
            } else if (iVar.c() && ((i.g) iVar).k().equals(AdType.HTML)) {
                return InBody.process(iVar, bVar);
            } else {
                if (iVar.c()) {
                    i.g gVar = (i.g) iVar;
                    if (gVar.k().equals("head")) {
                        bVar.j = bVar.a(gVar);
                        bVar.h = InHead;
                        return true;
                    }
                }
                if (iVar.d() && org.jsoup.b.c.b(((i.f) iVar).k(), a.e)) {
                    bVar.l("head");
                    return bVar.a(iVar);
                } else if (iVar.d()) {
                    bVar.a(this);
                    return false;
                } else {
                    bVar.l("head");
                    return bVar.a(iVar);
                }
            }
        }
    },
    InHead { // from class: org.jsoup.c.c.19
        private boolean anythingElse(i iVar, m mVar) {
            mVar.m("head");
            return mVar.a(iVar);
        }

        @Override // org.jsoup.c.c
        final boolean process(i iVar, b bVar) {
            if (c.isWhitespace(iVar)) {
                bVar.a((i.b) iVar);
                return true;
            }
            int i = AnonymousClass17.f39216a[iVar.f39235a.ordinal()];
            if (i == 1) {
                bVar.a((i.c) iVar);
                return true;
            } else if (i == 2) {
                bVar.a(this);
                return false;
            } else if (i == 3) {
                i.g gVar = (i.g) iVar;
                String k = gVar.k();
                if (k.equals(AdType.HTML)) {
                    return InBody.process(iVar, bVar);
                }
                if (org.jsoup.b.c.b(k, a.f39217a)) {
                    h b2 = bVar.b(gVar);
                    if (!k.equals("base") || !b2.b("href")) {
                        return true;
                    }
                    bVar.a(b2);
                    return true;
                } else if (k.equals("meta")) {
                    bVar.b(gVar);
                    return true;
                } else if (k.equals("title")) {
                    c.handleRcData(gVar, bVar);
                    return true;
                } else if (org.jsoup.b.c.b(k, a.f39218b)) {
                    c.handleRawtext(gVar, bVar);
                    return true;
                } else if (k.equals("noscript")) {
                    bVar.a(gVar);
                    bVar.h = InHeadNoscript;
                    return true;
                } else if (k.equals("script")) {
                    bVar.t.f39250c = l.ScriptData;
                    bVar.b();
                    bVar.h = Text;
                    bVar.a(gVar);
                    return true;
                } else if (!k.equals("head")) {
                    return anythingElse(iVar, bVar);
                } else {
                    bVar.a(this);
                    return false;
                }
            } else if (i != 4) {
                return anythingElse(iVar, bVar);
            } else {
                String k2 = ((i.f) iVar).k();
                if (k2.equals("head")) {
                    bVar.e();
                    bVar.h = AfterHead;
                    return true;
                } else if (org.jsoup.b.c.b(k2, a.f39219c)) {
                    return anythingElse(iVar, bVar);
                } else {
                    bVar.a(this);
                    return false;
                }
            }
        }
    },
    InHeadNoscript { // from class: org.jsoup.c.c.20
        private boolean anythingElse(i iVar, b bVar) {
            bVar.a(this);
            i.b bVar2 = new i.b();
            bVar2.f39236b = iVar.toString();
            bVar.a(bVar2);
            return true;
        }

        @Override // org.jsoup.c.c
        final boolean process(i iVar, b bVar) {
            if (iVar.b()) {
                bVar.a(this);
                return true;
            } else if (iVar.c() && ((i.g) iVar).k().equals(AdType.HTML)) {
                return bVar.a(iVar, InBody);
            } else {
                if (iVar.d() && ((i.f) iVar).k().equals("noscript")) {
                    bVar.e();
                    bVar.h = InHead;
                    return true;
                } else if (c.isWhitespace(iVar) || iVar.e() || (iVar.c() && org.jsoup.b.c.b(((i.g) iVar).k(), a.f))) {
                    return bVar.a(iVar, InHead);
                } else {
                    if (iVar.d() && ((i.f) iVar).k().equals("br")) {
                        return anythingElse(iVar, bVar);
                    }
                    if ((!iVar.c() || !org.jsoup.b.c.b(((i.g) iVar).k(), a.K)) && !iVar.d()) {
                        return anythingElse(iVar, bVar);
                    }
                    bVar.a(this);
                    return false;
                }
            }
        }
    },
    AfterHead { // from class: org.jsoup.c.c.21
        private boolean anythingElse(i iVar, b bVar) {
            bVar.l("body");
            bVar.n = true;
            return bVar.a(iVar);
        }

        @Override // org.jsoup.c.c
        final boolean process(i iVar, b bVar) {
            if (c.isWhitespace(iVar)) {
                bVar.a((i.b) iVar);
                return true;
            } else if (iVar.e()) {
                bVar.a((i.c) iVar);
                return true;
            } else if (iVar.b()) {
                bVar.a(this);
                return true;
            } else if (iVar.c()) {
                i.g gVar = (i.g) iVar;
                String k = gVar.k();
                if (k.equals(AdType.HTML)) {
                    return bVar.a(iVar, InBody);
                }
                if (k.equals("body")) {
                    bVar.a(gVar);
                    bVar.n = false;
                    bVar.h = InBody;
                    return true;
                } else if (k.equals("frameset")) {
                    bVar.a(gVar);
                    bVar.h = InFrameset;
                    return true;
                } else if (org.jsoup.b.c.b(k, a.g)) {
                    bVar.a(this);
                    h hVar = bVar.j;
                    bVar.b(hVar);
                    bVar.a(iVar, InHead);
                    bVar.d(hVar);
                    return true;
                } else if (k.equals("head")) {
                    bVar.a(this);
                    return false;
                } else {
                    anythingElse(iVar, bVar);
                    return true;
                }
            } else if (!iVar.d()) {
                anythingElse(iVar, bVar);
                return true;
            } else if (org.jsoup.b.c.b(((i.f) iVar).k(), a.f39220d)) {
                anythingElse(iVar, bVar);
                return true;
            } else {
                bVar.a(this);
                return false;
            }
        }
    },
    InBody { // from class: org.jsoup.c.c.22
        private boolean inBodyEndTag(i iVar, b bVar) {
            i.f fVar = (i.f) iVar;
            String k = fVar.k();
            k.hashCode();
            char c2 = 65535;
            switch (k.hashCode()) {
                case 112:
                    if (k.equals("p")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case 3152:
                    if (k.equals("br")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 3200:
                    if (k.equals("dd")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case 3216:
                    if (k.equals("dt")) {
                        c2 = 3;
                        break;
                    }
                    break;
                case 3273:
                    if (k.equals("h1")) {
                        c2 = 4;
                        break;
                    }
                    break;
                case 3274:
                    if (k.equals("h2")) {
                        c2 = 5;
                        break;
                    }
                    break;
                case 3275:
                    if (k.equals("h3")) {
                        c2 = 6;
                        break;
                    }
                    break;
                case 3276:
                    if (k.equals("h4")) {
                        c2 = 7;
                        break;
                    }
                    break;
                case 3277:
                    if (k.equals("h5")) {
                        c2 = '\b';
                        break;
                    }
                    break;
                case 3278:
                    if (k.equals("h6")) {
                        c2 = '\t';
                        break;
                    }
                    break;
                case 3453:
                    if (k.equals("li")) {
                        c2 = '\n';
                        break;
                    }
                    break;
                case 3029410:
                    if (k.equals("body")) {
                        c2 = 11;
                        break;
                    }
                    break;
                case 3148996:
                    if (k.equals("form")) {
                        c2 = '\f';
                        break;
                    }
                    break;
                case 3213227:
                    if (k.equals(AdType.HTML)) {
                        c2 = '\r';
                        break;
                    }
                    break;
                case 3536714:
                    if (k.equals("span")) {
                        c2 = 14;
                        break;
                    }
                    break;
                case 1869063452:
                    if (k.equals("sarcasm")) {
                        c2 = 15;
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    if (!bVar.g(k)) {
                        bVar.a(this);
                        bVar.l(k);
                        return bVar.a(fVar);
                    }
                    bVar.j(k);
                    if (!bVar.p().e.f39232b.equals(k)) {
                        bVar.a(this);
                    }
                    bVar.c(k);
                    return true;
                case 1:
                    bVar.a(this);
                    bVar.l("br");
                    return false;
                case 2:
                case 3:
                    if (!bVar.e(k)) {
                        bVar.a(this);
                        return false;
                    }
                    bVar.j(k);
                    if (!bVar.p().e.f39232b.equals(k)) {
                        bVar.a(this);
                    }
                    bVar.c(k);
                    return true;
                case 4:
                case 5:
                case 6:
                case 7:
                case '\b':
                case '\t':
                    if (!bVar.b(a.i)) {
                        bVar.a(this);
                        return false;
                    }
                    bVar.j(k);
                    if (!bVar.p().e.f39232b.equals(k)) {
                        bVar.a(this);
                    }
                    bVar.a(a.i);
                    return true;
                case '\n':
                    if (!bVar.f(k)) {
                        bVar.a(this);
                        return false;
                    }
                    bVar.j(k);
                    if (!bVar.p().e.f39232b.equals(k)) {
                        bVar.a(this);
                    }
                    bVar.c(k);
                    return true;
                case 11:
                    if (!bVar.e("body")) {
                        bVar.a(this);
                        return false;
                    }
                    bVar.h = AfterBody;
                    return true;
                case '\f':
                    h hVar = bVar.k;
                    bVar.k = null;
                    if (hVar == null || !bVar.e(k)) {
                        bVar.a(this);
                        return false;
                    }
                    bVar.l();
                    if (!bVar.p().e.f39232b.equals(k)) {
                        bVar.a(this);
                    }
                    bVar.d(hVar);
                    return true;
                case '\r':
                    if (bVar.m("body")) {
                        return bVar.a(fVar);
                    }
                    return true;
                case 14:
                case 15:
                    return anyOtherEndTag(iVar, bVar);
                default:
                    if (org.jsoup.b.c.b(k, a.s)) {
                        return inBodyEndTagAdoption(iVar, bVar);
                    }
                    if (org.jsoup.b.c.b(k, a.r)) {
                        if (!bVar.e(k)) {
                            bVar.a(this);
                            return false;
                        }
                        bVar.l();
                        if (!bVar.p().e.f39232b.equals(k)) {
                            bVar.a(this);
                        }
                        bVar.c(k);
                        return true;
                    } else if (!org.jsoup.b.c.b(k, a.m)) {
                        return anyOtherEndTag(iVar, bVar);
                    } else {
                        if (bVar.e("name")) {
                            return true;
                        }
                        if (!bVar.e(k)) {
                            bVar.a(this);
                            return false;
                        }
                        bVar.l();
                        if (!bVar.p().e.f39232b.equals(k)) {
                            bVar.a(this);
                        }
                        bVar.c(k);
                        bVar.n();
                        return true;
                    }
            }
        }

        private boolean inBodyEndTagAdoption(i iVar, b bVar) {
            h hVar;
            String k = ((i.f) iVar).k();
            ArrayList<h> f = bVar.f();
            for (int i = 0; i < 8; i++) {
                h k2 = bVar.k(k);
                if (k2 == null) {
                    return anyOtherEndTag(iVar, bVar);
                }
                if (!bVar.c(k2)) {
                    bVar.a(this);
                    bVar.h(k2);
                    return true;
                } else if (!bVar.e(k2.e.f39232b)) {
                    bVar.a(this);
                    return false;
                } else {
                    if (bVar.p() != k2) {
                        bVar.a(this);
                    }
                    int size = f.size();
                    h hVar2 = null;
                    int i2 = 0;
                    boolean z = false;
                    while (true) {
                        hVar = null;
                        if (i2 >= size) {
                            break;
                        }
                        hVar = null;
                        if (i2 >= 64) {
                            break;
                        }
                        h hVar3 = f.get(i2);
                        if (hVar3 == k2) {
                            hVar2 = f.get(i2 - 1);
                            z = true;
                        } else {
                            z = z;
                            hVar2 = hVar2;
                            if (z) {
                                z = z;
                                hVar2 = hVar2;
                                if (b.f(hVar3)) {
                                    hVar = hVar3;
                                    break;
                                }
                            } else {
                                continue;
                            }
                        }
                        i2++;
                    }
                    if (hVar == null) {
                        bVar.c(k2.e.f39232b);
                        bVar.h(k2);
                        return true;
                    }
                    h hVar4 = hVar;
                    h hVar5 = hVar4;
                    for (int i3 = 0; i3 < 3; i3++) {
                        h hVar6 = hVar4;
                        if (bVar.c(hVar4)) {
                            hVar6 = bVar.e(hVar4);
                        }
                        if (b.a(bVar.l, hVar6)) {
                            if (hVar6 == k2) {
                                break;
                            }
                            hVar4 = new h(h.a(hVar6.a(), f.f39225b), bVar.d());
                            b.a(bVar.l, hVar6, hVar4);
                            bVar.b(hVar6, hVar4);
                            if (((h) hVar5.g) != null) {
                                hVar5.y();
                            }
                            hVar4.a((m) hVar5);
                            hVar5 = hVar4;
                        } else {
                            bVar.d(hVar6);
                            hVar4 = hVar6;
                        }
                    }
                    if (org.jsoup.b.c.b(hVar2.e.f39232b, a.t)) {
                        if (((h) hVar5.g) != null) {
                            hVar5.y();
                        }
                        bVar.a((m) hVar5);
                    } else {
                        if (((h) hVar5.g) != null) {
                            hVar5.y();
                        }
                        hVar2.a((m) hVar5);
                    }
                    h hVar7 = new h(k2.e, bVar.d());
                    hVar7.j().a(k2.j());
                    for (m mVar : (m[]) hVar.w().toArray(new m[0])) {
                        hVar7.a(mVar);
                    }
                    hVar.a((m) hVar7);
                    bVar.h(k2);
                    bVar.d(k2);
                    bVar.a(hVar, hVar7);
                }
            }
            return true;
        }

        private boolean inBodyStartTag(i iVar, b bVar) {
            i.g gVar = (i.g) iVar;
            String k = gVar.k();
            k.hashCode();
            char c2 = 65535;
            switch (k.hashCode()) {
                case -1644953643:
                    if (k.equals("frameset")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case -1377687758:
                    if (k.equals("button")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case -1191214428:
                    if (k.equals("iframe")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case -1010136971:
                    if (k.equals("option")) {
                        c2 = 3;
                        break;
                    }
                    break;
                case -1003243718:
                    if (k.equals("textarea")) {
                        c2 = 4;
                        break;
                    }
                    break;
                case -906021636:
                    if (k.equals("select")) {
                        c2 = 5;
                        break;
                    }
                    break;
                case -80773204:
                    if (k.equals("optgroup")) {
                        c2 = 6;
                        break;
                    }
                    break;
                case 97:
                    if (k.equals("a")) {
                        c2 = 7;
                        break;
                    }
                    break;
                case 3200:
                    if (k.equals("dd")) {
                        c2 = '\b';
                        break;
                    }
                    break;
                case 3216:
                    if (k.equals("dt")) {
                        c2 = '\t';
                        break;
                    }
                    break;
                case 3273:
                    if (k.equals("h1")) {
                        c2 = '\n';
                        break;
                    }
                    break;
                case 3274:
                    if (k.equals("h2")) {
                        c2 = 11;
                        break;
                    }
                    break;
                case 3275:
                    if (k.equals("h3")) {
                        c2 = '\f';
                        break;
                    }
                    break;
                case 3276:
                    if (k.equals("h4")) {
                        c2 = '\r';
                        break;
                    }
                    break;
                case 3277:
                    if (k.equals("h5")) {
                        c2 = 14;
                        break;
                    }
                    break;
                case 3278:
                    if (k.equals("h6")) {
                        c2 = 15;
                        break;
                    }
                    break;
                case 3338:
                    if (k.equals("hr")) {
                        c2 = 16;
                        break;
                    }
                    break;
                case 3453:
                    if (k.equals("li")) {
                        c2 = 17;
                        break;
                    }
                    break;
                case 3646:
                    if (k.equals("rp")) {
                        c2 = 18;
                        break;
                    }
                    break;
                case 3650:
                    if (k.equals("rt")) {
                        c2 = 19;
                        break;
                    }
                    break;
                case 111267:
                    if (k.equals("pre")) {
                        c2 = 20;
                        break;
                    }
                    break;
                case 114276:
                    if (k.equals("svg")) {
                        c2 = 21;
                        break;
                    }
                    break;
                case 118811:
                    if (k.equals("xmp")) {
                        c2 = 22;
                        break;
                    }
                    break;
                case 3029410:
                    if (k.equals("body")) {
                        c2 = 23;
                        break;
                    }
                    break;
                case 3148996:
                    if (k.equals("form")) {
                        c2 = 24;
                        break;
                    }
                    break;
                case 3213227:
                    if (k.equals(AdType.HTML)) {
                        c2 = 25;
                        break;
                    }
                    break;
                case 3344136:
                    if (k.equals("math")) {
                        c2 = 26;
                        break;
                    }
                    break;
                case 3386833:
                    if (k.equals("nobr")) {
                        c2 = 27;
                        break;
                    }
                    break;
                case 3536714:
                    if (k.equals("span")) {
                        c2 = 28;
                        break;
                    }
                    break;
                case 100313435:
                    if (k.equals("image")) {
                        c2 = 29;
                        break;
                    }
                    break;
                case 100358090:
                    if (k.equals("input")) {
                        c2 = 30;
                        break;
                    }
                    break;
                case 110115790:
                    if (k.equals("table")) {
                        c2 = 31;
                        break;
                    }
                    break;
                case 181975684:
                    if (k.equals("listing")) {
                        c2 = ' ';
                        break;
                    }
                    break;
                case 1973234167:
                    if (k.equals("plaintext")) {
                        c2 = '!';
                        break;
                    }
                    break;
                case 2091304424:
                    if (k.equals("isindex")) {
                        c2 = '\"';
                        break;
                    }
                    break;
                case 2115613112:
                    if (k.equals("noembed")) {
                        c2 = '#';
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    bVar.a(this);
                    ArrayList<h> f = bVar.f();
                    if (f.size() == 1) {
                        return false;
                    }
                    if ((f.size() > 2 && !f.get(1).e.f39232b.equals("body")) || !bVar.n) {
                        return false;
                    }
                    h hVar = f.get(1);
                    if (((h) hVar.g) != null) {
                        hVar.y();
                    }
                    while (f.size() > 1) {
                        f.remove(f.size() - 1);
                    }
                    bVar.a(gVar);
                    bVar.h = InFrameset;
                    return true;
                case 1:
                    if (bVar.g("button")) {
                        bVar.a(this);
                        bVar.m("button");
                        bVar.a((i) gVar);
                        return true;
                    }
                    bVar.m();
                    bVar.a(gVar);
                    bVar.n = false;
                    return true;
                case 2:
                    bVar.n = false;
                    c.handleRawtext(gVar, bVar);
                    return true;
                case 3:
                case 6:
                    if (bVar.p().e.f39232b.equals("option")) {
                        bVar.m("option");
                    }
                    bVar.m();
                    bVar.a(gVar);
                    return true;
                case 4:
                    bVar.a(gVar);
                    if (gVar.f) {
                        return true;
                    }
                    bVar.t.f39250c = l.Rcdata;
                    bVar.b();
                    bVar.n = false;
                    bVar.h = Text;
                    return true;
                case 5:
                    bVar.m();
                    bVar.a(gVar);
                    bVar.n = false;
                    c cVar = bVar.h;
                    if (cVar.equals(InTable) || cVar.equals(InCaption) || cVar.equals(InTableBody) || cVar.equals(InRow) || cVar.equals(InCell)) {
                        bVar.h = InSelectInTable;
                        return true;
                    }
                    bVar.h = InSelect;
                    return true;
                case 7:
                    if (bVar.k("a") != null) {
                        bVar.a(this);
                        bVar.m("a");
                        h b2 = bVar.b("a");
                        if (b2 != null) {
                            bVar.h(b2);
                            bVar.d(b2);
                        }
                    }
                    bVar.m();
                    bVar.g(bVar.a(gVar));
                    return true;
                case '\b':
                case '\t':
                    bVar.n = false;
                    ArrayList<h> f2 = bVar.f();
                    int size = f2.size() - 1;
                    while (true) {
                        if (size > 0) {
                            h hVar2 = f2.get(size);
                            if (org.jsoup.b.c.b(hVar2.e.f39232b, a.k)) {
                                bVar.m(hVar2.e.f39232b);
                            } else if (!b.f(hVar2) || org.jsoup.b.c.b(hVar2.e.f39232b, a.j)) {
                                size--;
                            }
                        }
                    }
                    if (bVar.g("p")) {
                        bVar.m("p");
                    }
                    bVar.a(gVar);
                    return true;
                case '\n':
                case 11:
                case '\f':
                case '\r':
                case 14:
                case 15:
                    if (bVar.g("p")) {
                        bVar.m("p");
                    }
                    if (org.jsoup.b.c.b(bVar.p().e.f39232b, a.i)) {
                        bVar.a(this);
                        bVar.e();
                    }
                    bVar.a(gVar);
                    return true;
                case 16:
                    if (bVar.g("p")) {
                        bVar.m("p");
                    }
                    bVar.b(gVar);
                    bVar.n = false;
                    return true;
                case 17:
                    bVar.n = false;
                    ArrayList<h> f3 = bVar.f();
                    int size2 = f3.size() - 1;
                    while (true) {
                        if (size2 > 0) {
                            h hVar3 = f3.get(size2);
                            if (hVar3.e.f39232b.equals("li")) {
                                bVar.m("li");
                            } else if (!b.f(hVar3) || org.jsoup.b.c.b(hVar3.e.f39232b, a.j)) {
                                size2--;
                            }
                        }
                    }
                    if (bVar.g("p")) {
                        bVar.m("p");
                    }
                    bVar.a(gVar);
                    return true;
                case 18:
                case 19:
                    if (!bVar.e("ruby")) {
                        return true;
                    }
                    bVar.l();
                    if (!bVar.p().e.f39232b.equals("ruby")) {
                        bVar.a(this);
                        bVar.d("ruby");
                    }
                    bVar.a(gVar);
                    return true;
                case 20:
                case ' ':
                    if (bVar.g("p")) {
                        bVar.m("p");
                    }
                    bVar.a(gVar);
                    bVar.s.a(StringUtils.LF);
                    bVar.n = false;
                    return true;
                case 21:
                    bVar.m();
                    bVar.a(gVar);
                    return true;
                case 22:
                    if (bVar.g("p")) {
                        bVar.m("p");
                    }
                    bVar.m();
                    bVar.n = false;
                    c.handleRawtext(gVar, bVar);
                    return true;
                case 23:
                    bVar.a(this);
                    ArrayList<h> f4 = bVar.f();
                    if (f4.size() == 1) {
                        return false;
                    }
                    if (f4.size() > 2 && !f4.get(1).e.f39232b.equals("body")) {
                        return false;
                    }
                    bVar.n = false;
                    h hVar4 = f4.get(1);
                    Iterator<org.jsoup.nodes.a> it2 = gVar.l().iterator();
                    while (it2.hasNext()) {
                        org.jsoup.nodes.a next = it2.next();
                        if (!hVar4.b(next.f39256a)) {
                            hVar4.j().a(next);
                        }
                    }
                    return true;
                case 24:
                    if (bVar.k != null) {
                        bVar.a(this);
                        return false;
                    }
                    if (bVar.g("p")) {
                        bVar.m("p");
                    }
                    bVar.a(gVar, true);
                    return true;
                case 25:
                    bVar.a(this);
                    h hVar5 = bVar.f().get(0);
                    Iterator<org.jsoup.nodes.a> it3 = gVar.l().iterator();
                    while (it3.hasNext()) {
                        org.jsoup.nodes.a next2 = it3.next();
                        if (!hVar5.b(next2.f39256a)) {
                            hVar5.j().a(next2);
                        }
                    }
                    return true;
                case 26:
                    bVar.m();
                    bVar.a(gVar);
                    return true;
                case 27:
                    bVar.m();
                    if (bVar.e("nobr")) {
                        bVar.a(this);
                        bVar.m("nobr");
                        bVar.m();
                    }
                    bVar.g(bVar.a(gVar));
                    return true;
                case 28:
                    bVar.m();
                    bVar.a(gVar);
                    return true;
                case 29:
                    if (bVar.b("svg") == null) {
                        return bVar.a(gVar.a("img"));
                    }
                    bVar.a(gVar);
                    return true;
                case 30:
                    bVar.m();
                    if (bVar.b(gVar).c("type").equalsIgnoreCase("hidden")) {
                        return true;
                    }
                    bVar.n = false;
                    return true;
                case 31:
                    if (bVar.c().f39267c != f.b.f39277b && bVar.g("p")) {
                        bVar.m("p");
                    }
                    bVar.a(gVar);
                    bVar.n = false;
                    bVar.h = InTable;
                    return true;
                case '!':
                    if (bVar.g("p")) {
                        bVar.m("p");
                    }
                    bVar.a(gVar);
                    bVar.t.f39250c = l.PLAINTEXT;
                    return true;
                case '\"':
                    bVar.a(this);
                    if (bVar.k != null) {
                        return false;
                    }
                    bVar.l("form");
                    if (gVar.g.f("action")) {
                        bVar.k.a("action", gVar.g.d("action"));
                    }
                    bVar.l("hr");
                    bVar.l("label");
                    String d2 = gVar.g.f("prompt") ? gVar.g.d("prompt") : "This is a searchable index. Enter search keywords: ";
                    i.b bVar2 = new i.b();
                    bVar2.f39236b = d2;
                    bVar.a((i) bVar2);
                    b bVar3 = new b();
                    Iterator<org.jsoup.nodes.a> it4 = gVar.g.iterator();
                    while (it4.hasNext()) {
                        org.jsoup.nodes.a next3 = it4.next();
                        if (!org.jsoup.b.c.b(next3.f39256a, a.p)) {
                            bVar3.a(next3);
                        }
                    }
                    bVar3.b("name", "isindex");
                    bVar.a("input", bVar3);
                    bVar.m("label");
                    bVar.l("hr");
                    bVar.m("form");
                    return true;
                case '#':
                    c.handleRawtext(gVar, bVar);
                    return true;
                default:
                    if (org.jsoup.b.c.b(k, a.n)) {
                        bVar.m();
                        bVar.b(gVar);
                        bVar.n = false;
                        return true;
                    } else if (org.jsoup.b.c.b(k, a.h)) {
                        if (bVar.g("p")) {
                            bVar.m("p");
                        }
                        bVar.a(gVar);
                        return true;
                    } else if (org.jsoup.b.c.b(k, a.g)) {
                        return bVar.a(iVar, InHead);
                    } else {
                        if (org.jsoup.b.c.b(k, a.l)) {
                            bVar.m();
                            bVar.g(bVar.a(gVar));
                            return true;
                        } else if (org.jsoup.b.c.b(k, a.m)) {
                            bVar.m();
                            bVar.a(gVar);
                            bVar.o();
                            bVar.n = false;
                            return true;
                        } else if (org.jsoup.b.c.b(k, a.o)) {
                            bVar.b(gVar);
                            return true;
                        } else if (org.jsoup.b.c.b(k, a.q)) {
                            bVar.a(this);
                            return false;
                        } else {
                            bVar.m();
                            bVar.a(gVar);
                            return true;
                        }
                    }
            }
        }

        final boolean anyOtherEndTag(i iVar, b bVar) {
            String str = ((i.f) iVar).f39244c;
            ArrayList<h> f = bVar.f();
            for (int size = f.size() - 1; size >= 0; size--) {
                h hVar = f.get(size);
                if (hVar.e.f39232b.equals(str)) {
                    bVar.j(str);
                    if (!str.equals(bVar.p().e.f39232b)) {
                        bVar.a(this);
                    }
                    bVar.c(str);
                    return true;
                } else if (b.f(hVar)) {
                    bVar.a(this);
                    return false;
                }
            }
            return true;
        }

        @Override // org.jsoup.c.c
        final boolean process(i iVar, b bVar) {
            int i = AnonymousClass17.f39216a[iVar.f39235a.ordinal()];
            if (i == 1) {
                bVar.a((i.c) iVar);
                return true;
            } else if (i == 2) {
                bVar.a(this);
                return false;
            } else if (i == 3) {
                return inBodyStartTag(iVar, bVar);
            } else {
                if (i == 4) {
                    return inBodyEndTag(iVar, bVar);
                }
                if (i != 5) {
                    return true;
                }
                i.b bVar2 = (i.b) iVar;
                if (bVar2.f39236b.equals(c.nullString)) {
                    bVar.a(this);
                    return false;
                } else if (!bVar.n || !c.isWhitespace(bVar2)) {
                    bVar.m();
                    bVar.a(bVar2);
                    bVar.n = false;
                    return true;
                } else {
                    bVar.m();
                    bVar.a(bVar2);
                    return true;
                }
            }
        }
    },
    Text { // from class: org.jsoup.c.c.23
        @Override // org.jsoup.c.c
        final boolean process(i iVar, b bVar) {
            if (iVar.f()) {
                bVar.a((i.b) iVar);
                return true;
            } else if (iVar.g()) {
                bVar.a(this);
                bVar.e();
                bVar.h = bVar.i;
                return bVar.a(iVar);
            } else if (!iVar.d()) {
                return true;
            } else {
                bVar.e();
                bVar.h = bVar.i;
                return true;
            }
        }
    },
    InTable { // from class: org.jsoup.c.c.24
        final boolean anythingElse(i iVar, b bVar) {
            boolean z;
            bVar.a(this);
            if (org.jsoup.b.c.b(bVar.p().e.f39232b, a.C)) {
                bVar.o = true;
                z = bVar.a(iVar, InBody);
                bVar.o = false;
            } else {
                z = bVar.a(iVar, InBody);
            }
            return z;
        }

        @Override // org.jsoup.c.c
        final boolean process(i iVar, b bVar) {
            if (iVar.f()) {
                bVar.k();
                bVar.b();
                bVar.h = InTableText;
                return bVar.a(iVar);
            } else if (iVar.e()) {
                bVar.a((i.c) iVar);
                return true;
            } else if (iVar.b()) {
                bVar.a(this);
                return false;
            } else if (iVar.c()) {
                i.g gVar = (i.g) iVar;
                String k = gVar.k();
                if (k.equals("caption")) {
                    bVar.g();
                    bVar.o();
                    bVar.a(gVar);
                    bVar.h = InCaption;
                    return true;
                } else if (k.equals("colgroup")) {
                    bVar.g();
                    bVar.a(gVar);
                    bVar.h = InColumnGroup;
                    return true;
                } else if (k.equals("col")) {
                    bVar.l("colgroup");
                    return bVar.a(iVar);
                } else if (org.jsoup.b.c.b(k, a.u)) {
                    bVar.g();
                    bVar.a(gVar);
                    bVar.h = InTableBody;
                    return true;
                } else if (org.jsoup.b.c.b(k, a.v)) {
                    bVar.l("tbody");
                    return bVar.a(iVar);
                } else if (k.equals("table")) {
                    bVar.a(this);
                    if (bVar.m("table")) {
                        return bVar.a(iVar);
                    }
                    return true;
                } else if (org.jsoup.b.c.b(k, a.w)) {
                    return bVar.a(iVar, InHead);
                } else {
                    if (k.equals("input")) {
                        if (!gVar.g.d("type").equalsIgnoreCase("hidden")) {
                            return anythingElse(iVar, bVar);
                        }
                        bVar.b(gVar);
                        return true;
                    } else if (!k.equals("form")) {
                        return anythingElse(iVar, bVar);
                    } else {
                        bVar.a(this);
                        if (bVar.k != null) {
                            return false;
                        }
                        bVar.a(gVar, false);
                        return true;
                    }
                }
            } else if (iVar.d()) {
                String k2 = ((i.f) iVar).k();
                if (k2.equals("table")) {
                    if (!bVar.h(k2)) {
                        bVar.a(this);
                        return false;
                    }
                    bVar.c("table");
                    bVar.j();
                    return true;
                } else if (!org.jsoup.b.c.b(k2, a.B)) {
                    return anythingElse(iVar, bVar);
                } else {
                    bVar.a(this);
                    return false;
                }
            } else if (!iVar.g()) {
                return anythingElse(iVar, bVar);
            } else {
                if (!bVar.p().e.f39232b.equals(AdType.HTML)) {
                    return true;
                }
                bVar.a(this);
                return true;
            }
        }
    },
    InTableText { // from class: org.jsoup.c.c.2
        @Override // org.jsoup.c.c
        final boolean process(i iVar, b bVar) {
            if (iVar.f39235a == i.EnumC0750i.Character) {
                i.b bVar2 = (i.b) iVar;
                if (bVar2.f39236b.equals(c.nullString)) {
                    bVar.a(this);
                    return false;
                }
                bVar.m.add(bVar2.f39236b);
                return true;
            }
            if (bVar.m.size() > 0) {
                for (String str : bVar.m) {
                    if (!c.isWhitespace(str)) {
                        bVar.a(this);
                        if (org.jsoup.b.c.b(bVar.p().e.f39232b, a.C)) {
                            bVar.o = true;
                            i.b bVar3 = new i.b();
                            bVar3.f39236b = str;
                            bVar.a(bVar3, InBody);
                            bVar.o = false;
                        } else {
                            i.b bVar4 = new i.b();
                            bVar4.f39236b = str;
                            bVar.a(bVar4, InBody);
                        }
                    } else {
                        i.b bVar5 = new i.b();
                        bVar5.f39236b = str;
                        bVar.a(bVar5);
                    }
                }
                bVar.k();
            }
            bVar.h = bVar.i;
            return bVar.a(iVar);
        }
    },
    InCaption { // from class: org.jsoup.c.c.3
        @Override // org.jsoup.c.c
        final boolean process(i iVar, b bVar) {
            if (iVar.d()) {
                i.f fVar = (i.f) iVar;
                if (fVar.k().equals("caption")) {
                    if (!bVar.h(fVar.k())) {
                        bVar.a(this);
                        return false;
                    }
                    bVar.l();
                    if (!bVar.p().e.f39232b.equals("caption")) {
                        bVar.a(this);
                    }
                    bVar.c("caption");
                    bVar.n();
                    bVar.h = InTable;
                    return true;
                }
            }
            if ((iVar.c() && org.jsoup.b.c.b(((i.g) iVar).k(), a.A)) || (iVar.d() && ((i.f) iVar).k().equals("table"))) {
                bVar.a(this);
                if (bVar.m("caption")) {
                    return bVar.a(iVar);
                }
                return true;
            } else if (!iVar.d() || !org.jsoup.b.c.b(((i.f) iVar).k(), a.L)) {
                return bVar.a(iVar, InBody);
            } else {
                bVar.a(this);
                return false;
            }
        }
    },
    InColumnGroup { // from class: org.jsoup.c.c.4
        private boolean anythingElse(i iVar, m mVar) {
            if (mVar.m("colgroup")) {
                return mVar.a(iVar);
            }
            return true;
        }

        @Override // org.jsoup.c.c
        final boolean process(i iVar, b bVar) {
            if (c.isWhitespace(iVar)) {
                bVar.a((i.b) iVar);
                return true;
            }
            int i = AnonymousClass17.f39216a[iVar.f39235a.ordinal()];
            if (i == 1) {
                bVar.a((i.c) iVar);
                return true;
            } else if (i == 2) {
                bVar.a(this);
                return true;
            } else if (i == 3) {
                i.g gVar = (i.g) iVar;
                String k = gVar.k();
                k.hashCode();
                if (!k.equals("col")) {
                    return !k.equals(AdType.HTML) ? anythingElse(iVar, bVar) : bVar.a(iVar, InBody);
                }
                bVar.b(gVar);
                return true;
            } else if (i != 4) {
                if (i == 6 && bVar.p().e.f39232b.equals(AdType.HTML)) {
                    return true;
                }
                return anythingElse(iVar, bVar);
            } else if (!((i.f) iVar).f39244c.equals("colgroup")) {
                return anythingElse(iVar, bVar);
            } else {
                if (bVar.p().e.f39232b.equals(AdType.HTML)) {
                    bVar.a(this);
                    return false;
                }
                bVar.e();
                bVar.h = InTable;
                return true;
            }
        }
    },
    InTableBody { // from class: org.jsoup.c.c.5
        private boolean anythingElse(i iVar, b bVar) {
            return bVar.a(iVar, InTable);
        }

        private boolean exitTableBody(i iVar, b bVar) {
            if (bVar.h("tbody") || bVar.h("thead") || bVar.e("tfoot")) {
                bVar.h();
                bVar.m(bVar.p().e.f39232b);
                return bVar.a(iVar);
            }
            bVar.a(this);
            return false;
        }

        @Override // org.jsoup.c.c
        final boolean process(i iVar, b bVar) {
            int i = AnonymousClass17.f39216a[iVar.f39235a.ordinal()];
            if (i == 3) {
                i.g gVar = (i.g) iVar;
                String k = gVar.k();
                if (k.equals("template")) {
                    bVar.a(gVar);
                    return true;
                } else if (k.equals("tr")) {
                    bVar.h();
                    bVar.a(gVar);
                    bVar.h = InRow;
                    return true;
                } else if (!org.jsoup.b.c.b(k, a.x)) {
                    return org.jsoup.b.c.b(k, a.D) ? exitTableBody(iVar, bVar) : anythingElse(iVar, bVar);
                } else {
                    bVar.a(this);
                    bVar.l("tr");
                    return bVar.a((i) gVar);
                }
            } else if (i != 4) {
                return anythingElse(iVar, bVar);
            } else {
                String k2 = ((i.f) iVar).k();
                if (org.jsoup.b.c.b(k2, a.J)) {
                    if (!bVar.h(k2)) {
                        bVar.a(this);
                        return false;
                    }
                    bVar.h();
                    bVar.e();
                    bVar.h = InTable;
                    return true;
                } else if (k2.equals("table")) {
                    return exitTableBody(iVar, bVar);
                } else {
                    if (!org.jsoup.b.c.b(k2, a.E)) {
                        return anythingElse(iVar, bVar);
                    }
                    bVar.a(this);
                    return false;
                }
            }
        }
    },
    InRow { // from class: org.jsoup.c.c.6
        private boolean anythingElse(i iVar, b bVar) {
            return bVar.a(iVar, InTable);
        }

        private boolean handleMissingTr(i iVar, m mVar) {
            if (mVar.m("tr")) {
                return mVar.a(iVar);
            }
            return false;
        }

        @Override // org.jsoup.c.c
        final boolean process(i iVar, b bVar) {
            if (iVar.c()) {
                i.g gVar = (i.g) iVar;
                String k = gVar.k();
                if (k.equals("template")) {
                    bVar.a(gVar);
                    return true;
                } else if (!org.jsoup.b.c.b(k, a.x)) {
                    return org.jsoup.b.c.b(k, a.F) ? handleMissingTr(iVar, bVar) : anythingElse(iVar, bVar);
                } else {
                    bVar.i();
                    bVar.a(gVar);
                    bVar.h = InCell;
                    bVar.o();
                    return true;
                }
            } else if (!iVar.d()) {
                return anythingElse(iVar, bVar);
            } else {
                String k2 = ((i.f) iVar).k();
                if (k2.equals("tr")) {
                    if (!bVar.h(k2)) {
                        bVar.a(this);
                        return false;
                    }
                    bVar.i();
                    bVar.e();
                    bVar.h = InTableBody;
                    return true;
                } else if (k2.equals("table")) {
                    return handleMissingTr(iVar, bVar);
                } else {
                    if (org.jsoup.b.c.b(k2, a.u)) {
                        if (!bVar.h(k2)) {
                            bVar.a(this);
                            return false;
                        }
                        bVar.m("tr");
                        return bVar.a(iVar);
                    } else if (!org.jsoup.b.c.b(k2, a.G)) {
                        return anythingElse(iVar, bVar);
                    } else {
                        bVar.a(this);
                        return false;
                    }
                }
            }
        }
    },
    InCell { // from class: org.jsoup.c.c.7
        private boolean anythingElse(i iVar, b bVar) {
            return bVar.a(iVar, InBody);
        }

        private void closeCell(b bVar) {
            if (bVar.h("td")) {
                bVar.m("td");
            } else {
                bVar.m("th");
            }
        }

        @Override // org.jsoup.c.c
        final boolean process(i iVar, b bVar) {
            if (iVar.d()) {
                String k = ((i.f) iVar).k();
                if (org.jsoup.b.c.b(k, a.x)) {
                    if (!bVar.h(k)) {
                        bVar.a(this);
                        bVar.h = InRow;
                        return false;
                    }
                    bVar.l();
                    if (!bVar.p().e.f39232b.equals(k)) {
                        bVar.a(this);
                    }
                    bVar.c(k);
                    bVar.n();
                    bVar.h = InRow;
                    return true;
                } else if (org.jsoup.b.c.b(k, a.y)) {
                    bVar.a(this);
                    return false;
                } else if (!org.jsoup.b.c.b(k, a.z)) {
                    return anythingElse(iVar, bVar);
                } else {
                    if (!bVar.h(k)) {
                        bVar.a(this);
                        return false;
                    }
                    closeCell(bVar);
                    return bVar.a(iVar);
                }
            } else if (!iVar.c() || !org.jsoup.b.c.b(((i.g) iVar).k(), a.A)) {
                return anythingElse(iVar, bVar);
            } else {
                if (bVar.h("td") || bVar.h("th")) {
                    closeCell(bVar);
                    return bVar.a(iVar);
                }
                bVar.a(this);
                return false;
            }
        }
    },
    InSelect { // from class: org.jsoup.c.c.8
        private boolean anythingElse(i iVar, b bVar) {
            bVar.a(this);
            return false;
        }

        @Override // org.jsoup.c.c
        final boolean process(i iVar, b bVar) {
            switch (AnonymousClass17.f39216a[iVar.f39235a.ordinal()]) {
                case 1:
                    bVar.a((i.c) iVar);
                    return true;
                case 2:
                    bVar.a(this);
                    return false;
                case 3:
                    i.g gVar = (i.g) iVar;
                    String k = gVar.k();
                    if (k.equals(AdType.HTML)) {
                        return bVar.a(gVar, InBody);
                    }
                    if (k.equals("option")) {
                        if (bVar.p().e.f39232b.equals("option")) {
                            bVar.m("option");
                        }
                        bVar.a(gVar);
                        return true;
                    } else if (k.equals("optgroup")) {
                        if (bVar.p().e.f39232b.equals("option")) {
                            bVar.m("option");
                        }
                        if (bVar.p().e.f39232b.equals("optgroup")) {
                            bVar.m("optgroup");
                        }
                        bVar.a(gVar);
                        return true;
                    } else if (k.equals("select")) {
                        bVar.a(this);
                        return bVar.m("select");
                    } else if (!org.jsoup.b.c.b(k, a.H)) {
                        return k.equals("script") ? bVar.a(iVar, InHead) : anythingElse(iVar, bVar);
                    } else {
                        bVar.a(this);
                        if (!bVar.i("select")) {
                            return false;
                        }
                        bVar.m("select");
                        return bVar.a((i) gVar);
                    }
                case 4:
                    String k2 = ((i.f) iVar).k();
                    k2.hashCode();
                    char c2 = 65535;
                    switch (k2.hashCode()) {
                        case -1010136971:
                            if (k2.equals("option")) {
                                c2 = 0;
                                break;
                            }
                            break;
                        case -906021636:
                            if (k2.equals("select")) {
                                c2 = 1;
                                break;
                            }
                            break;
                        case -80773204:
                            if (k2.equals("optgroup")) {
                                c2 = 2;
                                break;
                            }
                            break;
                    }
                    switch (c2) {
                        case 0:
                            if (bVar.p().e.f39232b.equals("option")) {
                                bVar.e();
                                return true;
                            }
                            bVar.a(this);
                            return true;
                        case 1:
                            if (!bVar.i(k2)) {
                                bVar.a(this);
                                return false;
                            }
                            bVar.c(k2);
                            bVar.j();
                            return true;
                        case 2:
                            if (bVar.p().e.f39232b.equals("option") && bVar.e(bVar.p()) != null && bVar.e(bVar.p()).e.f39232b.equals("optgroup")) {
                                bVar.m("option");
                            }
                            if (bVar.p().e.f39232b.equals("optgroup")) {
                                bVar.e();
                                return true;
                            }
                            bVar.a(this);
                            return true;
                        default:
                            return anythingElse(iVar, bVar);
                    }
                case 5:
                    i.b bVar2 = (i.b) iVar;
                    if (bVar2.f39236b.equals(c.nullString)) {
                        bVar.a(this);
                        return false;
                    }
                    bVar.a(bVar2);
                    return true;
                case 6:
                    if (bVar.p().e.f39232b.equals(AdType.HTML)) {
                        return true;
                    }
                    bVar.a(this);
                    return true;
                default:
                    return anythingElse(iVar, bVar);
            }
        }
    },
    InSelectInTable { // from class: org.jsoup.c.c.9
        @Override // org.jsoup.c.c
        final boolean process(i iVar, b bVar) {
            if (!iVar.c() || !org.jsoup.b.c.b(((i.g) iVar).k(), a.I)) {
                if (iVar.d()) {
                    i.f fVar = (i.f) iVar;
                    if (org.jsoup.b.c.b(fVar.k(), a.I)) {
                        bVar.a(this);
                        if (!bVar.h(fVar.k())) {
                            return false;
                        }
                        bVar.m("select");
                        return bVar.a(iVar);
                    }
                }
                return bVar.a(iVar, InSelect);
            }
            bVar.a(this);
            bVar.m("select");
            return bVar.a(iVar);
        }
    },
    AfterBody { // from class: org.jsoup.c.c.10
        @Override // org.jsoup.c.c
        final boolean process(i iVar, b bVar) {
            if (c.isWhitespace(iVar)) {
                bVar.a((i.b) iVar);
                return true;
            } else if (iVar.e()) {
                bVar.a((i.c) iVar);
                return true;
            } else if (iVar.b()) {
                bVar.a(this);
                return false;
            } else if (iVar.c() && ((i.g) iVar).k().equals(AdType.HTML)) {
                return bVar.a(iVar, InBody);
            } else {
                if (!iVar.d() || !((i.f) iVar).k().equals(AdType.HTML)) {
                    if (iVar.g()) {
                        return true;
                    }
                    bVar.a(this);
                    bVar.h = InBody;
                    return bVar.a(iVar);
                } else if (bVar.p) {
                    bVar.a(this);
                    return false;
                } else {
                    bVar.h = AfterAfterBody;
                    return true;
                }
            }
        }
    },
    InFrameset { // from class: org.jsoup.c.c.11
        @Override // org.jsoup.c.c
        final boolean process(i iVar, b bVar) {
            if (c.isWhitespace(iVar)) {
                bVar.a((i.b) iVar);
                return true;
            } else if (iVar.e()) {
                bVar.a((i.c) iVar);
                return true;
            } else if (iVar.b()) {
                bVar.a(this);
                return false;
            } else if (iVar.c()) {
                i.g gVar = (i.g) iVar;
                String k = gVar.k();
                k.hashCode();
                char c2 = 65535;
                switch (k.hashCode()) {
                    case -1644953643:
                        if (k.equals("frameset")) {
                            c2 = 0;
                            break;
                        }
                        break;
                    case 3213227:
                        if (k.equals(AdType.HTML)) {
                            c2 = 1;
                            break;
                        }
                        break;
                    case 97692013:
                        if (k.equals("frame")) {
                            c2 = 2;
                            break;
                        }
                        break;
                    case 1192721831:
                        if (k.equals("noframes")) {
                            c2 = 3;
                            break;
                        }
                        break;
                }
                switch (c2) {
                    case 0:
                        bVar.a(gVar);
                        return true;
                    case 1:
                        return bVar.a(gVar, InBody);
                    case 2:
                        bVar.b(gVar);
                        return true;
                    case 3:
                        return bVar.a(gVar, InHead);
                    default:
                        bVar.a(this);
                        return false;
                }
            } else if (!iVar.d() || !((i.f) iVar).k().equals("frameset")) {
                if (!iVar.g()) {
                    bVar.a(this);
                    return false;
                } else if (bVar.p().e.f39232b.equals(AdType.HTML)) {
                    return true;
                } else {
                    bVar.a(this);
                    return true;
                }
            } else if (bVar.p().e.f39232b.equals(AdType.HTML)) {
                bVar.a(this);
                return false;
            } else {
                bVar.e();
                if (bVar.p || bVar.p().e.f39232b.equals("frameset")) {
                    return true;
                }
                bVar.h = AfterFrameset;
                return true;
            }
        }
    },
    AfterFrameset { // from class: org.jsoup.c.c.13
        @Override // org.jsoup.c.c
        final boolean process(i iVar, b bVar) {
            if (c.isWhitespace(iVar)) {
                bVar.a((i.b) iVar);
                return true;
            } else if (iVar.e()) {
                bVar.a((i.c) iVar);
                return true;
            } else if (iVar.b()) {
                bVar.a(this);
                return false;
            } else if (iVar.c() && ((i.g) iVar).k().equals(AdType.HTML)) {
                return bVar.a(iVar, InBody);
            } else {
                if (iVar.d() && ((i.f) iVar).k().equals(AdType.HTML)) {
                    bVar.h = AfterAfterFrameset;
                    return true;
                } else if (iVar.c() && ((i.g) iVar).k().equals("noframes")) {
                    return bVar.a(iVar, InHead);
                } else {
                    if (iVar.g()) {
                        return true;
                    }
                    bVar.a(this);
                    return false;
                }
            }
        }
    },
    AfterAfterBody { // from class: org.jsoup.c.c.14
        /* JADX WARN: Code restructure failed: missing block: B:30:0x00d2, code lost:
            if (r14 == org.jsoup.select.e.a.f39331b) goto L_0x00d5;
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x0115, code lost:
            if (r14 == org.jsoup.select.e.a.f39331b) goto L_0x0118;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v26, types: [org.jsoup.select.a$b, org.jsoup.select.e] */
        /* JADX WARN: Type inference failed for: r6v2, types: [org.jsoup.nodes.m] */
        /* JADX WARN: Type inference failed for: r6v5 */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // org.jsoup.c.c
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        final boolean process(org.jsoup.c.i r6, org.jsoup.c.b r7) {
            /*
                Method dump skipped, instructions count: 381
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.jsoup.c.c.AnonymousClass14.process(org.jsoup.c.i, org.jsoup.c.b):boolean");
        }
    },
    AfterAfterFrameset { // from class: org.jsoup.c.c.15
        @Override // org.jsoup.c.c
        final boolean process(i iVar, b bVar) {
            if (iVar.e()) {
                bVar.a((i.c) iVar);
                return true;
            } else if (iVar.b() || c.isWhitespace(iVar) || (iVar.c() && ((i.g) iVar).k().equals(AdType.HTML))) {
                return bVar.a(iVar, InBody);
            } else {
                if (iVar.g()) {
                    return true;
                }
                if (iVar.c() && ((i.g) iVar).k().equals("noframes")) {
                    return bVar.a(iVar, InHead);
                }
                bVar.a(this);
                return false;
            }
        }
    },
    ForeignContent { // from class: org.jsoup.c.c.16
        @Override // org.jsoup.c.c
        final boolean process(i iVar, b bVar) {
            return true;
        }
    };
    
    private static final String nullString = "��";

    /* renamed from: org.jsoup.c.c$17  reason: invalid class name */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/c/c$17.class */
    static final /* synthetic */ class AnonymousClass17 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f39216a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004d -> B:31:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0051 -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0055 -> B:25:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0059 -> B:21:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005d -> B:29:0x0040). Please submit an issue!!! */
        static {
            int[] iArr = new int[i.EnumC0750i.values().length];
            f39216a = iArr;
            try {
                iArr[i.EnumC0750i.Comment.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f39216a[i.EnumC0750i.Doctype.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f39216a[i.EnumC0750i.StartTag.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f39216a[i.EnumC0750i.EndTag.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f39216a[i.EnumC0750i.Character.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f39216a[i.EnumC0750i.EOF.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/c/c$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        static final String[] f39217a = {"base", "basefont", "bgsound", "command", "link"};

        /* renamed from: b  reason: collision with root package name */
        static final String[] f39218b = {"noframes", "style"};

        /* renamed from: c  reason: collision with root package name */
        static final String[] f39219c = {"body", "br", AdType.HTML};

        /* renamed from: d  reason: collision with root package name */
        static final String[] f39220d = {"body", AdType.HTML};
        static final String[] e = {"body", "br", "head", AdType.HTML};
        static final String[] f = {"basefont", "bgsound", "link", "meta", "noframes", "style"};
        static final String[] g = {"base", "basefont", "bgsound", "command", "link", "meta", "noframes", "script", "style", "title"};
        static final String[] h = {"address", "article", "aside", "blockquote", "center", "details", "dir", "div", "dl", "fieldset", "figcaption", "figure", "footer", "header", "hgroup", "menu", "nav", "ol", "p", "section", "summary", "ul"};
        static final String[] i = {"h1", "h2", "h3", "h4", "h5", "h6"};
        static final String[] j = {"address", "div", "p"};
        static final String[] k = {"dd", "dt"};
        static final String[] l = {com.google.api.client.googleapis.notifications.b.f31754a, "big", "code", "em", "font", "i", "s", "small", "strike", "strong", "tt", "u"};
        static final String[] m = {"applet", "marquee", "object"};
        static final String[] n = {"area", "br", "embed", "img", "keygen", "wbr"};
        static final String[] o = {"param", Payload.SOURCE, "track"};
        static final String[] p = {"action", "name", "prompt"};
        static final String[] q = {"caption", "col", "colgroup", "frame", "head", "tbody", "td", "tfoot", "th", "thead", "tr"};
        static final String[] r = {"address", "article", "aside", "blockquote", "button", "center", "details", "dir", "div", "dl", "fieldset", "figcaption", "figure", "footer", "header", "hgroup", "listing", "menu", "nav", "ol", "pre", "section", "summary", "ul"};
        static final String[] s = {"a", com.google.api.client.googleapis.notifications.b.f31754a, "big", "code", "em", "font", "i", "nobr", "s", "small", "strike", "strong", "tt", "u"};
        static final String[] t = {"table", "tbody", "tfoot", "thead", "tr"};
        static final String[] u = {"tbody", "tfoot", "thead"};
        static final String[] v = {"td", "th", "tr"};
        static final String[] w = {"script", "style"};
        static final String[] x = {"td", "th"};
        static final String[] y = {"body", "caption", "col", "colgroup", AdType.HTML};
        static final String[] z = {"table", "tbody", "tfoot", "thead", "tr"};
        static final String[] A = {"caption", "col", "colgroup", "tbody", "td", "tfoot", "th", "thead", "tr"};
        static final String[] B = {"body", "caption", "col", "colgroup", AdType.HTML, "tbody", "td", "tfoot", "th", "thead", "tr"};
        static final String[] C = {"table", "tbody", "tfoot", "thead", "tr"};
        static final String[] D = {"caption", "col", "colgroup", "tbody", "tfoot", "thead"};
        static final String[] E = {"body", "caption", "col", "colgroup", AdType.HTML, "td", "th", "tr"};
        static final String[] F = {"caption", "col", "colgroup", "tbody", "tfoot", "thead", "tr"};
        static final String[] G = {"body", "caption", "col", "colgroup", AdType.HTML, "td", "th"};
        static final String[] H = {"input", "keygen", "textarea"};
        static final String[] I = {"caption", "table", "tbody", "td", "tfoot", "th", "thead", "tr"};
        static final String[] J = {"tbody", "tfoot", "thead"};
        static final String[] K = {"head", "noscript"};
        static final String[] L = {"body", "col", "colgroup", AdType.HTML, "tbody", "td", "tfoot", "th", "thead", "tr"};

        a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void handleRawtext(i.g gVar, b bVar) {
        bVar.t.f39250c = l.Rawtext;
        bVar.b();
        bVar.h = Text;
        bVar.a(gVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void handleRcData(i.g gVar, b bVar) {
        bVar.t.f39250c = l.Rcdata;
        bVar.b();
        bVar.h = Text;
        bVar.a(gVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isWhitespace(String str) {
        return org.jsoup.b.c.a(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isWhitespace(i iVar) {
        if (iVar.f()) {
            return org.jsoup.b.c.a(((i.b) iVar).f39236b);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean process(i iVar, b bVar);
}
