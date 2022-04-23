package com.jjoe64.graphview.a;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.view.animation.AccelerateInterpolator;
import com.jjoe64.graphview.GraphView;
import com.jjoe64.graphview.a.d;
/* loaded from: classes4-dex2jar.jar:com/jjoe64/graphview/a/e.class */
public final class e<E extends d> extends b<E> {
    public e<E>.a f;
    public boolean g;
    private Paint h;
    private Paint i;
    private Paint j;
    private Path k;
    private Path l;
    private Paint m;
    private long o;
    private AccelerateInterpolator p;
    private int q;
    private double n = Double.NaN;
    private boolean r = false;

    /* loaded from: classes4-dex2jar.jar:com/jjoe64/graphview/a/e$a.class */
    public final class a {

        /* renamed from: a  reason: collision with root package name */
        public int f33548a;

        /* renamed from: b  reason: collision with root package name */
        public boolean f33549b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f33550c;

        /* renamed from: d  reason: collision with root package name */
        public float f33551d;
        public int e;

        private a() {
            this.f33548a = 5;
            this.f33549b = false;
            this.f33550c = false;
            this.f33551d = 10.0f;
            this.e = Color.argb(100, 172, 218, 255);
        }
    }

    public e() {
        i();
    }

    public e(E[] eArr) {
        super(eArr);
        i();
    }

    private static void a(Canvas canvas, float[] fArr, Paint paint) {
        if (fArr[0] != fArr[2] || fArr[1] != fArr[3]) {
            canvas.drawLines(fArr, paint);
        }
    }

    private void i() {
        this.f = new a();
        Paint paint = new Paint();
        this.i = paint;
        paint.setStrokeCap(Paint.Cap.ROUND);
        this.i.setStyle(Paint.Style.STROKE);
        this.j = new Paint();
        Paint paint2 = new Paint();
        this.h = paint2;
        paint2.setColor(Color.argb(80, 0, 0, 0));
        this.h.setStyle(Paint.Style.FILL);
        this.k = new Path();
        this.l = new Path();
        this.p = new AccelerateInterpolator(2.0f);
    }

    @Override // com.jjoe64.graphview.a.b
    public final void a(GraphView graphView, Canvas canvas, d dVar) {
        double b2 = graphView.f33523c.b(false);
        double a2 = graphView.f33523c.a(false);
        double d2 = graphView.d();
        double d3 = graphView.f33523c.d(false);
        double c2 = graphView.f33523c.c(false);
        double c3 = graphView.c();
        float a3 = (float) ((((dVar.a() - graphView.f33523c.a(false)) * d2) / (b2 - a2)) + graphView.a());
        float b3 = (float) ((graphView.b() + c3) - (((dVar.b() - graphView.f33523c.c(false)) * c3) / (d3 - c2)));
        canvas.drawCircle(a3, b3, 30.0f, this.h);
        Paint.Style style = this.i.getStyle();
        this.i.setStyle(Paint.Style.FILL);
        canvas.drawCircle(a3, b3, 23.0f, this.i);
        this.i.setStyle(style);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x0495  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x03cb  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0416  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0487  */
    /* JADX WARN: Type inference failed for: r0v90, types: [double] */
    /* JADX WARN: Type inference failed for: r0v99, types: [double] */
    /* JADX WARN: Type inference failed for: r13v8 */
    /* JADX WARN: Type inference failed for: r17v12 */
    /* JADX WARN: Type inference failed for: r17v4, types: [double] */
    /* JADX WARN: Type inference failed for: r17v8 */
    /* JADX WARN: Type inference failed for: r17v9 */
    /* JADX WARN: Type inference failed for: r19v23 */
    /* JADX WARN: Type inference failed for: r19v27 */
    /* JADX WARN: Type inference failed for: r19v30 */
    /* JADX WARN: Type inference failed for: r35v0 */
    /* JADX WARN: Type inference failed for: r35v1 */
    /* JADX WARN: Type inference failed for: r35v12 */
    /* JADX WARN: Type inference failed for: r35v13 */
    /* JADX WARN: Type inference failed for: r35v14 */
    /* JADX WARN: Type inference failed for: r35v2 */
    /* JADX WARN: Type inference failed for: r35v4, types: [double] */
    /* JADX WARN: Type inference failed for: r35v5 */
    /* JADX WARN: Type inference failed for: r35v6, types: [double] */
    /* JADX WARN: Type inference failed for: r35v7, types: [double] */
    /* JADX WARN: Type inference failed for: r35v8 */
    /* JADX WARN: Type inference failed for: r35v9 */
    /* JADX WARN: Type inference failed for: r43v0 */
    /* JADX WARN: Type inference failed for: r43v1 */
    /* JADX WARN: Type inference failed for: r43v2 */
    /* JADX WARN: Type inference failed for: r43v5, types: [double] */
    /* JADX WARN: Type inference failed for: r43v8 */
    /* JADX WARN: Type inference failed for: r48v0, types: [double] */
    /* JADX WARN: Type inference failed for: r58v4 */
    /* JADX WARN: Unknown variable types count: 8 */
    @Override // com.jjoe64.graphview.a.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(com.jjoe64.graphview.GraphView r10, android.graphics.Canvas r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 1775
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.jjoe64.graphview.a.e.a(com.jjoe64.graphview.GraphView, android.graphics.Canvas, boolean):void");
    }
}
