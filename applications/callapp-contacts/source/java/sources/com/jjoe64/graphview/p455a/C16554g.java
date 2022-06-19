package com.jjoe64.graphview.p455a;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import com.jjoe64.graphview.GraphView;
import com.jjoe64.graphview.p455a.AbstractC16549d;
import java.util.Iterator;
/* renamed from: com.jjoe64.graphview.a.g */
/* loaded from: classes4-dex2jar.jar:com/jjoe64/graphview/a/g.class */
public final class C16554g<E extends AbstractC16549d> extends AbstractC16546b<E> {

    /* renamed from: f */
    private C16554g<E>.C16558c f58235f;

    /* renamed from: g */
    private Paint f58236g;

    /* renamed from: h */
    private AbstractC16556a f58237h;

    /* renamed from: com.jjoe64.graphview.a.g$a */
    /* loaded from: classes4-dex2jar.jar:com/jjoe64/graphview/a/g$a.class */
    public interface AbstractC16556a {
    }

    /* renamed from: com.jjoe64.graphview.a.g$b */
    /* loaded from: classes4-dex2jar.jar:com/jjoe64/graphview/a/g$b.class */
    public static final class EnumC16557b extends Enum<EnumC16557b> {

        /* renamed from: a */
        public static final int f58238a = 1;

        /* renamed from: b */
        public static final int f58239b = 2;

        /* renamed from: c */
        public static final int f58240c = 3;

        /* renamed from: d */
        private static final /* synthetic */ int[] f58241d = {1, 2, 3};

        private EnumC16557b(String str, int i) {
            super(str, i);
        }
    }

    /* renamed from: com.jjoe64.graphview.a.g$c */
    /* loaded from: classes4-dex2jar.jar:com/jjoe64/graphview/a/g$c.class */
    public final class C16558c {

        /* renamed from: a */
        float f58242a;

        /* renamed from: b */
        int f58243b;

        private C16558c() {
            C16554g.this = r4;
        }
    }

    public C16554g() {
        m7034i();
    }

    public C16554g(E[] eArr) {
        super(eArr);
        m7034i();
    }

    /* renamed from: a */
    private void m7036a(int i) {
        this.f58235f.f58243b = i;
    }

    /* renamed from: i */
    private void m7034i() {
        C16554g<E>.C16558c c16558c = new C16558c();
        this.f58235f = c16558c;
        c16558c.f58242a = 20.0f;
        Paint paint = new Paint();
        this.f58236g = paint;
        paint.setStrokeCap(Paint.Cap.ROUND);
        m7036a(EnumC16557b.f58238a);
    }

    @Override // com.jjoe64.graphview.p455a.AbstractC16546b
    /* renamed from: a */
    public final void mo7035a(GraphView graphView, Canvas canvas, AbstractC16549d abstractC16549d) {
    }

    /* JADX WARN: Type inference failed for: r0v136, types: [double] */
    /* JADX WARN: Type inference failed for: r0v139, types: [double] */
    /* JADX WARN: Type inference failed for: r0v142, types: [double] */
    /* JADX WARN: Type inference failed for: r0v145, types: [double] */
    @Override // com.jjoe64.graphview.p455a.AbstractC16559h
    /* renamed from: a */
    public final void mo7031a(GraphView graphView, Canvas canvas, boolean z) {
        char c;
        char c2;
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
        Iterator<E> a = mo7033a(m6972a, m6968b);
        this.f58236g.setColor(this.f58200c);
        float m7058c = graphView.m7058c();
        float m7057d = graphView.m7057d();
        float m7063a = graphView.m7063a();
        float m7059b = graphView.m7059b();
        while (a.hasNext()) {
            E next = a.next();
            double mo7039b = (next.mo7039b() - c) / (c2 - c);
            double d = m7058c;
            double d2 = mo7039b * d;
            double mo7040a = (next.mo7040a() - m6972a) / (m6968b - m6972a);
            double d3 = m7057d;
            double d4 = mo7040a * d3;
            boolean z2 = d4 > d3;
            if (d2 < 0.0d) {
                z2 = true;
            }
            if (d2 > d) {
                z2 = true;
            }
            if (d4 < 0.0d) {
                z2 = true;
            }
            float f = ((float) d4) + 1.0f + m7063a;
            float f2 = ((float) (m7059b - d2)) + m7058c;
            m7042a(f, f2, (float) next);
            if (!z2 && this.f58237h == null) {
                if (this.f58235f.f58243b == EnumC16557b.f58238a) {
                    canvas.drawCircle(f, f2, this.f58235f.f58242a, this.f58236g);
                } else if (this.f58235f.f58243b == EnumC16557b.f58240c) {
                    canvas.drawRect(f - this.f58235f.f58242a, f2 - this.f58235f.f58242a, f + this.f58235f.f58242a, f2 + this.f58235f.f58242a, this.f58236g);
                } else if (this.f58235f.f58243b == EnumC16557b.f58239b) {
                    int i = (int) (this.f58235f.f58242a + f);
                    double d5 = f2;
                    Point[] pointArr = {new Point((int) f, (int) (f2 - this.f58235f.f58242a)), new Point(i, (int) ((this.f58235f.f58242a * 0.67d) + d5)), new Point((int) (f - this.f58235f.f58242a), (int) (d5 + (this.f58235f.f58242a * 0.67d)))};
                    Paint paint = this.f58236g;
                    canvas.drawVertices(Canvas.VertexMode.TRIANGLES, 8, new float[]{pointArr[0].x, pointArr[0].y, pointArr[1].x, pointArr[1].y, pointArr[2].x, pointArr[2].y, pointArr[0].x, pointArr[0].y}, 0, null, 0, null, 0, null, 0, 0, paint);
                    Path path = new Path();
                    path.moveTo(pointArr[0].x, pointArr[0].y);
                    path.lineTo(pointArr[1].x, pointArr[1].y);
                    path.lineTo(pointArr[2].x, pointArr[2].y);
                    canvas.drawPath(path, paint);
                }
            }
        }
    }
}
