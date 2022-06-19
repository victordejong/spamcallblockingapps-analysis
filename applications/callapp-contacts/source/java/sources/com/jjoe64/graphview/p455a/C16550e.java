package com.jjoe64.graphview.p455a;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.view.animation.AccelerateInterpolator;
import com.jjoe64.graphview.GraphView;
import com.jjoe64.graphview.p455a.AbstractC16549d;
/* renamed from: com.jjoe64.graphview.a.e */
/* loaded from: classes4-dex2jar.jar:com/jjoe64/graphview/a/e.class */
public final class C16550e<E extends AbstractC16549d> extends AbstractC16546b<E> {

    /* renamed from: f */
    public C16550e<E>.C16552a f58216f;

    /* renamed from: g */
    public boolean f58217g;

    /* renamed from: h */
    private Paint f58218h;

    /* renamed from: i */
    private Paint f58219i;

    /* renamed from: j */
    private Paint f58220j;

    /* renamed from: k */
    private Path f58221k;

    /* renamed from: l */
    private Path f58222l;

    /* renamed from: m */
    private Paint f58223m;

    /* renamed from: o */
    private long f58225o;

    /* renamed from: p */
    private AccelerateInterpolator f58226p;

    /* renamed from: q */
    private int f58227q;

    /* renamed from: n */
    private double f58224n = Double.NaN;

    /* renamed from: r */
    private boolean f58228r = false;

    /* renamed from: com.jjoe64.graphview.a.e$a */
    /* loaded from: classes4-dex2jar.jar:com/jjoe64/graphview/a/e$a.class */
    public final class C16552a {

        /* renamed from: a */
        public int f58229a;

        /* renamed from: b */
        public boolean f58230b;

        /* renamed from: c */
        public boolean f58231c;

        /* renamed from: d */
        public float f58232d;

        /* renamed from: e */
        public int f58233e;

        private C16552a() {
            C16550e.this = r7;
            this.f58229a = 5;
            this.f58230b = false;
            this.f58231c = false;
            this.f58232d = 10.0f;
            this.f58233e = Color.argb(100, 172, 218, 255);
        }
    }

    public C16550e() {
        m7037i();
    }

    public C16550e(E[] eArr) {
        super(eArr);
        m7037i();
    }

    /* renamed from: a */
    private static void m7038a(Canvas canvas, float[] fArr, Paint paint) {
        if (fArr[0] == fArr[2] && fArr[1] == fArr[3]) {
            return;
        }
        canvas.drawLines(fArr, paint);
    }

    /* renamed from: i */
    private void m7037i() {
        this.f58216f = new C16552a();
        Paint paint = new Paint();
        this.f58219i = paint;
        paint.setStrokeCap(Paint.Cap.ROUND);
        this.f58219i.setStyle(Paint.Style.STROKE);
        this.f58220j = new Paint();
        Paint paint2 = new Paint();
        this.f58218h = paint2;
        paint2.setColor(Color.argb(80, 0, 0, 0));
        this.f58218h.setStyle(Paint.Style.FILL);
        this.f58221k = new Path();
        this.f58222l = new Path();
        this.f58226p = new AccelerateInterpolator(2.0f);
    }

    @Override // com.jjoe64.graphview.p455a.AbstractC16546b
    /* renamed from: a */
    public final void mo7035a(GraphView graphView, Canvas canvas, AbstractC16549d abstractC16549d) {
        double m6968b = graphView.f58151c.m6968b(false);
        double m6972a = graphView.f58151c.m6972a(false);
        double m7057d = graphView.m7057d();
        double m6962d = graphView.f58151c.m6962d(false);
        double m6965c = graphView.f58151c.m6965c(false);
        double m7058c = graphView.m7058c();
        float mo7040a = (float) ((((abstractC16549d.mo7040a() - graphView.f58151c.m6972a(false)) * m7057d) / (m6968b - m6972a)) + graphView.m7063a());
        float m7059b = (float) ((graphView.m7059b() + m7058c) - (((abstractC16549d.mo7039b() - graphView.f58151c.m6965c(false)) * m7058c) / (m6962d - m6965c)));
        canvas.drawCircle(mo7040a, m7059b, 30.0f, this.f58218h);
        Paint.Style style = this.f58219i.getStyle();
        this.f58219i.setStyle(Paint.Style.FILL);
        canvas.drawCircle(mo7040a, m7059b, 23.0f, this.f58219i);
        this.f58219i.setStyle(style);
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0495  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x03cb  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0416  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0487  */
    /* JADX WARN: Type inference failed for: r0v202, types: [double] */
    /* JADX WARN: Type inference failed for: r0v204, types: [double] */
    /* JADX WARN: Type inference failed for: r0v337, types: [double] */
    /* JADX WARN: Type inference failed for: r0v343, types: [double] */
    /* JADX WARN: Type inference failed for: r0v348, types: [double] */
    /* JADX WARN: Type inference failed for: r0v358, types: [double] */
    /* JADX WARN: Type inference failed for: r0v370, types: [double] */
    /* JADX WARN: Type inference failed for: r0v377, types: [double] */
    /* JADX WARN: Type inference failed for: r0v385, types: [double] */
    /* JADX WARN: Type inference failed for: r0v388, types: [double] */
    /* JADX WARN: Type inference failed for: r0v391, types: [double] */
    /* JADX WARN: Type inference failed for: r0v394, types: [double] */
    /* JADX WARN: Type inference failed for: r0v88, types: [double] */
    /* JADX WARN: Type inference failed for: r0v90, types: [double] */
    /* JADX WARN: Type inference failed for: r0v97, types: [double] */
    /* JADX WARN: Type inference failed for: r0v99, types: [double] */
    @Override // com.jjoe64.graphview.p455a.AbstractC16559h
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo7031a(com.jjoe64.graphview.GraphView r10, android.graphics.Canvas r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 1775
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.jjoe64.graphview.p455a.C16550e.mo7031a(com.jjoe64.graphview.GraphView, android.graphics.Canvas, boolean):void");
    }
}
