package p033i.p064c.p066b0.p073e.p078f.p083e;

import i.c.b0.e.k.m;
import java.util.Iterator;
import p033i.p064c.p066b0.p073e.p078f.p083e.C0511d;
/* renamed from: i.c.b0.e.f.e.d$a$a */
/* loaded from: classes2-dex2jar.jar:i/c/b0/e/f/e/d$a$a.class */
final class d$a$a implements Iterator<T> {

    /* renamed from: f */
    private Object f1091f;

    /* renamed from: g */
    final /* synthetic */ C0511d.a f1092g;

    d$a$a(C0511d.a aVar) {
        this.f1092g = aVar;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        Object obj = this.f1092g.g;
        this.f1091f = obj;
        return !m.isComplete(obj);
    }

    /* JADX WARN: Type inference failed for: r0v15, types: [T, java.lang.Object] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // java.util.Iterator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public T next() {
        /*
            r3 = this;
            r0 = r3
            java.lang.Object r0 = r0.f1091f
            if (r0 != 0) goto L_0x0012
            r0 = r3
            r1 = r3
            i.c.b0.e.f.e.d$a r1 = r1.f1092g
            java.lang.Object r1 = r1.g
            r0.f1091f = r1
        L_0x0012:
            r0 = r3
            java.lang.Object r0 = r0.f1091f
            boolean r0 = i.c.b0.e.k.m.isComplete(r0)
            if (r0 != 0) goto L_0x0040
            r0 = r3
            java.lang.Object r0 = r0.f1091f
            boolean r0 = i.c.b0.e.k.m.isError(r0)
            if (r0 != 0) goto L_0x0035
            r0 = r3
            java.lang.Object r0 = r0.f1091f
            java.lang.Object r0 = i.c.b0.e.k.m.getValue(r0)
            r4 = r0
            r0 = r3
            r1 = 0
            r0.f1091f = r1
            r0 = r4
            return r0
        L_0x0035:
            r0 = r3
            java.lang.Object r0 = r0.f1091f
            java.lang.Throwable r0 = i.c.b0.e.k.m.getError(r0)
            java.lang.RuntimeException r0 = i.c.b0.e.k.j.g(r0)
            throw r0
        L_0x0040:
            java.util.NoSuchElementException r0 = new java.util.NoSuchElementException
            r1 = r0
            r1.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p033i.p064c.p066b0.p073e.p078f.p083e.d$a$a.next():java.lang.Object");
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Read only iterator");
    }
}
