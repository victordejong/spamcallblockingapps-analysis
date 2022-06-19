package com.jjoe64.graphview;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Build;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.widget.OverScroller;
import androidx.core.view.C0926v;
import androidx.core.widget.C0955d;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.jjoe64.graphview.p455a.AbstractC16549d;
import com.jjoe64.graphview.p455a.AbstractC16559h;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.jjoe64.graphview.j */
/* loaded from: classes4-dex2jar.jar:com/jjoe64/graphview/j.class */
public final class C16577j {

    /* renamed from: A */
    private boolean f58336A;

    /* renamed from: B */
    private boolean f58337B;

    /* renamed from: D */
    private boolean f58339D;

    /* renamed from: E */
    private Integer f58340E;

    /* renamed from: F */
    private Paint f58341F;

    /* renamed from: c */
    protected boolean f58344c;

    /* renamed from: e */
    final GraphView f58346e;

    /* renamed from: j */
    protected boolean f58351j;

    /* renamed from: k */
    boolean f58352k;

    /* renamed from: l */
    boolean f58353l;

    /* renamed from: m */
    boolean f58354m;

    /* renamed from: n */
    protected GestureDetector f58355n;

    /* renamed from: o */
    protected ScaleGestureDetector f58356o;

    /* renamed from: p */
    protected OverScroller f58357p;

    /* renamed from: q */
    C0955d f58358q;

    /* renamed from: r */
    C0955d f58359r;

    /* renamed from: s */
    C0955d f58360s;

    /* renamed from: t */
    C0955d f58361t;

    /* renamed from: w */
    protected AbstractC16581b f58364w;

    /* renamed from: x */
    private final ScaleGestureDetector.OnScaleGestureListener f58365x;

    /* renamed from: y */
    private final GestureDetector.SimpleOnGestureListener f58366y;

    /* renamed from: a */
    protected double f58342a = Double.NaN;

    /* renamed from: b */
    protected double f58343b = Double.NaN;

    /* renamed from: d */
    C16573g f58345d = new C16573g(Double.NaN, Double.NaN, Double.NaN, Double.NaN);

    /* renamed from: f */
    protected C16573g f58347f = new C16573g();

    /* renamed from: g */
    protected double f58348g = 0.0d;

    /* renamed from: h */
    protected double f58349h = 0.0d;

    /* renamed from: i */
    protected C16573g f58350i = new C16573g();

    /* renamed from: u */
    protected EnumC16580a f58362u = EnumC16580a.INITIAL;

    /* renamed from: v */
    protected EnumC16580a f58363v = EnumC16580a.INITIAL;

    /* renamed from: C */
    private int f58338C = 0;

    /* renamed from: z */
    private Paint f58367z = new Paint();

    /* renamed from: com.jjoe64.graphview.j$a */
    /* loaded from: classes4-dex2jar.jar:com/jjoe64/graphview/j$a.class */
    public enum EnumC16580a {
        INITIAL,
        AUTO_ADJUSTED,
        FIX
    }

    /* renamed from: com.jjoe64.graphview.j$b */
    /* loaded from: classes4-dex2jar.jar:com/jjoe64/graphview/j$b.class */
    public interface AbstractC16581b {

        /* renamed from: com.jjoe64.graphview.j$b$a */
        /* loaded from: classes4-dex2jar.jar:com/jjoe64/graphview/j$b$a.class */
        public static final class EnumC16582a extends Enum<EnumC16582a> {

            /* renamed from: a */
            public static final int f58370a = 1;

            /* renamed from: b */
            public static final int f58371b = 2;

            /* renamed from: c */
            private static final /* synthetic */ int[] f58372c = {1, 2};

            private EnumC16582a(String str, int i) {
                super(str, i);
            }
        }
    }

