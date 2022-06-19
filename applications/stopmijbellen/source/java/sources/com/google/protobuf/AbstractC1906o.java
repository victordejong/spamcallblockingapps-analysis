package com.google.protobuf;

import com.google.protobuf.C1895k;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p287x6.AbstractC4911k;
import p287x6.AbstractC4922t;
import p287x6.C4880a0;
import p287x6.C4884b0;
/* renamed from: com.google.protobuf.o */
/* loaded from: classes-dex2jar.jar:com/google/protobuf/o.class */
public abstract class AbstractC1906o {

    /* renamed from: a */
    public static final AbstractC1906o f7099a = new C1908b(null);

    /* renamed from: b */
    public static final AbstractC1906o f7100b = new C1909c(null);

    /* renamed from: com.google.protobuf.o$b */
    /* loaded from: classes-dex2jar.jar:com/google/protobuf/o$b.class */
    public static final class C1908b extends AbstractC1906o {

        /* renamed from: c */
        public static final Class<?> f7101c = Collections.unmodifiableList(Collections.emptyList()).getClass();

        public C1908b(C1907a c1907a) {
            super(null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: c */
        public static <L> List<L> m4259c(Object obj, long j, int i) {
            C1905n c1905n;
            C1905n c1905n2;
            List<L> list = (List) C4884b0.m303n(obj, j);
            if (list.isEmpty()) {
                C1905n c1905n3 = list instanceof AbstractC4911k ? new C1905n(i) : (!(list instanceof AbstractC4922t) || !(list instanceof C1895k.AbstractC1899d)) ? new ArrayList(i) : ((C1895k.AbstractC1899d) list).mo4205r(i);
                C4884b0.f14955e.m280q(obj, j, c1905n3);
                c1905n = c1905n3;
            } else {
                if (f7101c.isAssignableFrom(list.getClass())) {
                    ArrayList arrayList = new ArrayList(list.size() + i);
                    arrayList.addAll(list);
                    C4884b0.f14955e.m280q(obj, j, arrayList);
                    c1905n2 = arrayList;
                } else if (list instanceof C4880a0) {
                    C1905n c1905n4 = new C1905n(list.size() + i);
                    c1905n4.addAll(c1905n4.size(), (C4880a0) list);
                    C4884b0.f14955e.m280q(obj, j, c1905n4);
                    c1905n2 = c1905n4;
                } else {
                    c1905n = list;
                    if (list instanceof AbstractC4922t) {
                        c1905n = list;
                        if (list instanceof C1895k.AbstractC1899d) {
                            C1895k.AbstractC1899d abstractC1899d = (C1895k.AbstractC1899d) list;
                            c1905n = list;
                            if (!abstractC1899d.mo4265W()) {
                                C1895k.AbstractC1899d mo4205r = abstractC1899d.mo4205r(list.size() + i);
                                C4884b0.f14955e.m280q(obj, j, mo4205r);
                                c1905n = mo4205r;
                            }
                        }
                    }
                }
                c1905n = c1905n2;
            }
            return c1905n;
        }

        @Override // com.google.protobuf.AbstractC1906o
        /* renamed from: a */
        public void mo4258a(Object obj, long j) {
            AbstractC4911k abstractC4911k;
            List list = (List) C4884b0.m303n(obj, j);
            if (list instanceof AbstractC4911k) {
                abstractC4911k = ((AbstractC4911k) list).mo269A();
            } else if (f7101c.isAssignableFrom(list.getClass())) {
                return;
            } else {
                if ((list instanceof AbstractC4922t) && (list instanceof C1895k.AbstractC1899d)) {
                    C1895k.AbstractC1899d abstractC1899d = (C1895k.AbstractC1899d) list;
                    if (!abstractC1899d.mo4265W()) {
                        return;
                    }
                    abstractC1899d.mo4264l();
                    return;
                }
                abstractC4911k = Collections.unmodifiableList(list);
            }
            C4884b0.f14955e.m280q(obj, j, abstractC4911k);
        }

        @Override // com.google.protobuf.AbstractC1906o
        /* renamed from: b */
        public <E> void mo4257b(Object obj, Object obj2, long j) {
            List list = (List) C4884b0.m303n(obj2, j);
            List m4259c = m4259c(obj, j, list.size());
            int size = m4259c.size();
            int size2 = list.size();
            if (size > 0 && size2 > 0) {
                m4259c.addAll(list);
            }
            if (size > 0) {
                list = m4259c;
            }
            C4884b0.f14955e.m280q(obj, j, list);
        }
    }

    /* renamed from: com.google.protobuf.o$c */
    /* loaded from: classes-dex2jar.jar:com/google/protobuf/o$c.class */
    public static final class C1909c extends AbstractC1906o {
        public C1909c(C1907a c1907a) {
            super(null);
        }

        /* renamed from: c */
        public static <E> C1895k.AbstractC1899d<E> m4256c(Object obj, long j) {
            return (C1895k.AbstractC1899d) C4884b0.m303n(obj, j);
        }

        @Override // com.google.protobuf.AbstractC1906o
        /* renamed from: a */
        public void mo4258a(Object obj, long j) {
            m4256c(obj, j).mo4264l();
        }

        @Override // com.google.protobuf.AbstractC1906o
        /* renamed from: b */
        public <E> void mo4257b(Object obj, Object obj2, long j) {
            C1895k.AbstractC1899d m4256c = m4256c(obj, j);
            C1895k.AbstractC1899d<E> m4256c2 = m4256c(obj2, j);
            int size = m4256c.size();
            int size2 = m4256c2.size();
            C1895k.AbstractC1899d<E> abstractC1899d = m4256c;
            if (size > 0) {
                abstractC1899d = m4256c;
                if (size2 > 0) {
                    abstractC1899d = m4256c;
                    if (!m4256c.mo4265W()) {
                        abstractC1899d = m4256c.mo4205r(size2 + size);
                    }
                    abstractC1899d.addAll(m4256c2);
                }
            }
            C1895k.AbstractC1899d<E> abstractC1899d2 = m4256c2;
            if (size > 0) {
                abstractC1899d2 = abstractC1899d;
            }
            C4884b0.f14955e.m280q(obj, j, abstractC1899d2);
        }
    }

    public AbstractC1906o(C1907a c1907a) {
    }

    /* renamed from: a */
    public abstract void mo4258a(Object obj, long j);

    /* renamed from: b */
    public abstract <L> void mo4257b(Object obj, Object obj2, long j);
}
