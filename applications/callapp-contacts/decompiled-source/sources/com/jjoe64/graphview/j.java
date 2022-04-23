package com.jjoe64.graphview;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.widget.OverScroller;
import androidx.core.view.v;
import androidx.core.widget.d;
/* loaded from: classes4-dex2jar.jar:com/jjoe64/graphview/j.class */
public final class j {
    private boolean A;
    private boolean B;
    private boolean D;
    private Integer E;
    private Paint F;

    /* renamed from: c  reason: collision with root package name */
    protected boolean f33601c;
    final GraphView e;
    protected boolean j;
    boolean k;
    boolean l;
    boolean m;
    protected GestureDetector n;
    protected ScaleGestureDetector o;
    protected OverScroller p;
    d q;
    d r;
    d s;
    d t;
    protected b w;
    private final ScaleGestureDetector.OnScaleGestureListener x;
    private final GestureDetector.SimpleOnGestureListener y;

    /* renamed from: a  reason: collision with root package name */
    protected double f33599a = Double.NaN;

    /* renamed from: b  reason: collision with root package name */
    protected double f33600b = Double.NaN;

    /* renamed from: d  reason: collision with root package name */
    g f33602d = new g(Double.NaN, Double.NaN, Double.NaN, Double.NaN);
    protected g f = new g();
    protected double g = 0.0d;
    protected double h = 0.0d;
    protected g i = new g();
    protected a u = a.INITIAL;
    protected a v = a.INITIAL;
    private int C = 0;
    private Paint z = new Paint();

    /* loaded from: classes4-dex2jar.jar:com/jjoe64/graphview/j$a.class */
    public enum a {
        INITIAL,
        AUTO_ADJUSTED,
        FIX
    }

    /* loaded from: classes4-dex2jar.jar:com/jjoe64/graphview/j$b.class */
    public interface b {

        /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
        /* loaded from: classes4-dex2jar.jar:com/jjoe64/graphview/j$b$a.class */
        public static final class a extends Enum<a> {

            /* renamed from: a  reason: collision with root package name */
            public static final int f33605a = 1;

            /* renamed from: b  reason: collision with root package name */
            public static final int f33606b = 2;

            /* renamed from: c  reason: collision with root package name */
            private static final /* synthetic */ int[] f33607c = {1, 2};

