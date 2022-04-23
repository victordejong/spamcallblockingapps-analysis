package com.google.protobuf;

import com.google.protobuf.C2665x;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.protobuf.d0 */
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/d0.class */
abstract class AbstractC2580d0 {

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

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: g */
        private static <L> List<L> m2830g(Object obj, long j, int i) {
            C2574b0 b0Var;
            ArrayList d;
            C2574b0 b0Var2;
            List<L> f = m2831f(obj, j);
            if (f.isEmpty()) {
                d = f instanceof AbstractC2577c0 ? new C2574b0(i) : (!(f instanceof AbstractC2662v0) || !(f instanceof C2665x.AbstractC2674i)) ? new ArrayList(i) : ((C2665x.AbstractC2674i) f).mo2235d(i);
            } else {
                if (f11053c.isAssignableFrom(f.getClass())) {
                    ArrayList arrayList = new ArrayList(f.size() + i);
                    arrayList.addAll(f);
                    b0Var2 = arrayList;
                } else if (f instanceof C2624j1) {
                    C2574b0 b0Var3 = new C2574b0(f.size() + i);
                    b0Var3.addAll((C2624j1) f);
                    b0Var2 = b0Var3;
                } else {
                    b0Var = f;
                    if (f instanceof AbstractC2662v0) {
                        b0Var = f;
                        if (f instanceof C2665x.AbstractC2674i) {
                            C2665x.AbstractC2674i iVar = (C2665x.AbstractC2674i) f;
                            b0Var = f;
                            if (!iVar.mo2237D()) {
                                d = iVar.mo2235d(f.size() + i);
                            }
                        }
                    }
                    return b0Var;
                }
                C2630k1.m2488T(obj, j, b0Var2);
                b0Var = b0Var2;
                return b0Var;
            }
            C2630k1.m2488T(obj, j, d);
            b0Var = d;
            return b0Var;
        }

        @Override // com.google.protobuf.AbstractC2580d0
        /* renamed from: c */
        void mo2829c(Object obj, long j) {
            Object obj2;
            List list = (List) C2630k1.m2503E(obj, j);
            if (list instanceof AbstractC2577c0) {
                obj2 = ((AbstractC2577c0) list).mo2563t();
            } else if (!f11053c.isAssignableFrom(list.getClass())) {
                if (!(list instanceof AbstractC2662v0) || !(list instanceof C2665x.AbstractC2674i)) {
                    obj2 = Collections.unmodifiableList(list);
                } else {
                    C2665x.AbstractC2674i iVar = (C2665x.AbstractC2674i) list;
                    if (iVar.mo2237D()) {
                        iVar.mo2236h();
                        return;
                    }
                    return;
                }
            } else {
                return;
            }
            C2630k1.m2488T(obj, j, obj2);
        }

        @Override // com.google.protobuf.AbstractC2580d0
        /* renamed from: d */
        <E> void mo2828d(Object obj, Object obj2, long j) {
            List f = m2831f(obj2, j);
            List g = m2830g(obj, j, f.size());
            int size = g.size();
            int size2 = f.size();
            if (size > 0 && size2 > 0) {
                g.addAll(f);
            }
            if (size > 0) {
                f = g;
            }
            C2630k1.m2488T(obj, j, f);
        }

        @Override // com.google.protobuf.AbstractC2580d0
        /* renamed from: e */
        <L> List<L> mo2827e(Object obj, long j) {
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

        @Override // com.google.protobuf.AbstractC2580d0
        /* renamed from: c */
        void mo2829c(Object obj, long j) {
            m2826f(obj, j).mo2236h();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r7v5, types: [java.util.List] */
        @Override // com.google.protobuf.AbstractC2580d0
        /* renamed from: d */
        <E> void mo2828d(Object obj, Object obj2, long j) {
            C2665x.AbstractC2674i f = m2826f(obj, j);
            C2665x.AbstractC2674i f2 = m2826f(obj2, j);
            int size = f.size();
            int size2 = f2.size();
            C2665x.AbstractC2674i iVar = f;
            if (size > 0) {
                iVar = f;
                if (size2 > 0) {
                    C2665x.AbstractC2674i<E> iVar2 = f;
                    if (!f.mo2237D()) {
                        iVar2 = f.mo2235d(size2 + size);
                    }
                    iVar2.addAll(f2);
                    iVar = iVar2;
                }
            }
            iVar = f2;
            if (size > 0) {
            }
            C2630k1.m2488T(obj, j, iVar);
        }

        @Override // com.google.protobuf.AbstractC2580d0
        /* renamed from: e */
        <L> List<L> mo2827e(Object obj, long j) {
            C2665x.AbstractC2674i f = m2826f(obj, j);
            C2665x.AbstractC2674i iVar = f;
            if (!f.mo2237D()) {
                int size = f.size();
                iVar = f.mo2235d(size == 0 ? 10 : size * 2);
                C2630k1.m2488T(obj, j, iVar);
            }
            return iVar;
        }
    }

    private AbstractC2580d0() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static AbstractC2580d0 m2833a() {
        return f11051a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static AbstractC2580d0 m2832b() {
        return f11052b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public abstract void mo2829c(Object obj, long j);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public abstract <L> void mo2828d(Object obj, Object obj2, long j);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public abstract <L> List<L> mo2827e(Object obj, long j);
}
