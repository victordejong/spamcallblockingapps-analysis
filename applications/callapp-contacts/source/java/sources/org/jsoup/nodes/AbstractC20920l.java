package org.jsoup.nodes;

import java.util.Collections;
import java.util.List;
import org.jsoup.p590a.C20779c;
/* renamed from: org.jsoup.nodes.l */
/* loaded from: classes5-dex2jar.jar:org/jsoup/nodes/l.class */
public abstract class AbstractC20920l extends AbstractC20921m {

    /* renamed from: b */
    private static final List<AbstractC20921m> f67499b = Collections.emptyList();

    /* renamed from: a */
    Object f67500a;

    /* renamed from: d */
    private void m247d() {
        Object obj = this.f67500a;
        if (!(obj instanceof C20901b)) {
            C20901b c20901b = new C20901b();
            this.f67500a = c20901b;
            if (obj == null) {
                return;
            }
            c20901b.m300b(mo215a(), (String) obj);
        }
    }

    @Override // org.jsoup.nodes.AbstractC20921m
    /* renamed from: a */
    public String mo213a(String str) {
        m247d();
        return super.mo213a(str);
    }

    @Override // org.jsoup.nodes.AbstractC20921m
    /* renamed from: a */
    public AbstractC20921m mo212a(String str, String str2) {
        if ((this.f67500a instanceof C20901b) || !str.equals(mo215a())) {
            m247d();
            super.mo212a(str, str2);
        } else {
            this.f67500a = str2;
        }
        return this;
    }

    @Override // org.jsoup.nodes.AbstractC20921m
    /* renamed from: b */
    public boolean mo210b(String str) {
        m247d();
        return super.mo210b(str);
    }

    @Override // org.jsoup.nodes.AbstractC20921m
    /* renamed from: c */
    public String mo208c(String str) {
        C20779c.m507a((Object) str);
        return !(this.f67500a instanceof C20901b) ? str.equals(mo215a()) ? (String) this.f67500a : "" : super.mo208c(str);
    }

    @Override // org.jsoup.nodes.AbstractC20921m
    /* renamed from: d */
    protected final void mo236d(String str) {
    }

    @Override // org.jsoup.nodes.AbstractC20921m
    /* renamed from: e */
    public AbstractC20921m mo207e() {
        return this;
    }

    @Override // org.jsoup.nodes.AbstractC20921m
    /* renamed from: e */
    public final /* synthetic */ AbstractC20921m mo235e(AbstractC20921m abstractC20921m) {
        AbstractC20920l abstractC20920l = (AbstractC20920l) super.mo235e(abstractC20921m);
        Object obj = this.f67500a;
        if (obj instanceof C20901b) {
            abstractC20920l.f67500a = ((C20901b) obj).clone();
        }
        return abstractC20920l;
    }

    @Override // org.jsoup.nodes.AbstractC20921m
    /* renamed from: f */
    public int mo206f() {
        return 0;
    }

    @Override // org.jsoup.nodes.AbstractC20921m
    /* renamed from: g */
    public String mo205g() {
        return this.f67501g != null ? mo224v().mo205g() : "";
    }

    @Override // org.jsoup.nodes.AbstractC20921m
    /* renamed from: h */
    protected final List<AbstractC20921m> mo231h() {
        return f67499b;
    }

    @Override // org.jsoup.nodes.AbstractC20921m
    /* renamed from: i */
    protected final boolean mo229i() {
        return this.f67500a instanceof C20901b;
    }

    @Override // org.jsoup.nodes.AbstractC20921m
    /* renamed from: j */
    public final C20901b mo227j() {
        m247d();
        return (C20901b) this.f67500a;
    }

    /* renamed from: k */
    public final String m246k() {
        return mo208c(mo215a());
    }
}
