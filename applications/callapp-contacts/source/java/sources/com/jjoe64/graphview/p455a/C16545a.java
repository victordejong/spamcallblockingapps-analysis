package com.jjoe64.graphview.p455a;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.animation.AccelerateInterpolator;
import androidx.core.view.C0926v;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.jjoe64.graphview.AbstractC16576i;
import com.jjoe64.graphview.C16573g;
import com.jjoe64.graphview.GraphView;
import com.jjoe64.graphview.p455a.AbstractC16549d;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeSet;
/* renamed from: com.jjoe64.graphview.a.a */
/* loaded from: classes4-dex2jar.jar:com/jjoe64/graphview/a/a.class */
public final class C16545a<E extends AbstractC16549d> extends AbstractC16546b<E> {

    /* renamed from: f */
    private Paint f58184f;

    /* renamed from: g */
    private Paint f58185g;

    /* renamed from: h */
    private int f58186h;

    /* renamed from: i */
    private double f58187i;

    /* renamed from: j */
    private AbstractC16576i<E> f58188j;

    /* renamed from: k */
    private boolean f58189k;

    /* renamed from: l */
    private int f58190l;

    /* renamed from: m */
    private float f58191m;

    /* renamed from: n */
    private Map<C16573g, E> f58192n;

    /* renamed from: o */
    private boolean f58193o;

    /* renamed from: p */
    private double f58194p;

    /* renamed from: q */
    private long f58195q;

    /* renamed from: r */
    private AccelerateInterpolator f58196r;

    /* renamed from: s */
    private int f58197s;

    public C16545a() {
        this.f58192n = new HashMap();
        this.f58194p = Double.NaN;
        this.f58184f = new Paint();
    }

    public C16545a(E[] eArr) {
        super(eArr);
        this.f58192n = new HashMap();
        this.f58194p = Double.NaN;
        this.f58184f = new Paint();
        this.f58196r = new AccelerateInterpolator(2.0f);
    }

    @Override // com.jjoe64.graphview.p455a.AbstractC16546b
    /* renamed from: a */
    protected final E mo7043a(float f, float f2) {
        for (Map.Entry<C16573g, E> entry : this.f58192n.entrySet()) {
            double d = f;
            if (d >= entry.getKey().f58316a && d <= entry.getKey().f58317b) {
                double d2 = f2;
                if (d2 >= entry.getKey().f58318c && d2 <= entry.getKey().f58319d) {
                    return entry.getValue();
                }
            }
        }
        return null;
    }

    @Override // com.jjoe64.graphview.p455a.AbstractC16546b
    /* renamed from: a */
    public final void mo7045a() {
        this.f58192n.clear();
    }

