package com.google.protobuf;

import com.google.protobuf.C2665x;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.protobuf.d0 */
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/d0.class */
public abstract class AbstractC2580d0 {

    /* renamed from: a */
    private static final AbstractC2580d0 f11051a = new C2582b();

    /* renamed from: b */
    private static final AbstractC2580d0 f11052b = new C2583c();

    /* renamed from: com.google.protobuf.d0$b */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/d0$b.class */
    private static final class C2582b extends AbstractC2580d0 {

        /* renamed from: c */
        private static final Class<?> f11053c = Collections.unmodifiableList(Collections.emptyList()).getClass();

        private C2582b() {
            super();
        }

        /* renamed from: f */
        static <E> List<E> m2831f(Object obj, long j) {
            return (List) C2630k1.m2503E(obj, j);
        }

        /* renamed from: g */
        private static <L> List<L> m2830g(Object obj, long j, int i) {
            C2574b0 c2574b0;
            C2574b0 mo2235d;
            ArrayList arrayList;
            List<L> m2831f = m2831f(obj, j);
            if (!m2831f.isEmpty()) {
                if (f11053c.isAssignableFrom(m2831f.getClass())) {
                    ArrayList arrayList2 = new ArrayList(m2831f.size() + i);
                    arrayList2.addAll(m2831f);
                    arrayList = arrayList2;
                } else if (!(m2831f instanceof C2624j1)) {
                    c2574b0 = m2831f;
                    if (m2831f instanceof AbstractC2662v0) {
                        c2574b0 = m2831f;
                        if (m2831f instanceof C2665x.AbstractC2674i) {
                            C2665x.AbstractC2674i abstractC2674i = (C2665x.AbstractC2674i) m2831f;
                            c2574b0 = m2831f;
                            if (!abstractC2674i.mo2237D()) {
                                mo2235d = abstractC2674i.mo2235d(m2831f.size() + i);
                            }
                        }
                    }
                    return c2574b0;
                } else {
                    C2574b0 c2574b02 = new C2574b0(m2831f.size() + i);
                    c2574b02.addAll((C2624j1) m2831f);
                    arrayList = c2574b02;
                }
                C2630k1.m2488T(obj, j, arrayList == 1 ? 1 : 0);
                c2574b0 = arrayList;
                return c2574b0;
            }
            mo2235d = m2831f instanceof AbstractC2577c0 ? new C2574b0(i) : (!(m2831f instanceof AbstractC2662v0) || !(m2831f instanceof C2665x.AbstractC2674i)) ? new ArrayList(i) : ((C2665x.AbstractC2674i) m2831f).mo2235d(i);
            C2630k1.m2488T(obj, j, mo2235d);
            c2574b0 = mo2235d;
            return c2574b0;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.protobuf.AbstractC2580d0
        /* renamed from: c */
        public void mo2829c(Object obj, long j) {
            AbstractC2577c0 abstractC2577c0;
            List list = (List) C2630k1.m2503E(obj, j);
            if (list instanceof AbstractC2577c0) {
                abstractC2577c0 = ((AbstractC2577c0) list).mo2563t();
            } else if (f11053c.isAssignableFrom(list.getClass())) {
                return;
            } else {
                if ((list instanceof AbstractC2662v0) && (list instanceof C2665x.AbstractC2674i)) {
                    C2665x.AbstractC2674i abstractC2674i = (C2665x.AbstractC2674i) list;
                    if (!abstractC2674i.mo2237D()) {
                        return;
                    }
                    abstractC2674i.mo2236h();
                    return;
                }
                abstractC2577c0 = Collections.unmodifiableList(list);
            }
            C2630k1.m2488T(obj, j, abstractC2577c0);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.protobuf.AbstractC2580d0
        /* renamed from: d */
        public <E> void mo2828d(Object obj, Object obj2, long j) {
            List m2831f = m2831f(obj2, j);
            List m2830g = m2830g(obj, j, m2831f.size());
            int size = m2830g.size();
            int size2 = m2831f.size();
            if (size > 0 && size2 > 0) {
                m2830g.addAll(m2831f);
            }
            if (size > 0) {
                m2831f = m2830g;
            }
            C2630k1.m2488T(obj, j, m2831f);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.protobuf.AbstractC2580d0
        /* renamed from: e */
        public <L> List<L> mo2827e(Object obj, long j) {
            return m2830g(obj, j, 10);
        }
    }

    /* renamed from: com.google.protobuf.d0$c */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/d0$c.class */
    private static final class C2583c extends AbstractC2580d0 {
        private C2583c() {
            super();
        }

        /* renamed from: f */
        static <E> C2665x.AbstractC2674i<E> m2826f(Object obj, long j) {
            return (C2665x.AbstractC2674i) C2630k1.m2503E(obj, j);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.protobuf.AbstractC2580d0
        /* renamed from: c */
        public void mo2829c(Object obj, long j) {
            m2826f(obj, j).mo2236h();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.protobuf.AbstractC2580d0
        /* renamed from: d */
        public <E> void mo2828d(Object obj, Object obj2, long j) {
            C2665x.AbstractC2674i m2826f = m2826f(obj, j);
            C2665x.AbstractC2674i<E> m2826f2 = m2826f(obj2, j);
            int size = m2826f.size();
            int size2 = m2826f2.size();
            C2665x.AbstractC2674i<E> abstractC2674i = m2826f;
            if (size > 0) {
                abstractC2674i = m2826f;
                if (size2 > 0) {
                    abstractC2674i = m2826f;
                    if (!m2826f.mo2237D()) {
                        abstractC2674i = m2826f.mo2235d(size2 + size);
                    }
                    abstractC2674i.addAll(m2826f2);
                }
            }
            C2665x.AbstractC2674i<E> abstractC2674i2 = m2826f2;
            if (size > 0) {
                abstractC2674i2 = abstractC2674i;
            }
            C2630k1.m2488T(obj, j, abstractC2674i2);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.protobuf.AbstractC2580d0
        /* renamed from: e */
        public <L> List<L> mo2827e(Object obj, long j) {
            C2665x.AbstractC2674i m2826f = m2826f(obj, j);
            C2665x.AbstractC2674i abstractC2674i = m2826f;
            if (!m2826f.mo2237D()) {
                int size = m2826f.size();
                abstractC2674i = m2826f.mo2235d(size == 0 ? 10 : size * 2);
                C2630k1.m2488T(obj, j, abstractC2674i);
            }
            return abstractC2674i;
        }
    }

    private AbstractC2580d0() {
    }

    /* renamed from: a */
    public static AbstractC2580d0 m2833a() {
        return f11051a;
    }

    /* renamed from: b */
    public static AbstractC2580d0 m2832b() {
        return f11052b;
    }

    /* renamed from: c */
    public abstract void mo2829c(Object obj, long j);

    /* renamed from: d */
    public abstract <L> void mo2828d(Object obj, Object obj2, long j);

    /* renamed from: e */
    public abstract <L> List<L> mo2827e(Object obj, long j);
}
