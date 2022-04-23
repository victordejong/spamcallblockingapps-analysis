package org.jsoup.select;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import org.apache.commons.lang3.StringUtils;
import org.jsoup.b.c;
import org.jsoup.nodes.h;
/* loaded from: classes5-dex2jar.jar:org/jsoup/select/b.class */
abstract class b extends d {

    /* renamed from: a  reason: collision with root package name */
    final ArrayList<d> f39310a;

    /* renamed from: b  reason: collision with root package name */
    int f39311b;

    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/b$a.class */
    static final class a extends b {
        /* JADX INFO: Access modifiers changed from: package-private */
        public a(Collection<d> collection) {
            super(collection);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(d... dVarArr) {
            this(Arrays.asList(dVarArr));
        }

        @Override // org.jsoup.select.d
        public final boolean a(h hVar, h hVar2) {
            for (int i = 0; i < this.f39311b; i++) {
                if (!this.f39310a.get(i).a(hVar, hVar2)) {
                    return false;
                }
            }
            return true;
        }

        public final String toString() {
            return c.a(this.f39310a, StringUtils.SPACE);
        }
    }

    /* renamed from: org.jsoup.select.b$b  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/b$b.class */
    static final class C0753b extends b {
        /* JADX INFO: Access modifiers changed from: package-private */
        public C0753b() {
        }

        C0753b(Collection<d> collection) {
            if (this.f39311b > 1) {
                this.f39310a.add(new a(collection));
            } else {
                this.f39310a.addAll(collection);
            }
            b();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public C0753b(d... dVarArr) {
            this(Arrays.asList(dVarArr));
        }

        @Override // org.jsoup.select.d
        public final boolean a(h hVar, h hVar2) {
            for (int i = 0; i < this.f39311b; i++) {
                if (this.f39310a.get(i).a(hVar, hVar2)) {
                    return true;
                }
            }
            return false;
        }

        public final void b(d dVar) {
            this.f39310a.add(dVar);
            b();
        }

        public final String toString() {
            return c.a(this.f39310a, ", ");
        }
    }

    b() {
        this.f39311b = 0;
        this.f39310a = new ArrayList<>();
    }

    b(Collection<d> collection) {
        this();
        this.f39310a.addAll(collection);
        b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final d a() {
        int i = this.f39311b;
        if (i > 0) {
            return this.f39310a.get(i - 1);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(d dVar) {
        this.f39310a.set(this.f39311b - 1, dVar);
    }

    final void b() {
        this.f39311b = this.f39310a.size();
    }
}
