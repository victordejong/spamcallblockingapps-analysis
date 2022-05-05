package p081h.p203i.p316b.p318b;

import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import p081h.p203i.p316b.p317a.C9301k;
/* renamed from: h.i.b.b.m */
/* loaded from: classes2-dex2jar.jar:h/i/b/b/m.class */
public final class C9334m {

    /* renamed from: h.i.b.b.m$a */
    /* loaded from: classes2-dex2jar.jar:h/i/b/b/m$a.class */
    public static final class C9335a extends AbstractC9311a0<T> {

        /* renamed from: a */
        public boolean f21367a;

        /* renamed from: b */
        public final /* synthetic */ Object f21368b;

        public C9335a(Object obj) {
            this.f21368b = obj;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return !this.f21367a;
        }

        /* JADX WARN: Type inference failed for: r0v5, types: [T, java.lang.Object] */
        @Override // java.util.Iterator
        public T next() {
            if (!this.f21367a) {
                this.f21367a = true;
                return this.f21368b;
            }
            throw new NoSuchElementException();
        }
    }

    /* renamed from: a */
    public static <T> AbstractC9311a0<T> m15408a(T t) {
        return new C9335a(t);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static <T> boolean m15407a(Collection<T> collection, Iterator<? extends T> it) {
        C9301k.m15478a(collection);
        C9301k.m15478a(it);
        boolean z = false;
        while (it.hasNext()) {
            z |= collection.add(it.next());
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:4:0x0009  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m15406a(java.util.Iterator<?> r3, java.util.Iterator<?> r4) {
        /*
        L_0x0000:
            r0 = r3
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x0028
            r0 = r4
            boolean r0 = r0.hasNext()
            if (r0 != 0) goto L_0x0014
            r0 = 0
            return r0
        L_0x0014:
            r0 = r3
            java.lang.Object r0 = r0.next()
            r1 = r4
            java.lang.Object r1 = r1.next()
            boolean r0 = p081h.p203i.p316b.p317a.C9295g.m15488a(r0, r1)
            if (r0 != 0) goto L_0x0000
            r0 = 0
            return r0
        L_0x0028:
            r0 = r4
            boolean r0 = r0.hasNext()
            r1 = 1
            r0 = r0 ^ r1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p316b.p318b.C9334m.m15406a(java.util.Iterator, java.util.Iterator):boolean");
    }
}
