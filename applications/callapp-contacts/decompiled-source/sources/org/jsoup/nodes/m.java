package org.jsoup.nodes;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import org.jsoup.SerializationException;
import org.jsoup.a.c;
import org.jsoup.b.b;
import org.jsoup.nodes.f;
import org.jsoup.select.g;
/* loaded from: classes5-dex2jar.jar:org/jsoup/nodes/m.class */
public abstract class m implements Cloneable {
    public m g;
    int h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/nodes/m$a.class */
    public static final class a implements g {

        /* renamed from: a  reason: collision with root package name */
        private Appendable f39301a;

        /* renamed from: b  reason: collision with root package name */
        private f.a f39302b;

        a(Appendable appendable, f.a aVar) {
            this.f39301a = appendable;
            this.f39302b = aVar;
            aVar.a();
        }

        @Override // org.jsoup.select.g
        public final void a(m mVar, int i) {
            try {
                mVar.a(this.f39301a, i, this.f39302b);
            } catch (IOException e) {
                throw new SerializationException(e);
            }
        }

        @Override // org.jsoup.select.g
        public final void b(m mVar, int i) {
            if (!mVar.a().equals("#text")) {
                try {
                    mVar.b(this.f39301a, i, this.f39302b);
                } catch (IOException e) {
                    throw new SerializationException(e);
                }
            }
        }
    }

    private void a(m mVar) {
        c.a(mVar);
        m mVar2 = this.g;
        if (mVar2 != null) {
            mVar2.g(this);
        }
        this.g = mVar;
    }

    private void b(int i) {
        List<m> h = h();
        while (i < h.size()) {
            h.get(i).h = i;
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void c(Appendable appendable, int i, f.a aVar) throws IOException {
        appendable.append('\n').append(org.jsoup.b.c.a(i * aVar.g));
    }

    public final m A() {
        m mVar = this.g;
        if (mVar == null) {
            return null;
        }
        List<m> h = mVar.h();
        int i = this.h + 1;
        if (h.size() > i) {
            return h.get(i);
        }
        return null;
    }

    public final m B() {
        m mVar = this.g;
        if (mVar != null && this.h > 0) {
            return mVar.h().get(this.h - 1);
        }
        return null;
    }

    public <T extends Appendable> T a(T t) {
        b(t);
        return t;
    }

    public abstract String a();

    public String a(String str) {
        c.a(str);
        return !b(str) ? "" : org.jsoup.b.c.a(g(), c(str));
    }

    public final m a(int i) {
        return h().get(i);
    }

    public m a(String str, String str2) {
        org.jsoup.c.f fVar = n.b(this).f39229b;
        String trim = str.trim();
        String str3 = trim;
        if (!fVar.f39227d) {
            str3 = b.a(trim);
        }
        b j = j();
        int b2 = j.b(str3);
        if (b2 != -1) {
            j.f39262c[b2] = str2;
            if (!j.f39261b[b2].equals(str3)) {
                j.f39261b[b2] = str3;
            }
        } else {
            j.a(str3, str2);
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(int i, m... mVarArr) {
        c.a((Object) mVarArr);
        List<m> h = h();
        m v = mVarArr[0].v();
        if (v != null) {
            if (v.f() == 1) {
                List unmodifiableList = Collections.unmodifiableList(v.h());
                for (int i2 = 1; i2 > 0 && mVarArr[0] == unmodifiableList.get(0); i2--) {
                }
                v.e();
                h.addAll(i, Arrays.asList(mVarArr));
                for (int i3 = 1; i3 > 0; i3--) {
                    mVarArr[0].g = this;
                }
                b(i);
                return;
            }
        }
        c.a((Object[]) mVarArr);
        for (int i4 = 0; i4 <= 0; i4++) {
            mVarArr[0].a(this);
        }
        h.addAll(i, Arrays.asList(mVarArr));
        b(i);
    }

    abstract void a(Appendable appendable, int i, f.a aVar) throws IOException;

    public String aB_() {
        StringBuilder a2 = org.jsoup.b.c.a();
        b(a2);
        return org.jsoup.b.c.a(a2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void b(Appendable appendable) {
        org.jsoup.select.f.a(new a(appendable, n.a(this)), this);
    }

    abstract void b(Appendable appendable, int i, f.a aVar) throws IOException;

    public boolean b(String str) {
        c.a((Object) str);
        if (str.startsWith("abs:")) {
            String substring = str.substring(4);
            if (j().g(substring) && !a(substring).equals("")) {
                return true;
            }
        }
        return j().g(str);
    }

    public String c(String str) {
        c.a((Object) str);
        if (!i()) {
            return "";
        }
        String e = j().e(str);
        return e.length() > 0 ? e : str.startsWith("abs:") ? a(str.substring(4)) : "";
    }

    /* renamed from: c */
    public m clone() {
        m e = e(null);
        LinkedList linkedList = new LinkedList();
        linkedList.add(e);
        while (!linkedList.isEmpty()) {
            m mVar = (m) linkedList.remove();
            int f = mVar.f();
            for (int i = 0; i < f; i++) {
                List<m> h = mVar.h();
                m e2 = h.get(i).e(mVar);
                h.set(i, e2);
                linkedList.add(e2);
            }
        }
        return e;
    }

    protected abstract void d(String str);

    public abstract m e();

    /* JADX INFO: Access modifiers changed from: protected */
    public m e(m mVar) {
        try {
            m mVar2 = (m) super.clone();
            mVar2.g = mVar;
            mVar2.h = mVar == null ? 0 : this.h;
            return mVar2;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    public boolean equals(Object obj) {
        return this == obj;
    }

    public abstract int f();

    public m f(m mVar) {
        c.a(mVar);
        c.a(this.g);
        this.g.a(this.h, mVar);
        return this;
    }

    public final void f(String str) {
        c.a((Object) str);
        d(str);
    }

    public abstract String g();

    /* JADX INFO: Access modifiers changed from: protected */
    public void g(m mVar) {
        c.a(mVar.g == this);
        int i = mVar.h;
        h().remove(i);
        b(i);
        mVar.g = null;
    }

    protected abstract List<m> h();

    public final void h(m mVar) {
        c.a(mVar);
        c.a(this.g);
        m mVar2 = this.g;
        c.a(true);
        c.a(mVar);
        m mVar3 = mVar.g;
        if (mVar3 != null) {
            mVar3.g(mVar);
        }
        int i = this.h;
        mVar2.h().set(i, mVar);
        mVar.g = mVar2;
        mVar.h = i;
        this.g = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void i(m mVar) {
        mVar.a(this);
    }

    protected abstract boolean i();

    public abstract b j();

    /* JADX INFO: Access modifiers changed from: package-private */
    public void o() {
    }

    public String toString() {
        return aB_();
    }

    public m u() {
        m mVar = this;
        while (true) {
            m mVar2 = mVar.g;
            if (mVar2 == null) {
                return mVar;
            }
            mVar = mVar2;
        }
    }

    public m v() {
        return this.g;
    }

    public final List<m> w() {
        return Collections.unmodifiableList(h());
    }

    public final f x() {
        m u = u();
        if (u instanceof f) {
            return (f) u;
        }
        return null;
    }

    public final void y() {
        c.a(this.g);
        this.g.g(this);
    }

    public final List<m> z() {
        m mVar = this.g;
        if (mVar == null) {
            return Collections.emptyList();
        }
        List<m> h = mVar.h();
        ArrayList arrayList = new ArrayList(h.size() - 1);
        for (m mVar2 : h) {
            if (mVar2 != this) {
                arrayList.add(mVar2);
            }
        }
        return arrayList;
    }
}