            private a(String str, int i) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(GraphView graphView) {
        ScaleGestureDetector.OnScaleGestureListener onScaleGestureListener = new ScaleGestureDetector.OnScaleGestureListener() { // from class: com.jjoe64.graphview.j.1
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v132, types: [double] */
            /* JADX WARN: Type inference failed for: r0v146, types: [double] */
            /* JADX WARN: Type inference failed for: r0v26, types: [double] */
            /* JADX WARN: Type inference failed for: r0v3, types: [double] */
            /* JADX WARN: Type inference failed for: r0v40, types: [double] */
            /* JADX WARN: Type inference failed for: r0v82, types: [double] */
            /* JADX WARN: Type inference failed for: r10v10, types: [double] */
            /* JADX WARN: Type inference failed for: r10v13 */
            /* JADX WARN: Type inference failed for: r10v14 */
            /* JADX WARN: Type inference failed for: r10v3 */
            /* JADX WARN: Type inference failed for: r10v4, types: [double] */
            /* JADX WARN: Type inference failed for: r10v9 */
            /* JADX WARN: Type inference failed for: r12v0 */
            /* JADX WARN: Type inference failed for: r12v1, types: [double] */
            /* JADX WARN: Type inference failed for: r12v10 */
            /* JADX WARN: Type inference failed for: r12v13 */
            /* JADX WARN: Type inference failed for: r12v15 */
            /* JADX WARN: Type inference failed for: r12v16 */
            /* JADX WARN: Type inference failed for: r12v17 */
            /* JADX WARN: Type inference failed for: r12v18 */
            /* JADX WARN: Type inference failed for: r12v2 */
            /* JADX WARN: Type inference failed for: r12v3, types: [double] */
            /* JADX WARN: Type inference failed for: r12v4 */
            /* JADX WARN: Type inference failed for: r12v5, types: [double] */
            /* JADX WARN: Type inference failed for: r12v7 */
            /* JADX WARN: Type inference failed for: r12v8, types: [double] */
            /* JADX WARN: Unknown variable types count: 12 */
            @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final boolean onScale(android.view.ScaleGestureDetector r9) {
                /*
                    Method dump skipped, instructions count: 1045
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.jjoe64.graphview.j.AnonymousClass1.onScale(android.view.ScaleGestureDetector):boolean");
            }

            @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
            public final boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
                boolean z = false;
                if (j.this.e.e) {
                    return false;
                }
                if (j.this.l) {
                    z = true;
                    j.this.j = true;
                }
                return z;
            }

            @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
            public final void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
                j.this.j = false;
                if (j.this.w != null) {
                    j.this.a(false);
                    j.this.b(false);
                    int i = b.a.f33606b;
                }
                v.d(j.this.e);
            }
        };
        this.x = onScaleGestureListener;
        GestureDetector.SimpleOnGestureListener simpleOnGestureListener = new GestureDetector.SimpleOnGestureListener() { // from class: com.jjoe64.graphview.j.2
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public final boolean onDown(MotionEvent motionEvent) {
                if (j.this.e.e) {
                    return true;
                }
                if (!j.this.k || j.this.j) {
                    return false;
                }
                j jVar = j.this;
                jVar.s.a();
                jVar.t.a();
                jVar.q.a();
                jVar.r.a();
                j.this.p.forceFinished(true);
                v.d(j.this.e);
                return true;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public final boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                return true;
            }

            /* JADX WARN: Code restructure failed: missing block: B:68:0x037e, code lost:
                if (r18 < 0.0d) goto L_0x03a1;
             */
            /* JADX WARN: Code restructure failed: missing block: B:70:0x039e, code lost:
                if (r18 > 0.0d) goto L_0x03a1;
             */
            /* JADX WARN: Code restructure failed: missing block: B:71:0x03a1, code lost:
                r20 = r0 - r18;
             */
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Removed duplicated region for block: B:60:0x0338  */
            /* JADX WARN: Type inference failed for: r0v15, types: [double] */
            /* JADX WARN: Type inference failed for: r0v219, types: [double] */
            /* JADX WARN: Type inference failed for: r0v229, types: [double] */
            /* JADX WARN: Type inference failed for: r0v23, types: [double] */
            /* JADX WARN: Type inference failed for: r0v27, types: [double] */
            /* JADX WARN: Type inference failed for: r0v37, types: [double] */
            /* JADX WARN: Type inference failed for: r0v49, types: [double] */
            /* JADX WARN: Type inference failed for: r0v59, types: [double] */
            /* JADX WARN: Type inference failed for: r18v2 */
            /* JADX WARN: Type inference failed for: r18v3, types: [double] */
            /* JADX WARN: Type inference failed for: r18v8 */
            /* JADX WARN: Type inference failed for: r20v0 */
            /* JADX WARN: Type inference failed for: r20v1, types: [double] */
            /* JADX WARN: Type inference failed for: r20v10 */
            /* JADX WARN: Type inference failed for: r20v12 */
            /* JADX WARN: Type inference failed for: r20v15 */
            /* JADX WARN: Type inference failed for: r20v16 */
            /* JADX WARN: Type inference failed for: r20v17 */
            /* JADX WARN: Type inference failed for: r20v2 */
            /* JADX WARN: Type inference failed for: r20v3, types: [double] */
            /* JADX WARN: Type inference failed for: r20v5 */
            /* JADX WARN: Type inference failed for: r20v6 */
            /* JADX WARN: Type inference failed for: r20v7, types: [double] */
            /* JADX WARN: Type inference failed for: r22v0 */
            /* JADX WARN: Type inference failed for: r22v1, types: [double] */
            /* JADX WARN: Type inference failed for: r22v5 */
            /* JADX WARN: Type inference failed for: r26v1 */
            /* JADX WARN: Type inference failed for: r26v2, types: [double] */
            /* JADX WARN: Type inference failed for: r26v4 */
            /* JADX WARN: Unknown variable types count: 14 */
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final boolean onScroll(android.view.MotionEvent r8, android.view.MotionEvent r9, float r10, float r11) {
                /*
                    Method dump skipped, instructions count: 1265
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.jjoe64.graphview.j.AnonymousClass2.onScroll(android.view.MotionEvent, android.view.MotionEvent, float, float):boolean");
            }
        };
        this.y = simpleOnGestureListener;
        this.p = new OverScroller(graphView.getContext());
        this.q = new d(graphView.getContext());
        this.r = new d(graphView.getContext());
        this.s = new d(graphView.getContext());
        this.t = new d(graphView.getContext());
        this.n = new GestureDetector(graphView.getContext(), simpleOnGestureListener);
        this.o = new ScaleGestureDetector(graphView.getContext(), onScaleGestureListener);
        this.e = graphView;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final double a() {
        if (!this.A || this.e.f33522b.g) {
            return 0.0d;
        }
        if (Double.isNaN(this.f33600b)) {
            this.f33600b = a(false);
        }
        return this.f33600b;
    }

    public final double a(boolean z) {
        return z ? this.i.f33587a : this.f.f33587a;
    }

    public final void a(double d2) {
        this.f.f33589c = d2;
    }

    public final void a(Canvas canvas) {
        int i = this.C;
        if (i != 0) {
            this.z.setColor(i);
            canvas.drawRect(this.e.a(), this.e.b(), this.e.a() + this.e.d(), this.e.b() + this.e.c(), this.z);
        }
        if (this.D) {
            Paint paint = this.F;
            if (paint == null) {
                paint = this.z;
                Integer num = this.E;
                paint.setColor(num != null ? num.intValue() : this.e.f33522b.h());
            }
            canvas.drawLine(this.e.a(), this.e.b(), this.e.a(), this.e.b() + this.e.c(), paint);
            canvas.drawLine(this.e.a(), this.e.b() + this.e.c(), this.e.a() + this.e.d(), this.e.b() + this.e.c(), paint);
            if (this.e.f33524d != null) {
                canvas.drawLine(this.e.a() + this.e.d(), this.e.b(), this.e.a() + this.e.d(), this.e.b() + this.e.c(), paint);
            }
        }
    }

    public final void a(a aVar) {
        this.u = aVar;
    }

    public final boolean a(MotionEvent motionEvent) {
        boolean onTouchEvent = this.o.onTouchEvent(motionEvent) | this.n.onTouchEvent(motionEvent);
        boolean z = onTouchEvent;
        if (this.e.e) {
            boolean z2 = onTouchEvent;
            if (motionEvent.getAction() == 0) {
                this.e.f.a(motionEvent);
                z2 = onTouchEvent | true;
            }
            boolean z3 = z2;
            if (motionEvent.getAction() == 2) {
                this.e.f.b(motionEvent);
                z3 = z2 | true;
            }
            z = z3;
            if (motionEvent.getAction() == 1) {
                z = z3 | this.e.f.a();
            }
        }
        return z;
    }

    public final double b(boolean z) {
        return z ? this.i.f33588b : this.f.f33588b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v68, types: [double] */
    /* JADX WARN: Type inference failed for: r0v85, types: [double] */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1, types: [double] */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r17v3, types: [double] */
    /* JADX WARN: Type inference failed for: r17v4 */
    /* JADX WARN: Type inference failed for: r17v6 */
    /* JADX WARN: Unknown variable types count: 4 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b() {
        /*
            Method dump skipped, instructions count: 887
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.jjoe64.graphview.j.b():void");
    }

    public final void b(double d2) {
        this.f.f33590d = d2;
    }

    public final void b(a aVar) {
        this.v = aVar;
    }

    public final double c(boolean z) {
        return z ? this.i.f33590d : this.f.f33590d;
    }

    public final void c() {
        this.A = true;
        this.u = a.FIX;
    }

    public final void c(double d2) {
        this.f.f33588b = d2;
    }

    public final double d(boolean z) {
        return z ? this.i.f33589c : this.f.f33589c;
    }

    public final void d() {
        this.B = true;
        this.v = a.FIX;
    }

    public final void d(double d2) {
        this.f.f33587a = d2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final double e() {
        if (!this.B || this.e.f33522b.f) {
            return 0.0d;
        }
        if (Double.isNaN(this.f33599a)) {
            this.f33599a = c(false);
        }
        return this.f33599a;
    }
}
