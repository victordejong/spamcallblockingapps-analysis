package com.jjoe64.graphview.p455a;

import android.graphics.Canvas;
import android.graphics.PointF;
import com.jjoe64.graphview.GraphView;
import com.jjoe64.graphview.p455a.AbstractC16549d;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
/* renamed from: com.jjoe64.graphview.a.b */
/* loaded from: classes4-dex2jar.jar:com/jjoe64/graphview/a/b.class */
public abstract class AbstractC16546b<E extends AbstractC16549d> implements AbstractC16559h<E> {

    /* renamed from: b */
    public String f58199b;

    /* renamed from: d */
    protected AbstractC16553f f58201d;

    /* renamed from: e */
    public Boolean f58202e;

    /* renamed from: a */
    final List<E> f58198a = new ArrayList();

    /* renamed from: f */
    private Map<PointF, E> f58203f = new HashMap();

    /* renamed from: c */
    public int f58200c = -16746548;

    /* renamed from: g */
    private double f58204g = Double.NaN;

    /* renamed from: h */
    private double f58205h = Double.NaN;

    /* renamed from: i */
    private List<WeakReference<GraphView>> f58206i = new ArrayList();

    public AbstractC16546b() {
    }

    public AbstractC16546b(E[] eArr) {
        for (E e : eArr) {
            this.f58198a.add(e);
        }
        m7041i();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v27, types: [double] */
    /* JADX WARN: Type inference failed for: r0v28 */
    /* renamed from: i */
    private void m7041i() {
        int i = 1;
        if (this.f58198a.size() > 1) {
            char c = this.f58198a.get(0).mo7040a();
            while (true) {
                char c2 = c;
                if (i >= this.f58198a.size()) {
                    return;
                }
                char c3 = c2;
                if (this.f58198a.get(i).mo7040a() != Double.NaN) {
                    if (c2 > this.f58198a.get(i).mo7040a()) {
                        throw new IllegalArgumentException("The order of the values is not correct. X-Values have to be ordered ASC. First the lowest x value and at least the highest x value.");
                    }
                    c3 = this.f58198a.get(i).mo7040a();
                }
                i++;
                c = c3;
            }
        }
    }

    /* renamed from: a */
    public final E m7044a(float f) {
        float f2 = Float.NaN;
        E e = null;
        for (Map.Entry<PointF, E> entry : this.f58203f.entrySet()) {
            float abs = Math.abs(entry.getKey().x - f);
            if (e == null || abs < f2) {
                e = entry.getValue();
                f2 = abs;
            }
        }
        if (e == null || f2 >= 200.0f) {
            return null;
        }
        return e;
    }

    /* renamed from: a */
    protected E mo7043a(float f, float f2) {
        float f3 = Float.NaN;
        E e = null;
        for (Map.Entry<PointF, E> entry : this.f58203f.entrySet()) {
            float f4 = entry.getKey().x;
            float f5 = entry.getKey().y;
            float f6 = f4 - f;
            float f7 = f5 - f2;
            float sqrt = (float) Math.sqrt((f6 * f6) + (f7 * f7));
            if (e == null || sqrt < f3) {
                e = entry.getValue();
                f3 = sqrt;
            }
        }
        if (e == null || f3 >= 120.0f) {
            return null;
        }
        return e;
    }

    @Override // com.jjoe64.graphview.p455a.AbstractC16559h
    /* renamed from: a */
    public final Iterator<E> mo7033a(double d, double d2) {
        return (d > mo7030b() || d2 < mo7028c()) ? (Iterator<E>) new Iterator<E>(d, d2) { // from class: com.jjoe64.graphview.a.b.1

            /* renamed from: a */
            Iterator<E> f58207a;

            /* renamed from: b */
            E f58208b;

            /* renamed from: c */
            E f58209c;

            /* renamed from: d */
            boolean f58210d = true;

            /* renamed from: e */
            final /* synthetic */ double f58211e;

            /* renamed from: f */
            final /* synthetic */ double f58212f;

            /* JADX WARN: Removed duplicated region for block: B:20:0x00b8  */
            /* JADX WARN: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
            {
                /*
                    r5 = this;
                    r0 = r5
                    r1 = r6
                    com.jjoe64.graphview.p455a.AbstractC16546b.this = r1
                    r0 = r5
                    r1 = r7
                    r0.f58211e = r1
                    r0 = r5
                    r1 = r9
                    r0.f58212f = r1
                    r0 = r5
                    r0.<init>()
                    r0 = r6
                    java.util.List<E extends com.jjoe64.graphview.a.d> r0 = r0.f58198a
                    java.util.Iterator r0 = r0.iterator()
                    r6 = r0
                    r0 = r5
                    r1 = r6
                    r0.f58207a = r1
                    r0 = r5
                    r1 = 0
                    r0.f58208b = r1
                    r0 = r5
                    r1 = 0
                    r0.f58209c = r1
                    r0 = 1
                    r11 = r0
                    r0 = r5
                    r1 = 1
                    r0.f58210d = r1
                    r0 = r6
                    boolean r0 = r0.hasNext()
                    if (r0 == 0) goto L4e
                    r0 = r5
                    java.util.Iterator<E extends com.jjoe64.graphview.a.d> r0 = r0.f58207a
                    java.lang.Object r0 = r0.next()
                    com.jjoe64.graphview.a.d r0 = (com.jjoe64.graphview.p455a.AbstractC16549d) r0
                    r6 = r0
                    goto L50
                L4e:
                    r0 = 0
                    r6 = r0
                L50:
                    r0 = r6
                    if (r0 == 0) goto Lb0
                    r0 = r6
                    r12 = r0
                    r0 = r6
                    double r0 = r0.mo7040a()
                    r1 = r7
                    int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                    if (r0 < 0) goto L6a
                    r0 = r5
                    r1 = r6
                    r0.f58208b = r1
                    goto Lb3
                L6a:
                    r0 = r5
                    java.util.Iterator<E extends com.jjoe64.graphview.a.d> r0 = r0.f58207a
                    boolean r0 = r0.hasNext()
                    if (r0 == 0) goto Lb0
                    r0 = r5
                    java.util.Iterator<E extends com.jjoe64.graphview.a.d> r0 = r0.f58207a
                    java.lang.Object r0 = r0.next()
                    com.jjoe64.graphview.a.d r0 = (com.jjoe64.graphview.p455a.AbstractC16549d) r0
                    r6 = r0
                    r0 = r5
                    r1 = r6
                    r0.f58208b = r1
                    r0 = r6
                    double r0 = r0.mo7040a()
                    r1 = r5
                    double r1 = r1.f58211e
                    int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                    if (r0 < 0) goto La7
                    r0 = r5
                    r1 = r5
                    E extends com.jjoe64.graphview.a.d r1 = r1.f58208b
                    r0.f58209c = r1
                    r0 = r5
                    r1 = r12
                    r0.f58208b = r1
                    goto Lb3
                La7:
                    r0 = r5
                    E extends com.jjoe64.graphview.a.d r0 = r0.f58208b
                    r12 = r0
                    goto L6a
                Lb0:
                    r0 = 0
                    r11 = r0
                Lb3:
                    r0 = r11
                    if (r0 != 0) goto Lbd
                    r0 = r5
                    r1 = 0
                    r0.f58208b = r1
                Lbd:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.jjoe64.graphview.p455a.AbstractC16546b.C165471.<init>(com.jjoe64.graphview.a.b, double, double):void");
            }

            @Override // java.util.Iterator
            public final boolean hasNext() {
                E e = this.f58208b;
                if (e != null) {
                    return e.mo7040a() <= this.f58212f || this.f58210d;
                }
                return false;
            }

            @Override // java.util.Iterator
            public final /* synthetic */ Object next() {
                if (hasNext()) {
                    E e = this.f58208b;
                    if (e.mo7040a() > this.f58212f) {
                        this.f58210d = false;
                    }
                    E e2 = this.f58209c;
                    if (e2 != null) {
                        this.f58208b = e2;
                        this.f58209c = null;
                    } else if (this.f58207a.hasNext()) {
                        this.f58208b = this.f58207a.next();
                    } else {
                        this.f58208b = null;
                    }
                    return e;
                }
                throw new NoSuchElementException();
            }

            @Override // java.util.Iterator
            public final void remove() {
                throw new UnsupportedOperationException();
            }
        } : this.f58198a.iterator();
    }

    /* renamed from: a */
    public void mo7045a() {
        this.f58203f.clear();
    }

    /* renamed from: a */
    public final void m7042a(float f, float f2, E e) {
        boolean z;
        if (this.f58201d == null) {
            Boolean bool = this.f58202e;
            if (bool == null) {
                Iterator<WeakReference<GraphView>> it2 = this.f58206i.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        this.f58202e = Boolean.FALSE;
                        z = false;
                        break;
                    }
                    WeakReference<GraphView> next = it2.next();
                    if (next != null && next.get() != null && next.get().f58153e) {
                        this.f58202e = Boolean.TRUE;
                        z = true;
                        break;
                    }
                }
            } else {
                z = bool.booleanValue();
            }
            if (!z) {
                return;
            }
        }
        this.f58203f.put(new PointF(f, f2), e);
    }

    @Override // com.jjoe64.graphview.p455a.AbstractC16559h
    /* renamed from: a */
    public final void mo7032a(GraphView graphView) {
        this.f58206i.add(new WeakReference<>(graphView));
    }

    /* renamed from: a */
    public abstract void mo7035a(GraphView graphView, Canvas canvas, AbstractC16549d abstractC16549d);

    @Override // com.jjoe64.graphview.p455a.AbstractC16559h
    /* renamed from: b */
    public final double mo7030b() {
        if (this.f58198a.isEmpty()) {
            return 0.0d;
        }
        return this.f58198a.get(0).mo7040a();
    }

    @Override // com.jjoe64.graphview.p455a.AbstractC16559h
    /* renamed from: b */
    public final void mo7029b(float f, float f2) {
        if (this.f58201d != null) {
            mo7043a(f, f2);
        }
    }

    @Override // com.jjoe64.graphview.p455a.AbstractC16559h
    /* renamed from: c */
    public final double mo7028c() {
        if (this.f58198a.isEmpty()) {
            return 0.0d;
        }
        List<E> list = this.f58198a;
        return list.get(list.size() - 1).mo7040a();
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [double] */
    /* JADX WARN: Type inference failed for: r0v19, types: [double] */
    @Override // com.jjoe64.graphview.p455a.AbstractC16559h
    /* renamed from: d */
    public final double mo7027d() {
        if (this.f58198a.isEmpty()) {
            return 0.0d;
        }
        if (!Double.isNaN(this.f58204g)) {
            return this.f58204g;
        }
        char mo7039b = this.f58198a.get(0).mo7039b();
        int i = 1;
        while (i < this.f58198a.size()) {
            ?? mo7039b2 = this.f58198a.get(i).mo7039b();
            char c = mo7039b;
            if (mo7039b > mo7039b2) {
                c = mo7039b2;
            }
            i++;
            mo7039b = c;
        }
        this.f58204g = mo7039b;
        return mo7039b;
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [double] */
    /* JADX WARN: Type inference failed for: r0v19, types: [double] */
    @Override // com.jjoe64.graphview.p455a.AbstractC16559h
    /* renamed from: e */
    public final double mo7026e() {
        if (this.f58198a.isEmpty()) {
            return 0.0d;
        }
        if (!Double.isNaN(this.f58205h)) {
            return this.f58205h;
        }
        char mo7039b = this.f58198a.get(0).mo7039b();
        int i = 1;
        while (i < this.f58198a.size()) {
            ?? mo7039b2 = this.f58198a.get(i).mo7039b();
            char c = mo7039b;
            if (mo7039b < mo7039b2) {
                c = mo7039b2;
            }
            i++;
            mo7039b = c;
        }
        this.f58205h = mo7039b;
        return mo7039b;
    }

    @Override // com.jjoe64.graphview.p455a.AbstractC16559h
    /* renamed from: f */
    public final String mo7025f() {
        return this.f58199b;
    }

    @Override // com.jjoe64.graphview.p455a.AbstractC16559h
    /* renamed from: g */
    public final int mo7024g() {
        return this.f58200c;
    }

    @Override // com.jjoe64.graphview.p455a.AbstractC16559h
    /* renamed from: h */
    public final boolean mo7023h() {
        return this.f58198a.isEmpty();
    }
}
