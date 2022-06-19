package org.jsoup.nodes;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import org.jsoup.SerializationException;
import org.jsoup.nodes.C20906f;
import org.jsoup.p590a.C20779c;
import org.jsoup.p591b.C20781b;
import org.jsoup.p591b.C20782c;
import org.jsoup.p592c.C20813f;
import org.jsoup.select.AbstractC20975g;
import org.jsoup.select.C20974f;
/* renamed from: org.jsoup.nodes.m */
/* loaded from: classes5-dex2jar.jar:org/jsoup/nodes/m.class */
public abstract class AbstractC20921m implements Cloneable {

    /* renamed from: g */
    public AbstractC20921m f67501g;

    /* renamed from: h */
    int f67502h;

    /* renamed from: org.jsoup.nodes.m$a */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/nodes/m$a.class */
    public static final class C20922a implements AbstractC20975g {

        /* renamed from: a */
        private Appendable f67503a;

        /* renamed from: b */
        private C20906f.C20907a f67504b;

        C20922a(Appendable appendable, C20906f.C20907a c20907a) {
            this.f67503a = appendable;
            this.f67504b = c20907a;
            c20907a.m283a();
        }

        @Override // org.jsoup.select.AbstractC20975g
        /* renamed from: a */
        public final void mo191a(AbstractC20921m abstractC20921m, int i) {
            try {
                abstractC20921m.mo214a(this.f67503a, i, this.f67504b);
            } catch (IOException e) {
                throw new SerializationException(e);
            }
        }

        @Override // org.jsoup.select.AbstractC20975g
        /* renamed from: b */
        public final void mo190b(AbstractC20921m abstractC20921m, int i) {
            if (!abstractC20921m.mo215a().equals("#text")) {
                try {
                    abstractC20921m.mo211b(this.f67503a, i, this.f67504b);
                } catch (IOException e) {
                    throw new SerializationException(e);
                }
            }
        }
    }

    /* renamed from: a */
    private void m240a(AbstractC20921m abstractC20921m) {
        C20779c.m507a(abstractC20921m);
        AbstractC20921m abstractC20921m2 = this.f67501g;
        if (abstractC20921m2 != null) {
            abstractC20921m2.mo232g(this);
        }
        this.f67501g = abstractC20921m;
    }

    /* renamed from: b */
    private void m239b(int i) {
        List<AbstractC20921m> mo231h = mo231h();
        while (i < mo231h.size()) {
            mo231h.get(i).f67502h = i;
            i++;
        }
    }

    /* renamed from: c */
    public static void m237c(Appendable appendable, int i, C20906f.C20907a c20907a) throws IOException {
        appendable.append('\n').append(C20782c.m495a(i * c20907a.f67468g));
    }

    /* renamed from: A */
    public final AbstractC20921m m245A() {
        AbstractC20921m abstractC20921m = this.f67501g;
        if (abstractC20921m == null) {
            return null;
        }
        List<AbstractC20921m> mo231h = abstractC20921m.mo231h();
        int i = this.f67502h + 1;
        if (mo231h.size() <= i) {
            return null;
        }
        return mo231h.get(i);
    }

    /* renamed from: B */
    public final AbstractC20921m m244B() {
        AbstractC20921m abstractC20921m = this.f67501g;
        if (abstractC20921m != null && this.f67502h > 0) {
            return abstractC20921m.mo231h().get(this.f67502h - 1);
        }
        return null;
    }

    /* renamed from: a */
    public <T extends Appendable> T mo241a(T t) {
        m238b(t);
        return t;
    }

    /* renamed from: a */
    public abstract String mo215a();

    /* renamed from: a */
    public String mo213a(String str) {
        C20779c.m505a(str);
        return !mo210b(str) ? "" : C20782c.m493a(mo205g(), mo208c(str));
    }

    /* renamed from: a */
    public final AbstractC20921m m243a(int i) {
        return mo231h().get(i);
    }