    @Override // com.jjoe64.graphview.p455a.AbstractC16546b
    /* renamed from: a */
    public final void mo7035a(GraphView graphView, Canvas canvas, AbstractC16549d abstractC16549d) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v102, types: [double] */
    /* JADX WARN: Type inference failed for: r0v114, types: [double] */
    /* JADX WARN: Type inference failed for: r0v133, types: [double] */
    /* JADX WARN: Type inference failed for: r0v138, types: [double] */
    /* JADX WARN: Type inference failed for: r0v141, types: [double] */
    /* JADX WARN: Type inference failed for: r0v155, types: [double] */
    /* JADX WARN: Type inference failed for: r0v177, types: [double] */
    /* JADX WARN: Type inference failed for: r0v212 */
    /* JADX WARN: Type inference failed for: r0v213 */
    /* JADX WARN: Type inference failed for: r0v223 */
    /* JADX WARN: Type inference failed for: r0v227, types: [double] */
    /* JADX WARN: Type inference failed for: r0v27, types: [double] */
    /* JADX WARN: Type inference failed for: r0v302, types: [double] */
    /* JADX WARN: Type inference failed for: r0v305, types: [double] */
    /* JADX WARN: Type inference failed for: r0v308, types: [double] */
    /* JADX WARN: Type inference failed for: r0v311, types: [double] */
    /* JADX WARN: Type inference failed for: r0v95, types: [double] */
    @Override // com.jjoe64.graphview.p455a.AbstractC16559h
    /* renamed from: a */
    public final void mo7031a(GraphView graphView, Canvas canvas, boolean z) {
        char c;
        char c2;
        int i;
        char c3;
        char c4;
        this.f58184f.setTextAlign(Paint.Align.CENTER);
        if (this.f58191m == BitmapDescriptorFactory.HUE_RED) {
            this.f58191m = graphView.f58150b.m7022a();
        }
        this.f58184f.setTextSize(this.f58191m);
        mo7045a();
        double m6968b = graphView.f58151c.m6968b(false);
        double m6972a = graphView.f58151c.m6972a(false);
        if (z) {
            c2 = graphView.m7055f().m6987c();
            c = graphView.m7055f().m6988b();
        } else {
            c2 = graphView.f58151c.m6962d(false);
            c = graphView.f58151c.m6965c(false);
        }
        TreeSet treeSet = new TreeSet();
        Iterator<AbstractC16559h> it2 = graphView.f58149a.iterator();
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            i = i4;
            if (!it2.hasNext()) {
                break;
            }
            AbstractC16559h next = it2.next();
            char c5 = c2;
            char c6 = c;
            int i5 = i2;
            int i6 = i3;
            int i7 = i;
            if (next instanceof C16545a) {
                boolean z2 = next == this;
                if (z2) {
                    i = i3;
                }
                int i8 = i3 + 1;
                Iterator<E> mo7033a = next.mo7033a(m6972a, m6968b);
                if (mo7033a.hasNext()) {
                    treeSet.add(Double.valueOf(mo7033a.next().mo7040a()));
                    c5 = c2;
                    c6 = c;
                    boolean z3 = z2;
                    int i9 = i2;
                    i7 = i;
                    if (z2) {
                        i9 = i2 + 1;
                        i7 = i;
                        z3 = z2;
                        c6 = c;
                        c5 = c2;
                    }
                    while (mo7033a.hasNext()) {
                        treeSet.add(Double.valueOf(mo7033a.next().mo7040a()));
                        if (z3) {
                            i9++;
                            i7 = i7;
                            z3 = z3;
                            c6 = c6;
                            c5 = c5;
                        }
                    }
                    i6 = i8;
                    i5 = i9;
                } else {
                    i7 = i;
                    i6 = i8;
                    i5 = i2;
                    c6 = c;
                    c5 = c2;
                }
            }
            c2 = c5;
            c = c6;
            i2 = i5;
            i3 = i6;
            i4 = i7;
        }
        if (i2 == 0) {
            return;
        }
        char c7 = this.f58187i;
        if (c7 <= 0.0d) {
            Double d = null;
            Iterator it3 = treeSet.iterator();
            ?? r0 = 0;
            while (true) {
                char c8 = r0;
                c7 = c8;
                if (!it3.hasNext()) {
                    break;
                }
                Double d2 = (Double) it3.next();
                char c9 = c8;
                if (d != null) {
                    ?? abs = Math.abs(d2.doubleValue() - d.doubleValue());
                    if (c8 != 0.0d) {
                        c9 = c8;
                        if (abs > 0.0d) {
                            c9 = c8;
                            if (abs >= c8) {
                            }
                        }
                    }
                    c9 = abs;
                }
                d = d2;
                r0 = c9;
            }
        }
        int round = c7 == 0.0d ? 1 : ((int) Math.round((m6968b - m6972a) / c7)) + 1;
        Iterator<E> a = mo7033a(m6972a, m6968b);
        int m7057d = round == 1 ? graphView.m7057d() : graphView.m7057d() / (round - 1);
        double min = Math.min((this.f58186h * m7057d) / 100, m7057d * 0.98f);
        double d3 = (m7057d - min) / i3;
        double d4 = m7057d / 2;
        double d5 = c2 - c;
        double d6 = m6968b - m6972a;
        double m7058c = graphView.m7058c();
        double m7057d2 = graphView.m7057d();
        double m7063a = graphView.m7063a();
        double m7059b = graphView.m7059b();
        char c10 = c;
        while (a.hasNext()) {
            E next2 = a.next();
            double mo7039b = (next2.mo7039b() - c10) / d5;
            double d7 = (0 - c10) / d5;
            double mo7040a = next2.mo7040a();
            double d8 = (mo7040a - m6972a) / d6;
            AbstractC16576i<E> abstractC16576i = this.f58188j;
            if (abstractC16576i != null) {
                this.f58184f.setColor(abstractC16576i.m6978a());
            } else {
                this.f58184f.setColor(this.f58200c);
            }
            double d9 = (((d8 * m7057d2) + m7063a) - d4) + (min / 2.0d) + (i * d3);
            char c11 = (m7059b - (mo7039b * m7058c)) + m7058c;
            ?? r02 = ((m7059b - (d7 * m7058c)) + m7058c) - (graphView.f58150b.m7003i() ? 4 : 1);
            boolean z4 = c11 > r02;
            if (this.f58193o && (Double.isNaN(this.f58194p) || this.f58194p < mo7040a)) {
                long currentTimeMillis = System.currentTimeMillis();
                if (this.f58195q == 0) {
                    this.f58195q = currentTimeMillis;
                    this.f58197s = 0;
                } else {
                    int i10 = this.f58197s;
                    if (i10 < 15) {
                        this.f58195q = currentTimeMillis;
                        this.f58197s = i10 + 1;
                    }
                }
                float f = ((float) (currentTimeMillis - this.f58195q)) / 333.0f;
                float interpolation = this.f58196r.getInterpolation(f);
                if (f <= 1.0d) {
                    c11 = r02 - ((r02 - c11) * interpolation);
                    C0926v.m44101d(graphView);
                } else {
                    this.f58194p = mo7040a;
                }
            }
            if (z4) {
                c3 = c11;
                c11 = r02 + (graphView.f58150b.m7003i() ? 4 : 1);
            } else {
                c3 = r02;
            }
            double max = Math.max(d9, m7063a);
            double min2 = Math.min(d9 + d3, m7063a + m7057d2);
            ?? r03 = m7059b + m7058c;
            double min3 = Math.min(c3, (double) r03);
            double max2 = Math.max(c11, m7059b);
            this.f58192n.put(new C16573g(max, max2, min2, min3), next2);
            Paint paint = this.f58185g;
            if (paint == null) {
                paint = this.f58184f;
            }
            canvas.drawRect((float) max, (float) max2, (float) min2, (float) min3, paint);
            if (this.f58189k) {
                if (z4) {
                    c4 = min3 + this.f58191m + 4.0d;
                    if (c4 > r03) {
                        c4 = r03;
                    }
                } else {
                    ?? r04 = max2 - 4.0d;
                    c4 = r04;
                    if (r04 <= m7059b) {
                        c4 = r04 + m7059b + 4.0d;
                    }
                }
                this.f58184f.setColor(this.f58190l);
                canvas.drawText(graphView.f58150b.f58249c.mo6982a(next2.mo7039b(), false), ((float) (max + min2)) / 2.0f, c4, this.f58184f);
            }
        }
    }
}
