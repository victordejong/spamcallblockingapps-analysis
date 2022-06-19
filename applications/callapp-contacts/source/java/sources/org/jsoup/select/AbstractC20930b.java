package org.jsoup.select;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import org.apache.commons.lang3.StringUtils;
import org.jsoup.nodes.C20911h;
import org.jsoup.p591b.C20782c;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: org.jsoup.select.b */
/* loaded from: classes5-dex2jar.jar:org/jsoup/select/b.class */
public abstract class AbstractC20930b extends AbstractC20934d {

    /* renamed from: a */
    final ArrayList<AbstractC20934d> f67512a;

    /* renamed from: b */
    int f67513b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.jsoup.select.b$a */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/b$a.class */
    public static final class C20931a extends AbstractC20930b {
        public C20931a(Collection<AbstractC20934d> collection) {
            super(collection);
        }

        public C20931a(AbstractC20934d... abstractC20934dArr) {
            this(Arrays.asList(abstractC20934dArr));
        }

        @Override // org.jsoup.select.AbstractC20934d
        /* renamed from: a */
        public final boolean mo170a(C20911h c20911h, C20911h c20911h2) {
            for (int i = 0; i < this.f67513b; i++) {
                if (!this.f67512a.get(i).mo170a(c20911h, c20911h2)) {
                    return false;
                }
            }
            return true;
        }

        public final String toString() {
            return C20782c.m489a(this.f67512a, StringUtils.SPACE);
        }
    }

    /* renamed from: org.jsoup.select.b$b */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/b$b.class */
    static final class C20932b extends AbstractC20930b {
        public C20932b() {
        }

        C20932b(Collection<AbstractC20934d> collection) {
            if (this.f67513b > 1) {
                this.f67512a.add(new C20931a(collection));
            } else {
                this.f67512a.addAll(collection);
            }
            m199b();
        }

        public C20932b(AbstractC20934d... abstractC20934dArr) {
            this(Arrays.asList(abstractC20934dArr));
        }

        @Override // org.jsoup.select.AbstractC20934d
        /* renamed from: a */
        public final boolean mo170a(C20911h c20911h, C20911h c20911h2) {
            for (int i = 0; i < this.f67513b; i++) {
                if (this.f67512a.get(i).mo170a(c20911h, c20911h2)) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: b */
        public final void m198b(AbstractC20934d abstractC20934d) {
            this.f67512a.add(abstractC20934d);
            m199b();
        }

        public final String toString() {
            return C20782c.m489a(this.f67512a, ", ");
        }
    }

    AbstractC20930b() {
        this.f67513b = 0;
        this.f67512a = new ArrayList<>();
    }

    AbstractC20930b(Collection<AbstractC20934d> collection) {
        this();
        this.f67512a.addAll(collection);
        m199b();
    }

    /* renamed from: a */
    public final AbstractC20934d m201a() {
        int i = this.f67513b;
        if (i > 0) {
            return this.f67512a.get(i - 1);
        }
        return null;
    }

    /* renamed from: a */
    public final void m200a(AbstractC20934d abstractC20934d) {
        this.f67512a.set(this.f67513b - 1, abstractC20934d);
    }

    /* renamed from: b */
    final void m199b() {
        this.f67513b = this.f67512a.size();
    }
}