    /* renamed from: a */
    public AbstractC20921m mo212a(String str, String str2) {
        C20813f c20813f = C20923n.m218b(this).f67377b;
        String trim = str.trim();
        String str3 = trim;
        if (!c20813f.f67375d) {
            str3 = C20781b.m497a(trim);
        }
        C20901b mo227j = mo227j();
        int m301b = mo227j.m301b(str3);
        if (m301b != -1) {
            mo227j.f67454c[m301b] = str2;
            if (!mo227j.f67453b[m301b].equals(str3)) {
                mo227j.f67453b[m301b] = str3;
            }
        } else {
            mo227j.m309a(str3, str2);
        }
        return this;
    }

    /* renamed from: a */
    public final void m242a(int i, AbstractC20921m... abstractC20921mArr) {
        C20779c.m507a((Object) abstractC20921mArr);
        List<AbstractC20921m> mo231h = mo231h();
        AbstractC20921m mo224v = abstractC20921mArr[0].mo224v();
        if (mo224v == null || mo224v.mo206f() != 1) {
            C20779c.m501a((Object[]) abstractC20921mArr);
            for (int i2 = 0; i2 <= 0; i2++) {
                abstractC20921mArr[0].m240a(this);
            }
            mo231h.addAll(i, Arrays.asList(abstractC20921mArr));
            m239b(i);
            return;
        }
        List unmodifiableList = Collections.unmodifiableList(mo224v.mo231h());
        for (int i3 = 1; i3 > 0 && abstractC20921mArr[0] == unmodifiableList.get(0); i3--) {
        }
        mo224v.mo207e();
        mo231h.addAll(i, Arrays.asList(abstractC20921mArr));
        for (int i4 = 1; i4 > 0; i4--) {
            abstractC20921mArr[0].f67501g = this;
        }
        m239b(i);
    }

    /* renamed from: a */
    abstract void mo214a(Appendable appendable, int i, C20906f.C20907a c20907a) throws IOException;

    public String aB_() {
        StringBuilder m496a = C20782c.m496a();
        m238b(m496a);
        return C20782c.m491a(m496a);
    }

    /* renamed from: b */
    public final void m238b(Appendable appendable) {
        C20974f.m192a(new C20922a(appendable, C20923n.m219a(this)), this);
    }

    /* renamed from: b */
    abstract void mo211b(Appendable appendable, int i, C20906f.C20907a c20907a) throws IOException;

    /* renamed from: b */
    public boolean mo210b(String str) {
        C20779c.m507a((Object) str);
        if (str.startsWith("abs:")) {
            String substring = str.substring(4);
            if (mo227j().m291g(substring) && !mo213a(substring).equals("")) {
                return true;
            }
        }
        return mo227j().m291g(str);
    }

    /* renamed from: c */
    public String mo208c(String str) {
        C20779c.m507a((Object) str);
        if (!mo229i()) {
            return "";
        }
        String m293e = mo227j().m293e(str);
        return m293e.length() > 0 ? m293e : str.startsWith("abs:") ? mo213a(str.substring(4)) : "";
    }

    /* renamed from: c */
    public AbstractC20921m clone() {
        AbstractC20921m mo235e = mo235e(null);
        LinkedList linkedList = new LinkedList();
        linkedList.add(mo235e);
        while (!linkedList.isEmpty()) {
            AbstractC20921m abstractC20921m = (AbstractC20921m) linkedList.remove();
            int mo206f = abstractC20921m.mo206f();
            for (int i = 0; i < mo206f; i++) {
                List<AbstractC20921m> mo231h = abstractC20921m.mo231h();
                AbstractC20921m mo235e2 = mo231h.get(i).mo235e(abstractC20921m);
                mo231h.set(i, mo235e2);
                linkedList.add(mo235e2);
            }
        }
        return mo235e;
    }

    /* renamed from: d */
    protected abstract void mo236d(String str);

    /* renamed from: e */
    public abstract AbstractC20921m mo207e();

