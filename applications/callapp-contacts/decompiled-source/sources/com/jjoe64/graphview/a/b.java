package com.jjoe64.graphview.a;

import android.graphics.Canvas;
import android.graphics.PointF;
import com.jjoe64.graphview.GraphView;
import com.jjoe64.graphview.a.d;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
/* loaded from: classes4-dex2jar.jar:com/jjoe64/graphview/a/b.class */
public abstract class b<E extends d> implements h<E> {

    /* renamed from: b  reason: collision with root package name */
    public String f33539b;

    /* renamed from: d  reason: collision with root package name */
    protected f f33541d;
    public Boolean e;

    /* renamed from: a  reason: collision with root package name */
    final List<E> f33538a = new ArrayList();
    private Map<PointF, E> f = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    public int f33540c = -16746548;
    private double g = Double.NaN;
    private double h = Double.NaN;
    private List<WeakReference<GraphView>> i = new ArrayList();

    public b() {
    }

    public b(E[] eArr) {
        for (E e : eArr) {
            this.f33538a.add(e);
        }
        i();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [double] */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v27 */
    /* JADX WARN: Type inference failed for: r0v28 */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v2, types: [double] */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void i() {
        /*
            r5 = this;
            r0 = r5
            java.util.List<E extends com.jjoe64.graphview.a.d> r0 = r0.f33538a
            int r0 = r0.size()
            r6 = r0
            r0 = 1
            r7 = r0
            r0 = r6
            r1 = 1
            if (r0 <= r1) goto L_0x008e
            r0 = r5
            java.util.List<E extends com.jjoe64.graphview.a.d> r0 = r0.f33538a
            r1 = 0
            java.lang.Object r0 = r0.get(r1)
            com.jjoe64.graphview.a.d r0 = (com.jjoe64.graphview.a.d) r0
            double r0 = r0.a()
            r8 = r0
        L_0x0024:
            r0 = r7
            r1 = r5
            java.util.List<E extends com.jjoe64.graphview.a.d> r1 = r1.f33538a
            int r1 = r1.size()
            if (r0 >= r1) goto L_0x008e
            r0 = r8
            r10 = r0
            r0 = r5
            java.util.List<E extends com.jjoe64.graphview.a.d> r0 = r0.f33538a
            r1 = r7
            java.lang.Object r0 = r0.get(r1)
            com.jjoe64.graphview.a.d r0 = (com.jjoe64.graphview.a.d) r0
            double r0 = r0.a()
            r1 = 9221120237041090560(0x7ff8000000000000, double:NaN)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0085
            r0 = r8
            r1 = r5
            java.util.List<E extends com.jjoe64.graphview.a.d> r1 = r1.f33538a
            r2 = r7
            java.lang.Object r1 = r1.get(r2)
            com.jjoe64.graphview.a.d r1 = (com.jjoe64.graphview.a.d) r1
            double r1 = r1.a()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x007b
            r0 = r5
            java.util.List<E extends com.jjoe64.graphview.a.d> r0 = r0.f33538a
            r1 = r7
            java.lang.Object r0 = r0.get(r1)
            com.jjoe64.graphview.a.d r0 = (com.jjoe64.graphview.a.d) r0
            double r0 = r0.a()
            r10 = r0
            goto L_0x0085
        L_0x007b:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            java.lang.String r2 = "The order of the values is not correct. X-Values have to be ordered ASC. First the lowest x value and at least the highest x value."
            r1.<init>(r2)
            throw r0
        L_0x0085:
            int r7 = r7 + 1
            r0 = r10
            r8 = r0
            goto L_0x0024
        L_0x008e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.jjoe64.graphview.a.b.i():void");
    }

    public final E a(float f) {
        float f2 = Float.NaN;
        E e = null;
        for (Map.Entry<PointF, E> entry : this.f.entrySet()) {
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

    protected E a(float f, float f2) {
        float f3 = Float.NaN;
        E e = null;
        for (Map.Entry<PointF, E> entry : this.f.entrySet()) {
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

    @Override // com.jjoe64.graphview.a.h
    public final Iterator<E> a(double d2, double d3) {
        return (d2 > b() || d3 < c()) ? (Iterator<E>) new Iterator<E>(d2, d3) { // from class: com.jjoe64.graphview.a.b.1

            /* renamed from: a  reason: collision with root package name */
            Iterator<E> f33542a;

            /* renamed from: b  reason: collision with root package name */
            E f33543b;

            /* renamed from: c  reason: collision with root package name */
            E f33544c;

            /* renamed from: d  reason: collision with root package name */
            boolean f33545d = true;
            final /* synthetic */ double e;
            final /* synthetic */ double f;

            /* JADX WARN: Removed duplicated region for block: B:20:0x00b8  */
            /* JADX WARN: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
            {
                /*
                    r5 = this;
                    r0 = r5
                    r1 = r6
                    com.jjoe64.graphview.a.b.this = r1
                    r0 = r5
                    r1 = r7
                    r0.e = r1
                    r0 = r5
                    r1 = r9
                    r0.f = r1
                    r0 = r5
                    r0.<init>()
                    r0 = r6
                    java.util.List<E extends com.jjoe64.graphview.a.d> r0 = r0.f33538a
                    java.util.Iterator r0 = r0.iterator()
                    r6 = r0
                    r0 = r5
                    r1 = r6
                    r0.f33542a = r1
                    r0 = r5
                    r1 = 0
                    r0.f33543b = r1
                    r0 = r5
                    r1 = 0
                    r0.f33544c = r1
                    r0 = 1
                    r11 = r0
                    r0 = r5
                    r1 = 1
                    r0.f33545d = r1
                    r0 = r6
                    boolean r0 = r0.hasNext()
                    if (r0 == 0) goto L_0x004e
                    r0 = r5
                    java.util.Iterator<E extends com.jjoe64.graphview.a.d> r0 = r0.f33542a
                    java.lang.Object r0 = r0.next()
                    com.jjoe64.graphview.a.d r0 = (com.jjoe64.graphview.a.d) r0
                    r6 = r0
                    goto L_0x0050
                L_0x004e:
                    r0 = 0
                    r6 = r0
                L_0x0050:
                    r0 = r6
                    if (r0 == 0) goto L_0x00b0
                    r0 = r6
                    r12 = r0
                    r0 = r6
                    double r0 = r0.a()
                    r1 = r7
                    int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                    if (r0 < 0) goto L_0x006a
                    r0 = r5
                    r1 = r6
                    r0.f33543b = r1
                    goto L_0x00b3
                L_0x006a:
                    r0 = r5
                    java.util.Iterator<E extends com.jjoe64.graphview.a.d> r0 = r0.f33542a
                    boolean r0 = r0.hasNext()
                    if (r0 == 0) goto L_0x00b0
                    r0 = r5
                    java.util.Iterator<E extends com.jjoe64.graphview.a.d> r0 = r0.f33542a
                    java.lang.Object r0 = r0.next()
                    com.jjoe64.graphview.a.d r0 = (com.jjoe64.graphview.a.d) r0
                    r6 = r0
                    r0 = r5
                    r1 = r6
                    r0.f33543b = r1
                    r0 = r6
                    double r0 = r0.a()
                    r1 = r5
                    double r1 = r1.e
                    int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                    if (r0 < 0) goto L_0x00a7
                    r0 = r5
                    r1 = r5
                    E extends com.jjoe64.graphview.a.d r1 = r1.f33543b
                    r0.f33544c = r1
                    r0 = r5
                    r1 = r12
                    r0.f33543b = r1
                    goto L_0x00b3
                L_0x00a7:
                    r0 = r5
                    E extends com.jjoe64.graphview.a.d r0 = r0.f33543b
                    r12 = r0
                    goto L_0x006a
                L_0x00b0:
                    r0 = 0
                    r11 = r0
                L_0x00b3:
                    r0 = r11
                    if (r0 != 0) goto L_0x00bd
                    r0 = r5
                    r1 = 0
                    r0.f33543b = r1
                L_0x00bd:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.jjoe64.graphview.a.b.AnonymousClass1.<init>(com.jjoe64.graphview.a.b, double, double):void");
            }

            @Override // java.util.Iterator
            public final boolean hasNext() {
                E e = this.f33543b;
                if (e != null) {
                    return e.a() <= this.f || this.f33545d;
                }
                return false;
            }

            @Override // java.util.Iterator
            public final /* synthetic */ Object next() {
                if (hasNext()) {
                    E e = this.f33543b;
                    if (e.a() > this.f) {
                        this.f33545d = false;
                    }
                    E e2 = this.f33544c;
                    if (e2 != null) {
                        this.f33543b = e2;
                        this.f33544c = null;
                    } else if (this.f33542a.hasNext()) {
                        this.f33543b = this.f33542a.next();
                    } else {
                        this.f33543b = null;
                    }
                    return e;
                }
                throw new NoSuchElementException();
            }

            @Override // java.util.Iterator
            public final void remove() {
                throw new UnsupportedOperationException();
            }
        } : this.f33538a.iterator();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a() {
        this.f.clear();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(float f, float f2, E e) {
        boolean z;
        if (this.f33541d == null) {
            Boolean bool = this.e;
            if (bool == null) {
                Iterator<WeakReference<GraphView>> it2 = this.i.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        this.e = Boolean.FALSE;
                        z = false;
                        break;
                    }
                    WeakReference<GraphView> next = it2.next();
                    if (next != null && next.get() != null && next.get().e) {
                        this.e = Boolean.TRUE;
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
        this.f.put(new PointF(f, f2), e);
    }

    @Override // com.jjoe64.graphview.a.h
    public final void a(GraphView graphView) {
        this.i.add(new WeakReference<>(graphView));
    }

    public abstract void a(GraphView graphView, Canvas canvas, d dVar);

    @Override // com.jjoe64.graphview.a.h
    public final double b() {
        if (this.f33538a.isEmpty()) {
            return 0.0d;
        }
        return this.f33538a.get(0).a();
    }

    @Override // com.jjoe64.graphview.a.h
    public final void b(float f, float f2) {
        if (this.f33541d != null) {
            a(f, f2);
        }
    }

    @Override // com.jjoe64.graphview.a.h
    public final double c() {
        if (this.f33538a.isEmpty()) {
            return 0.0d;
        }
        List<E> list = this.f33538a;
        return list.get(list.size() - 1).a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v19, types: [double] */
    /* JADX WARN: Type inference failed for: r6v1, types: [double] */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // com.jjoe64.graphview.a.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final double d() {
        /*
            r5 = this;
            r0 = r5
            java.util.List<E extends com.jjoe64.graphview.a.d> r0 = r0.f33538a
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x000e
            r0 = 0
            return r0
        L_0x000e:
            r0 = r5
            double r0 = r0.g
            boolean r0 = java.lang.Double.isNaN(r0)
            if (r0 != 0) goto L_0x001d
            r0 = r5
            double r0 = r0.g
            return r0
        L_0x001d:
            r0 = r5
            java.util.List<E extends com.jjoe64.graphview.a.d> r0 = r0.f33538a
            r1 = 0
            java.lang.Object r0 = r0.get(r1)
            com.jjoe64.graphview.a.d r0 = (com.jjoe64.graphview.a.d) r0
            double r0 = r0.b()
            r6 = r0
            r0 = 1
            r8 = r0
        L_0x0032:
            r0 = r8
            r1 = r5
            java.util.List<E extends com.jjoe64.graphview.a.d> r1 = r1.f33538a
            int r1 = r1.size()
            if (r0 >= r1) goto L_0x006a
            r0 = r5
            java.util.List<E extends com.jjoe64.graphview.a.d> r0 = r0.f33538a
            r1 = r8
            java.lang.Object r0 = r0.get(r1)
            com.jjoe64.graphview.a.d r0 = (com.jjoe64.graphview.a.d) r0
            double r0 = r0.b()
            r9 = r0
            r0 = r6
            r11 = r0
            r0 = r6
            r1 = r9
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0061
            r0 = r9
            r11 = r0
        L_0x0061:
            int r8 = r8 + 1
            r0 = r11
            r6 = r0
            goto L_0x0032
        L_0x006a:
            r0 = r5
            r1 = r6
            r0.g = r1
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.jjoe64.graphview.a.b.d():double");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v19, types: [double] */
    /* JADX WARN: Type inference failed for: r6v1, types: [double] */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // com.jjoe64.graphview.a.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final double e() {
        /*
            r5 = this;
            r0 = r5
            java.util.List<E extends com.jjoe64.graphview.a.d> r0 = r0.f33538a
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x000e
            r0 = 0
            return r0
        L_0x000e:
            r0 = r5
            double r0 = r0.h
            boolean r0 = java.lang.Double.isNaN(r0)
            if (r0 != 0) goto L_0x001d
            r0 = r5
            double r0 = r0.h
            return r0
        L_0x001d:
            r0 = r5
            java.util.List<E extends com.jjoe64.graphview.a.d> r0 = r0.f33538a
            r1 = 0
            java.lang.Object r0 = r0.get(r1)
            com.jjoe64.graphview.a.d r0 = (com.jjoe64.graphview.a.d) r0
            double r0 = r0.b()
            r6 = r0
            r0 = 1
            r8 = r0
        L_0x0032:
            r0 = r8
            r1 = r5
            java.util.List<E extends com.jjoe64.graphview.a.d> r1 = r1.f33538a
            int r1 = r1.size()
            if (r0 >= r1) goto L_0x006a
            r0 = r5
            java.util.List<E extends com.jjoe64.graphview.a.d> r0 = r0.f33538a
            r1 = r8
            java.lang.Object r0 = r0.get(r1)
            com.jjoe64.graphview.a.d r0 = (com.jjoe64.graphview.a.d) r0
            double r0 = r0.b()
            r9 = r0
            r0 = r6
            r11 = r0
            r0 = r6
            r1 = r9
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0061
            r0 = r9
            r11 = r0
        L_0x0061:
            int r8 = r8 + 1
            r0 = r11
            r6 = r0
            goto L_0x0032
        L_0x006a:
            r0 = r5
            r1 = r6
            r0.h = r1
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.jjoe64.graphview.a.b.e():double");
    }

    @Override // com.jjoe64.graphview.a.h
    public final String f() {
        return this.f33539b;
    }

    @Override // com.jjoe64.graphview.a.h
    public final int g() {
        return this.f33540c;
    }

    @Override // com.jjoe64.graphview.a.h
    public final boolean h() {
        return this.f33538a.isEmpty();
    }
}