    public C16577j(GraphView graphView) {
        ScaleGestureDetector.OnScaleGestureListener onScaleGestureListener = new ScaleGestureDetector.OnScaleGestureListener() { // from class: com.jjoe64.graphview.j.1
            /* JADX WARN: Type inference failed for: r0v132, types: [double] */
            /* JADX WARN: Type inference failed for: r0v146, types: [double] */
            /* JADX WARN: Type inference failed for: r0v186, types: [double] */
            /* JADX WARN: Type inference failed for: r0v194, types: [double] */
            /* JADX WARN: Type inference failed for: r0v200, types: [double] */
            /* JADX WARN: Type inference failed for: r0v226, types: [double] */
            /* JADX WARN: Type inference failed for: r0v234, types: [double] */
            /* JADX WARN: Type inference failed for: r0v248, types: [double] */
            /* JADX WARN: Type inference failed for: r0v26, types: [double] */
            /* JADX WARN: Type inference failed for: r0v3, types: [double] */
            /* JADX WARN: Type inference failed for: r0v40, types: [double] */
            /* JADX WARN: Type inference failed for: r0v82, types: [double] */
            @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
            public final boolean onScale(ScaleGestureDetector scaleGestureDetector) {
                ?? m6992a = C16577j.this.f58347f.m6992a();
                char c = m6992a;
                if (C16577j.this.f58348g != 0.0d) {
                    c = m6992a;
                    if (m6992a > C16577j.this.f58348g) {
                        c = C16577j.this.f58348g;
                    }
                }
                double scaleFactor = c / ((Build.VERSION.SDK_INT < 11 || !C16577j.this.f58344c) ? scaleGestureDetector.getScaleFactor() : scaleGestureDetector.getCurrentSpanX() / scaleGestureDetector.getPreviousSpanX());
                C16577j.this.f58347f.f58316a = (C16577j.this.f58347f.f58316a + (c / 0)) - (scaleFactor / 2.0d);
                C16577j.this.f58347f.f58317b = C16577j.this.f58347f.f58316a + scaleFactor;
                ?? m6972a = C16577j.this.m6972a(true);
                char c2 = m6972a;
                if (!Double.isNaN(C16577j.this.f58345d.f58316a)) {
                    c2 = Math.min((double) m6972a, C16577j.this.f58345d.f58316a);
                }
                if (C16577j.this.f58347f.f58316a < c2) {
                    C16577j.this.f58347f.f58316a = c2;
                    C16577j.this.f58347f.f58317b = C16577j.this.f58347f.f58316a + scaleFactor;
                }
                ?? m6968b = C16577j.this.m6968b(true);
                char c3 = m6968b;
                if (!Double.isNaN(C16577j.this.f58345d.f58317b)) {
                    c3 = Math.max((double) m6968b, C16577j.this.f58345d.f58317b);
                }
                if (scaleFactor == 0.0d) {
                    C16577j.this.f58347f.f58317b = c3;
                }
                double d = (C16577j.this.f58347f.f58316a + scaleFactor) - c3;
                if (d > 0.0d) {
                    if (C16577j.this.f58347f.f58316a - d > c2) {
                        C16577j.this.f58347f.f58316a -= d;
                        C16577j.this.f58347f.f58317b = C16577j.this.f58347f.f58316a + scaleFactor;
                    } else {
                        C16577j.this.f58347f.f58316a = c2;
                        C16577j.this.f58347f.f58317b = c3;
                    }
                }
                if (C16577j.this.f58344c && Build.VERSION.SDK_INT >= 11 && scaleGestureDetector.getCurrentSpanY() != BitmapDescriptorFactory.HUE_RED && scaleGestureDetector.getPreviousSpanY() != BitmapDescriptorFactory.HUE_RED) {
                    boolean z = C16577j.this.f58346e.f58152d != null;
                    ?? m6990b = C16577j.this.f58347f.m6990b() * (-1.0d);
                    char c4 = m6990b;
                    if (C16577j.this.f58349h != 0.0d) {
                        c4 = m6990b;
                        if (m6990b > C16577j.this.f58349h) {
                            c4 = C16577j.this.f58349h;
                        }
                    }
                    double currentSpanY = c4 / (scaleGestureDetector.getCurrentSpanY() / scaleGestureDetector.getPreviousSpanY());
                    C16577j.this.f58347f.f58319d = (C16577j.this.f58347f.f58319d + (c4 / 0)) - (currentSpanY / 2.0d);
                    C16577j.this.f58347f.f58318c = C16577j.this.f58347f.f58319d + currentSpanY;
                    if (!z) {
                        ?? m6965c = C16577j.this.m6965c(true);
                        char c5 = m6965c;
                        if (!Double.isNaN(C16577j.this.f58345d.f58319d)) {
                            c5 = Math.min((double) m6965c, C16577j.this.f58345d.f58319d);
                        }
                        if (C16577j.this.f58347f.f58319d < c5) {
                            C16577j.this.f58347f.f58319d = c5;
                            C16577j.this.f58347f.f58318c = C16577j.this.f58347f.f58319d + currentSpanY;
                        }
                        ?? m6962d = C16577j.this.m6962d(true);
                        char c6 = m6962d;
                        if (!Double.isNaN(C16577j.this.f58345d.f58318c)) {
                            c6 = Math.max((double) m6962d, C16577j.this.f58345d.f58318c);
                        }
                        if (currentSpanY == 0.0d) {
                            C16577j.this.f58347f.f58318c = c6;
                        }
                        double d2 = (C16577j.this.f58347f.f58319d + currentSpanY) - c6;
                        if (d2 > 0.0d) {
                            if (C16577j.this.f58347f.f58319d - d2 > c5) {
                                C16577j.this.f58347f.f58319d -= d2;
                                C16577j.this.f58347f.f58318c = C16577j.this.f58347f.f58319d + currentSpanY;
                            } else {
                                C16577j.this.f58347f.f58319d = c5;
                                C16577j.this.f58347f.f58318c = c6;
                            }
                        }
                    } else {
                        double m6990b2 = C16577j.this.f58346e.f58152d.f58324e.m6990b() * (-1.0d);
                        double d3 = m6990b2 / 2.0d;
                        double currentSpanY2 = m6990b2 / (scaleGestureDetector.getCurrentSpanY() / scaleGestureDetector.getPreviousSpanY());
                        C16577j.this.f58346e.f58152d.f58324e.f58319d = (C16577j.this.f58346e.f58152d.f58324e.f58319d + d3) - (currentSpanY2 / 2.0d);
                        C16577j.this.f58346e.f58152d.f58324e.f58318c = C16577j.this.f58346e.f58152d.f58324e.f58319d + currentSpanY2;
                    }
                }
                C16577j.this.f58346e.m7060a(true);
                C0926v.m44101d(C16577j.this.f58346e);
                return true;
            }

            @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
            public final boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
                boolean z = false;
                if (C16577j.this.f58346e.f58153e) {
                    return false;
                }
                if (C16577j.this.f58353l) {
                    z = true;
                    C16577j.this.f58351j = true;
                }
                return z;
            }

            @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
            public final void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
                C16577j.this.f58351j = false;
                if (C16577j.this.f58364w != null) {
                    C16577j.this.m6972a(false);
                    C16577j.this.m6968b(false);
                    int i = AbstractC16581b.EnumC16582a.f58371b;
                }
                C0926v.m44101d(C16577j.this.f58346e);
            }
        };
        this.f58365x = onScaleGestureListener;
        GestureDetector.SimpleOnGestureListener simpleOnGestureListener = new GestureDetector.SimpleOnGestureListener() { // from class: com.jjoe64.graphview.j.2
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public final boolean onDown(MotionEvent motionEvent) {
                if (C16577j.this.f58346e.f58153e) {
                    return true;
                }
                if (!C16577j.this.f58352k || C16577j.this.f58351j) {
                    return false;
                }
                C16577j c16577j = C16577j.this;
                c16577j.f58360s.m43979a();
                c16577j.f58361t.m43979a();
                c16577j.f58358q.m43979a();
                c16577j.f58359r.m43979a();
                C16577j.this.f58357p.forceFinished(true);
                C0926v.m44101d(C16577j.this.f58346e);
                return true;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public final boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                return true;
            }

            /* JADX WARN: Code restructure failed: missing block: B:68:0x037e, code lost:
                if (r18 < 0.0d) goto L71;
             */
            /* JADX WARN: Code restructure failed: missing block: B:70:0x039e, code lost:
                if (r18 > 0.0d) goto L71;
             */
            /* JADX WARN: Code restructure failed: missing block: B:71:0x03a1, code lost:
                r20 = r0 - r18;
             */
            /* JADX WARN: Removed duplicated region for block: B:60:0x0338  */
            /* JADX WARN: Type inference failed for: r0v15, types: [double] */
            /* JADX WARN: Type inference failed for: r0v173, types: [double] */
            /* JADX WARN: Type inference failed for: r0v179, types: [double] */
            /* JADX WARN: Type inference failed for: r0v188, types: [double] */
            /* JADX WARN: Type inference failed for: r0v213, types: [double] */
            /* JADX WARN: Type inference failed for: r0v219, types: [double] */
            /* JADX WARN: Type inference failed for: r0v229, types: [double] */
            /* JADX WARN: Type inference failed for: r0v23, types: [double] */
            /* JADX WARN: Type inference failed for: r0v243, types: [double] */
            /* JADX WARN: Type inference failed for: r0v27, types: [double] */
            /* JADX WARN: Type inference failed for: r0v279, types: [double] */
            /* JADX WARN: Type inference failed for: r0v281, types: [double] */
            /* JADX WARN: Type inference failed for: r0v283, types: [double] */
            /* JADX WARN: Type inference failed for: r0v285, types: [double] */
            /* JADX WARN: Type inference failed for: r0v37, types: [double] */
            /* JADX WARN: Type inference failed for: r0v49, types: [double] */
            /* JADX WARN: Type inference failed for: r0v59, types: [double] */
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
                throw new UnsupportedOperationException("Method not decompiled: com.jjoe64.graphview.C16577j.C165792.onScroll(android.view.MotionEvent, android.view.MotionEvent, float, float):boolean");
            }
        };
        this.f58366y = simpleOnGestureListener;
        this.f58357p = new OverScroller(graphView.getContext());
        this.f58358q = new C0955d(graphView.getContext());
        this.f58359r = new C0955d(graphView.getContext());
        this.f58360s = new C0955d(graphView.getContext());
        this.f58361t = new C0955d(graphView.getContext());
        this.f58355n = new GestureDetector(graphView.getContext(), simpleOnGestureListener);
        this.f58356o = new ScaleGestureDetector(graphView.getContext(), onScaleGestureListener);
        this.f58346e = graphView;
    }

    /* renamed from: a */
    public final double m6977a() {
        if (!this.f58336A || this.f58346e.f58150b.f58253g) {
            return 0.0d;
        }
        if (Double.isNaN(this.f58343b)) {
            this.f58343b = m6972a(false);
        }
        return this.f58343b;
    }

    /* renamed from: a */
    public final double m6972a(boolean z) {
        return z ? this.f58350i.f58316a : this.f58347f.f58316a;
    }

    /* renamed from: a */
    public final void m6976a(double d) {
        this.f58347f.f58318c = d;
    }

    /* renamed from: a */
    public final void m6975a(Canvas canvas) {
        int i = this.f58338C;
        if (i != 0) {
            this.f58367z.setColor(i);
            canvas.drawRect(this.f58346e.m7063a(), this.f58346e.m7059b(), this.f58346e.m7063a() + this.f58346e.m7057d(), this.f58346e.m7059b() + this.f58346e.m7058c(), this.f58367z);
        }
        if (this.f58339D) {
            Paint paint = this.f58341F;
            if (paint == null) {
                paint = this.f58367z;
                Integer num = this.f58340E;
                paint.setColor(num != null ? num.intValue() : this.f58346e.f58150b.m7004h());
            }
            canvas.drawLine(this.f58346e.m7063a(), this.f58346e.m7059b(), this.f58346e.m7063a(), this.f58346e.m7059b() + this.f58346e.m7058c(), paint);
            canvas.drawLine(this.f58346e.m7063a(), this.f58346e.m7059b() + this.f58346e.m7058c(), this.f58346e.m7063a() + this.f58346e.m7057d(), this.f58346e.m7059b() + this.f58346e.m7058c(), paint);
            if (this.f58346e.f58152d == null) {
                return;
            }
            canvas.drawLine(this.f58346e.m7063a() + this.f58346e.m7057d(), this.f58346e.m7059b(), this.f58346e.m7063a() + this.f58346e.m7057d(), this.f58346e.m7059b() + this.f58346e.m7058c(), paint);
        }
    }

    /* renamed from: a */
    public final void m6973a(EnumC16580a enumC16580a) {
        this.f58362u = enumC16580a;
    }

    /* renamed from: a */
    public final boolean m6974a(MotionEvent motionEvent) {
        boolean onTouchEvent = this.f58356o.onTouchEvent(motionEvent) | this.f58355n.onTouchEvent(motionEvent);
        boolean z = onTouchEvent;
        if (this.f58346e.f58153e) {
            boolean z2 = onTouchEvent;
            if (motionEvent.getAction() == 0) {
                this.f58346e.f58154f.m7049a(motionEvent);
                z2 = onTouchEvent | true;
            }
            boolean z3 = z2;
            if (motionEvent.getAction() == 2) {
                this.f58346e.f58154f.m7046b(motionEvent);
                z3 = z2 | true;
            }
            z = z3;
            if (motionEvent.getAction() == 1) {
                z = z3 | this.f58346e.f58154f.m7051a();
            }
        }
        return z;
    }

    /* renamed from: b */
    public final double m6968b(boolean z) {
        return z ? this.f58350i.f58317b : this.f58347f.f58317b;
    }

    /* JADX WARN: Type inference failed for: r0v106, types: [double] */
    /* JADX WARN: Type inference failed for: r0v116, types: [double] */
    /* JADX WARN: Type inference failed for: r0v132, types: [double] */
    /* JADX WARN: Type inference failed for: r0v142, types: [double] */
    /* JADX WARN: Type inference failed for: r0v157, types: [double] */
    /* JADX WARN: Type inference failed for: r0v166, types: [double] */
    /* JADX WARN: Type inference failed for: r0v175, types: [double] */
    /* JADX WARN: Type inference failed for: r0v184, types: [double] */
    /* JADX WARN: Type inference failed for: r0v68, types: [double] */
    /* JADX WARN: Type inference failed for: r0v85, types: [double] */
    /* renamed from: b */
    public final void m6971b() {
        List<AbstractC16559h> list = this.f58346e.f58149a;
        ArrayList<AbstractC16559h> arrayList = new ArrayList(this.f58346e.f58149a);
        if (this.f58346e.f58152d != null) {
            arrayList.addAll(this.f58346e.f58152d.m6989a());
        }
        this.f58350i.m6991a(0.0d, 0.0d, 0.0d, 0.0d);
        if (!arrayList.isEmpty() && !((AbstractC16559h) arrayList.get(0)).mo7023h()) {
            char mo7030b = ((AbstractC16559h) arrayList.get(0)).mo7030b();
            for (AbstractC16559h abstractC16559h : arrayList) {
                if (!abstractC16559h.mo7023h() && mo7030b > abstractC16559h.mo7030b()) {
                    mo7030b = abstractC16559h.mo7030b();
                }
            }
            this.f58350i.f58316a = mo7030b;
            char mo7028c = ((AbstractC16559h) arrayList.get(0)).mo7028c();
            for (AbstractC16559h abstractC16559h2 : arrayList) {
                if (!abstractC16559h2.mo7023h() && mo7028c < abstractC16559h2.mo7028c()) {
                    mo7028c = abstractC16559h2.mo7028c();
                }
            }
            this.f58350i.f58317b = mo7028c;
            if (!list.isEmpty() && !list.get(0).mo7023h()) {
                char mo7027d = list.get(0).mo7027d();
                for (AbstractC16559h abstractC16559h3 : list) {
                    if (!abstractC16559h3.mo7023h() && mo7027d > abstractC16559h3.mo7027d()) {
                        mo7027d = abstractC16559h3.mo7027d();
                    }
                }
                this.f58350i.f58319d = mo7027d;
                char mo7026e = list.get(0).mo7026e();
                for (AbstractC16559h abstractC16559h4 : list) {
                    if (!abstractC16559h4.mo7023h() && mo7026e < abstractC16559h4.mo7026e()) {
                        mo7026e = abstractC16559h4.mo7026e();
                    }
                }
                this.f58350i.f58318c = mo7026e;
            }
        }
        if (this.f58363v == EnumC16580a.AUTO_ADJUSTED) {
            this.f58363v = EnumC16580a.INITIAL;
        }
        if (this.f58363v == EnumC16580a.INITIAL) {
            this.f58347f.f58318c = this.f58350i.f58318c;
            this.f58347f.f58319d = this.f58350i.f58319d;
        }
        if (this.f58362u == EnumC16580a.AUTO_ADJUSTED) {
            this.f58362u = EnumC16580a.INITIAL;
        }
        if (this.f58362u == EnumC16580a.INITIAL) {
            this.f58347f.f58316a = this.f58350i.f58316a;
            this.f58347f.f58317b = this.f58350i.f58317b;
        } else if (this.f58336A && !this.f58337B && this.f58350i.m6992a() != 0.0d) {
            char c = 65535;
            for (AbstractC16559h abstractC16559h5 : list) {
                Iterator mo7033a = abstractC16559h5.mo7033a(this.f58347f.f58316a, this.f58347f.f58317b);
                char c2 = c;
                while (true) {
                    c = c2;
                    if (mo7033a.hasNext()) {
                        ?? mo7039b = ((AbstractC16549d) mo7033a.next()).mo7039b();
                        if (c2 > mo7039b) {
                            c2 = mo7039b;
                        }
                    }
                }
            }
            if (c != Double.MAX_VALUE) {
                this.f58347f.f58319d = c;
            }
            char c3 = 1;
            for (AbstractC16559h abstractC16559h6 : list) {
                Iterator mo7033a2 = abstractC16559h6.mo7033a(this.f58347f.f58316a, this.f58347f.f58317b);
                char c4 = c3;
                while (true) {
                    c3 = c4;
                    if (mo7033a2.hasNext()) {
                        ?? mo7039b2 = ((AbstractC16549d) mo7033a2.next()).mo7039b();
                        if (c4 < mo7039b2) {
                            c4 = mo7039b2;
                        }
                    }
                }
            }
            if (c3 != Double.MIN_VALUE) {
                this.f58347f.f58318c = c3;
            }
        }
        if (this.f58347f.f58316a == this.f58347f.f58317b) {
            this.f58347f.f58317b += 1.0d;
        }
        if (this.f58347f.f58318c == this.f58347f.f58319d) {
            this.f58347f.f58318c += 1.0d;
        }
    }

    /* renamed from: b */
    public final void m6970b(double d) {
        this.f58347f.f58319d = d;
    }

    /* renamed from: b */
    public final void m6969b(EnumC16580a enumC16580a) {
        this.f58363v = enumC16580a;
    }

    /* renamed from: c */
    public final double m6965c(boolean z) {
        return z ? this.f58350i.f58319d : this.f58347f.f58319d;
    }

    /* renamed from: c */
    public final void m6967c() {
        this.f58336A = true;
        this.f58362u = EnumC16580a.FIX;
    }

    /* renamed from: c */
    public final void m6966c(double d) {
        this.f58347f.f58317b = d;
    }

    /* renamed from: d */
    public final double m6962d(boolean z) {
        return z ? this.f58350i.f58318c : this.f58347f.f58318c;
    }

    /* renamed from: d */
    public final void m6964d() {
        this.f58337B = true;
        this.f58363v = EnumC16580a.FIX;
    }

    /* renamed from: d */
    public final void m6963d(double d) {
        this.f58347f.f58316a = d;
    }

    /* renamed from: e */
    public final double m6961e() {
        if (!this.f58337B || this.f58346e.f58150b.f58252f) {
            return 0.0d;
        }
        if (Double.isNaN(this.f58342a)) {
            this.f58342a = m6965c(false);
        }
        return this.f58342a;
    }
}