    /* renamed from: e */
    public AbstractC20921m mo235e(AbstractC20921m abstractC20921m) {
        try {
            AbstractC20921m abstractC20921m2 = (AbstractC20921m) super.clone();
            abstractC20921m2.f67501g = abstractC20921m;
            abstractC20921m2.f67502h = abstractC20921m == null ? 0 : this.f67502h;
            return abstractC20921m2;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    public boolean equals(Object obj) {
        return this == obj;
    }

    /* renamed from: f */
    public abstract int mo206f();

    /* renamed from: f */
    public AbstractC20921m mo233f(AbstractC20921m abstractC20921m) {
        C20779c.m507a(abstractC20921m);
        C20779c.m507a(this.f67501g);
        this.f67501g.m242a(this.f67502h, abstractC20921m);
        return this;
    }

    /* renamed from: f */
    public final void m234f(String str) {
        C20779c.m507a((Object) str);
        mo236d(str);
    }

    /* renamed from: g */
    public abstract String mo205g();

    /* renamed from: g */
    public void mo232g(AbstractC20921m abstractC20921m) {
        C20779c.m503a(abstractC20921m.f67501g == this);
        int i = abstractC20921m.f67502h;
        mo231h().remove(i);
        m239b(i);
        abstractC20921m.f67501g = null;
    }

    /* renamed from: h */
    protected abstract List<AbstractC20921m> mo231h();

    /* renamed from: h */
    public final void m230h(AbstractC20921m abstractC20921m) {
        C20779c.m507a(abstractC20921m);
        C20779c.m507a(this.f67501g);
        AbstractC20921m abstractC20921m2 = this.f67501g;
        C20779c.m503a(true);
        C20779c.m507a(abstractC20921m);
        AbstractC20921m abstractC20921m3 = abstractC20921m.f67501g;
        if (abstractC20921m3 != null) {
            abstractC20921m3.mo232g(abstractC20921m);
        }
        int i = this.f67502h;
        abstractC20921m2.mo231h().set(i, abstractC20921m);
        abstractC20921m.f67501g = abstractC20921m2;
        abstractC20921m.f67502h = i;
        this.f67501g = null;
    }

    /* renamed from: i */
    public final void m228i(AbstractC20921m abstractC20921m) {
        abstractC20921m.m240a(this);
    }

    /* renamed from: i */
    protected abstract boolean mo229i();

    /* renamed from: j */
    public abstract C20901b mo227j();

    /* renamed from: o */
    public void mo226o() {
    }

    public String toString() {
        return aB_();
    }

    /* renamed from: u */
    public AbstractC20921m mo225u() {
        AbstractC20921m abstractC20921m = this;
        while (true) {
            AbstractC20921m abstractC20921m2 = abstractC20921m;
            AbstractC20921m abstractC20921m3 = abstractC20921m2.f67501g;
            if (abstractC20921m3 != null) {
                abstractC20921m = abstractC20921m3;
            } else {
                return abstractC20921m2;
            }
        }
    }

    /* renamed from: v */
    public AbstractC20921m mo224v() {
        return this.f67501g;
    }

    /* renamed from: w */
    public final List<AbstractC20921m> m223w() {
        return Collections.unmodifiableList(mo231h());
    }

    /* renamed from: x */
    public final C20906f m222x() {
        AbstractC20921m mo225u = mo225u();
        if (mo225u instanceof C20906f) {
            return (C20906f) mo225u;
        }
        return null;
    }

    /* renamed from: y */
    public final void m221y() {
        C20779c.m507a(this.f67501g);
        this.f67501g.mo232g(this);
    }

    /* renamed from: z */
    public final List<AbstractC20921m> m220z() {
        AbstractC20921m abstractC20921m = this.f67501g;
        if (abstractC20921m == null) {
            return Collections.emptyList();
        }
        List<AbstractC20921m> mo231h = abstractC20921m.mo231h();
        ArrayList arrayList = new ArrayList(mo231h.size() - 1);
        for (AbstractC20921m abstractC20921m2 : mo231h) {
            if (abstractC20921m2 != this) {
                arrayList.add(abstractC20921m2);
            }
        }
        return arrayList;
    }
}
