package com.jjoe64.graphview.a;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import com.jjoe64.graphview.GraphView;
import com.jjoe64.graphview.a.d;
import java.util.Iterator;
/* loaded from: classes4-dex2jar.jar:com/jjoe64/graphview/a/g.class */
public final class g<E extends d> extends com.jjoe64.graphview.a.b<E> {
    private g<E>.c f;
    private Paint g;
    private a h;

    /* loaded from: classes4-dex2jar.jar:com/jjoe64/graphview/a/g$a.class */
    public interface a {
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* loaded from: classes4-dex2jar.jar:com/jjoe64/graphview/a/g$b.class */
    public static final class b extends Enum<b> {

        /* renamed from: a  reason: collision with root package name */
        public static final int f33552a = 1;

        /* renamed from: b  reason: collision with root package name */
        public static final int f33553b = 2;

        /* renamed from: c  reason: collision with root package name */
        public static final int f33554c = 3;

        /* renamed from: d  reason: collision with root package name */
        private static final /* synthetic */ int[] f33555d = {1, 2, 3};

        private b(String str, int i) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/jjoe64/graphview/a/g$c.class */
    public final class c {

        /* renamed from: a  reason: collision with root package name */
        float f33556a;

        /* renamed from: b  reason: collision with root package name */
        int f33557b;

        private c() {
        }
    }

    public g() {
        i();
    }

    public g(E[] eArr) {
        super(eArr);
        i();
    }

    private void a(int i) {
        this.f.f33557b = i;
    }

    private void i() {
        g<E>.c cVar = new c();
        this.f = cVar;
        cVar.f33556a = 20.0f;
        Paint paint = new Paint();
        this.g = paint;
        paint.setStrokeCap(Paint.Cap.ROUND);
        a(b.f33552a);
    }

    @Override // com.jjoe64.graphview.a.b
    public final void a(GraphView graphView, Canvas canvas, d dVar) {
    }

    @Override // com.jjoe64.graphview.a.h
    public final void a(GraphView graphView, Canvas canvas, boolean z) {
        double d2;
        double d3;
        a();
        double b2 = graphView.f33523c.b(false);
        double a2 = graphView.f33523c.a(false);
        if (z) {
            d3 = graphView.f().c();
            d2 = graphView.f().b();
        } else {
            d3 = graphView.f33523c.d(false);
            d2 = graphView.f33523c.c(false);
        }
        Iterator<E> a3 = a(a2, b2);
        this.g.setColor(this.f33540c);
        float c2 = graphView.c();
        float d4 = graphView.d();
        float a4 = graphView.a();
        float b3 = graphView.b();
        while (a3.hasNext()) {
            E next = a3.next();
            double b4 = (next.b() - d2) / (d3 - d2);
            double d5 = c2;
            double d6 = b4 * d5;
            double a5 = (next.a() - a2) / (b2 - a2);
            double d7 = d4;
            double d8 = a5 * d7;
            boolean z2 = d8 > d7;
            if (d6 < 0.0d) {
                z2 = true;
            }
            if (d6 > d5) {
                z2 = true;
            }
            if (d8 < 0.0d) {
                z2 = true;
            }
            float f = ((float) d8) + 1.0f + a4;
            float f2 = ((float) (b3 - d6)) + c2;
            a(f, f2, (float) next);
            if (!z2 && this.h == null) {
                if (this.f.f33557b == b.f33552a) {
                    canvas.drawCircle(f, f2, this.f.f33556a, this.g);
                } else if (this.f.f33557b == b.f33554c) {
                    canvas.drawRect(f - this.f.f33556a, f2 - this.f.f33556a, f + this.f.f33556a, f2 + this.f.f33556a, this.g);
                } else if (this.f.f33557b == b.f33553b) {
                    int i = (int) (this.f.f33556a + f);
                    double d9 = f2;
                    Point[] pointArr = {new Point((int) f, (int) (f2 - this.f.f33556a)), new Point(i, (int) ((this.f.f33556a * 0.67d) + d9)), new Point((int) (f - this.f.f33556a), (int) (d9 + (this.f.f33556a * 0.67d)))};
                    Paint paint = this.g;
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
