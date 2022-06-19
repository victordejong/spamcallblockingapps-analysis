package com.jjoe64.graphview;

import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.TypedValue;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.jjoe64.graphview.C16577j;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import org.apache.commons.lang3.StringUtils;
/* renamed from: com.jjoe64.graphview.c */
/* loaded from: classes4-dex2jar.jar:com/jjoe64/graphview/c.class */
public final class C16561c {

    /* renamed from: a */
    protected C16564b f58247a = new C16564b();

    /* renamed from: b */
    protected boolean f58248b;

    /* renamed from: c */
    public AbstractC16566d f58249c;

    /* renamed from: d */
    public int f58250d;

    /* renamed from: e */
    public int f58251e;

    /* renamed from: f */
    public boolean f58252f;

    /* renamed from: g */
    public boolean f58253g;

    /* renamed from: h */
    private final GraphView f58254h;

    /* renamed from: i */
    private Map<Integer, Double> f58255i;

    /* renamed from: j */
    private Map<Integer, Double> f58256j;

    /* renamed from: k */
    private Map<Integer, Double> f58257k;

    /* renamed from: l */
    private Paint f58258l;

    /* renamed from: m */
    private Paint f58259m;

    /* renamed from: n */
    private Paint f58260n;

    /* renamed from: o */
    private Integer f58261o;

    /* renamed from: p */
    private boolean f58262p;

    /* renamed from: q */
    private Integer f58263q;

    /* renamed from: r */
    private boolean f58264r;

    /* renamed from: s */
    private Integer f58265s;

    /* renamed from: t */
    private Integer f58266t;

    /* renamed from: u */
    private Integer f58267u;

    /* renamed from: v */
    private Integer f58268v;

    /* renamed from: w */
    private String f58269w;

    /* renamed from: x */
    private String f58270x;

    /* renamed from: com.jjoe64.graphview.c$1 */
    /* loaded from: classes4-dex2jar.jar:com/jjoe64/graphview/c$1.class */
    public static final /* synthetic */ class C165621 {

        /* renamed from: a */
        static final /* synthetic */ int[] f58271a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002c -> B:16:0x001d). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x0028 -> B:12:0x0013). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC16565c.m6995a().length];
            f58271a = iArr;
            try {
                iArr[EnumC16565c.f58293b - 1] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f58271a[EnumC16565c.f58292a - 1] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f58271a[EnumC16565c.f58294c - 1] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: com.jjoe64.graphview.c$a */
    /* loaded from: classes4-dex2jar.jar:com/jjoe64/graphview/c$a.class */
    public enum EnumC16563a {
        BOTH,
        VERTICAL,
        HORIZONTAL,
        NONE;

        public final boolean drawHorizontal() {
            if (this != BOTH) {
                return this == HORIZONTAL && this != NONE;
            }
            return true;
        }

        public final boolean drawVertical() {
            if (this != BOTH) {
                return this == VERTICAL && this != NONE;
            }
            return true;
        }
    }

    /* renamed from: com.jjoe64.graphview.c$b */
    /* loaded from: classes4-dex2jar.jar:com/jjoe64/graphview/c$b.class */
    public final class C16564b {

        /* renamed from: a */
        public float f58272a;

        /* renamed from: b */
        public Paint.Align f58273b;

        /* renamed from: c */
        public Paint.Align f58274c;

        /* renamed from: d */
        public int f58275d;

        /* renamed from: e */
        public int f58276e;

        /* renamed from: f */
        public int f58277f;

        /* renamed from: g */
        public int f58278g;

        /* renamed from: h */
        public boolean f58279h;

        /* renamed from: i */
        public int f58280i;

        /* renamed from: j */
        public float f58281j;

        /* renamed from: k */
        public int f58282k;

        /* renamed from: l */
        public float f58283l;

        /* renamed from: m */
        public int f58284m;

        /* renamed from: n */
        public float f58285n;

        /* renamed from: o */
        boolean f58286o;

        /* renamed from: p */
        boolean f58287p;

        /* renamed from: q */
        EnumC16563a f58288q;

        /* renamed from: r */
        int f58289r;

        /* renamed from: s */
        int f58290s = EnumC16565c.f58293b;

        public C16564b() {
            C16561c.this = r4;
        }
    }

    /* renamed from: com.jjoe64.graphview.c$c */
    /* loaded from: classes4-dex2jar.jar:com/jjoe64/graphview/c$c.class */
    public static final class EnumC16565c extends Enum<EnumC16565c> {

        /* renamed from: a */
        public static final int f58292a = 1;

        /* renamed from: b */
        public static final int f58293b = 2;

        /* renamed from: c */
        public static final int f58294c = 3;

        /* renamed from: d */
        private static final /* synthetic */ int[] f58295d = {1, 2, 3};

        private EnumC16565c(String str, int i) {
            super(str, i);
        }

        /* renamed from: a */
        public static int[] m6995a() {
            return (int[]) f58295d.clone();
        }
    }

    public C16561c(GraphView graphView) {
        int i;
        int i2;
        this.f58254h = graphView;
        m7018a(new C16560b());
        TypedValue typedValue = new TypedValue();
        graphView.getContext().getTheme().resolveAttribute(16842818, typedValue, true);
        int i3 = -7829368;
        int i4 = -16777216;
        try {
            TypedArray obtainStyledAttributes = graphView.getContext().obtainStyledAttributes(typedValue.data, new int[]{16842806, 16842808, 16842901, 16843327});
            int color = obtainStyledAttributes.getColor(0, -16777216);
            int color2 = obtainStyledAttributes.getColor(1, -7829368);
            i2 = obtainStyledAttributes.getDimensionPixelSize(2, 20);
            i = obtainStyledAttributes.getDimensionPixelSize(3, 20);
            obtainStyledAttributes.recycle();
            i4 = color;
            i3 = color2;
        } catch (Exception e) {
            i = 20;
            i2 = 20;
        }
        this.f58247a.f58275d = i4;
        this.f58247a.f58276e = i4;
        this.f58247a.f58277f = i4;
        this.f58247a.f58278g = i3;
        this.f58247a.f58272a = i2;
        this.f58247a.f58280i = i;
        C16564b c16564b = this.f58247a;
        c16564b.f58289r = ((int) c16564b.f58272a) / 5;
        this.f58247a.f58273b = Paint.Align.RIGHT;
        this.f58247a.f58274c = Paint.Align.LEFT;
        this.f58247a.f58279h = true;
        C16564b c16564b2 = this.f58247a;
        c16564b2.f58282k = c16564b2.f58275d;
        C16564b c16564b3 = this.f58247a;
        c16564b3.f58284m = c16564b3.f58277f;
        C16564b c16564b4 = this.f58247a;
        c16564b4.f58281j = c16564b4.f58272a;
        C16564b c16564b5 = this.f58247a;
        c16564b5.f58283l = c16564b5.f58272a;
        this.f58247a.f58286o = true;
        this.f58247a.f58287p = true;
        this.f58247a.f58285n = BitmapDescriptorFactory.HUE_RED;
        this.f58247a.f58288q = EnumC16563a.BOTH;
        m7000l();
        this.f58250d = 5;
        this.f58251e = 5;
        this.f58253g = true;
        this.f58252f = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0066, code lost:
        if (r12 < 10.0d) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x009f, code lost:
        if (r12 < 15.0d) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00a2, code lost:
        r7 = 0;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v36, types: [double] */
    /* JADX WARN: Type inference failed for: r0v38, types: [double] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static double m7021a(double r7, boolean r9) {
        /*
            r0 = 0
            r10 = r0
        L2:
            r0 = r10
            r11 = r0
            r0 = r7
            r12 = r0
            r0 = r7
            double r0 = java.lang.Math.abs(r0)
            r1 = 4621819117588971520(0x4024000000000000, double:10.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L1f
            r0 = r7
            r1 = 4621819117588971520(0x4024000000000000, double:10.0)
            double r0 = r0 / r1
            r7 = r0
            int r10 = r10 + 1
            goto L2
        L1f:
            r0 = r12
            double r0 = java.lang.Math.abs(r0)
            r1 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L37
            r0 = r12
            r1 = 4621819117588971520(0x4024000000000000, double:10.0)
            double r0 = r0 * r1
            r12 = r0
            int r11 = r11 + (-1)
            goto L1f
        L37:
            r0 = r9
            if (r0 == 0) goto L6c
            r0 = r12
            r7 = r0
            r0 = r12
            r1 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto La6
            r0 = r12
            r1 = 4611686018427387904(0x4000000000000000, double:2.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L51
            goto L7f
        L51:
            r0 = r12
            r1 = 4617315517961601024(0x4014000000000000, double:5.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L5d
            goto L8f
        L5d:
            r0 = r12
            r7 = r0
            r0 = r12
            r1 = 4621819117588971520(0x4024000000000000, double:10.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto La6
            goto La2
        L6c:
            r0 = r12
            r7 = r0
            r0 = r12
            r1 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto La6
            r0 = r12
            r1 = 4617202927970916762(0x401399999999999a, double:4.9)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L86
        L7f:
            r0 = 4611686018427387904(0x4000000000000000, double:2.0)
            r7 = r0
            goto La6
        L86:
            r0 = r12
            r1 = 4621762822593629389(0x4023cccccccccccd, double:9.9)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L96
        L8f:
            r0 = 4617315517961601024(0x4014000000000000, double:5.0)
            r7 = r0
            goto La6
        L96:
            r0 = r12
            r7 = r0
            r0 = r12
            r1 = 4624633867356078080(0x402e000000000000, double:15.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto La6
        La2:
            r0 = 4621819117588971520(0x4024000000000000, double:10.0)
            r7 = r0
        La6:
            r0 = r7
            r1 = 4621819117588971520(0x4024000000000000, double:10.0)
            r2 = r11
            double r2 = (double) r2
            double r1 = java.lang.Math.pow(r1, r2)
            double r0 = r0 * r1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.jjoe64.graphview.C16561c.m7021a(double, boolean):double");
    }

    /* JADX WARN: Type inference failed for: r0v103, types: [double] */
    /* JADX WARN: Type inference failed for: r0v11, types: [double] */
    /* JADX WARN: Type inference failed for: r0v131, types: [double] */
    /* JADX WARN: Type inference failed for: r0v133, types: [double] */
    /* JADX WARN: Type inference failed for: r0v139, types: [double] */
    /* JADX WARN: Type inference failed for: r0v141, types: [double] */
    /* JADX WARN: Type inference failed for: r0v143, types: [double] */
    /* JADX WARN: Type inference failed for: r0v146, types: [double] */
    /* JADX WARN: Type inference failed for: r0v25, types: [double] */
    /* renamed from: a */
    private boolean m7017a(boolean z) {
        char c;
        char c2;
        if (this.f58261o == null) {
            return false;
        }
        double m6972a = this.f58254h.f58151c.m6972a(false);
        char m6968b = this.f58254h.f58151c.m6968b(false);
        if (m6972a == m6968b) {
            return false;
        }
        int i = this.f58251e;
        double d = i - 1;
        ?? round = Math.round(((m6968b - m6972a) / d) * 1000000.0d) / 1000000.0d;
        char c3 = round;
        if (round == 0.0d) {
            m6968b = (d * 1.0E-7d) + m6972a;
            c3 = 44872;
        }
        if (this.f58253g) {
            c = m7021a((double) c3, false);
        } else {
            Map<Integer, Double> map = this.f58257k;
            c = c3;
            if (map != null) {
                c = c3;
                if (map.size() > 1) {
                    Iterator<Double> it2 = this.f58257k.values().iterator();
                    char c4 = 0;
                    int i2 = 0;
                    while (true) {
                        if (!it2.hasNext()) {
                            c2 = 0;
                            break;
                        }
                        Double next = it2.next();
                        if (i2 != 0) {
                            c2 = next.doubleValue();
                            break;
                        }
                        c4 = next.doubleValue();
                        i2++;
                    }
                    ?? r0 = c2 - c4;
                    c = c3;
                    if (r0 > 0.0d) {
                        c = r0 > c3 ? r0 / 2.0d : r0 < c3 ? 2.0d * r0 : (char) 0;
                        double d2 = m6968b - m6972a;
                        int i3 = (int) (d2 / r0);
                        int i4 = (int) (d2 / c);
                        boolean z2 = i3 > i || i4 > i || i4 > i3;
                        if (c == Double.NaN || !z2 || i4 > i) {
                            c = r0;
                        }
                    }
                }
            }
        }
        double m6977a = this.f58254h.f58151c.m6977a();
        double floor = (Math.floor((m6972a - m6977a) / c) * c) + m6977a;
        if (z) {
            this.f58254h.f58151c.m6963d(floor);
            this.f58254h.f58151c.m6966c((d * c) + floor);
            this.f58254h.f58151c.f58362u = C16577j.EnumC16580a.AUTO_ADJUSTED;
        }
        int m6992a = ((int) (this.f58254h.f58151c.f58347f.m6992a() / c)) + 1;
        Map<Integer, Double> map2 = this.f58257k;
        if (map2 != null) {
            map2.clear();
        } else {
            this.f58257k = new LinkedHashMap(m6992a);
        }
        double m7057d = this.f58254h.m7057d() / this.f58254h.f58151c.f58347f.m6992a();
        for (int i5 = 0; i5 < m6992a; i5++) {
            double d3 = (i5 * c) + floor;
            if (d3 >= this.f58254h.f58151c.f58347f.f58316a) {
                this.f58257k.put(Integer.valueOf((int) ((d3 - this.f58254h.f58151c.f58347f.f58316a) * m7057d)), Double.valueOf(d3));
            }
        }
        return true;
    }

    /* renamed from: b */
    private void m7013b(Canvas canvas) {
        int i;
        Rect rect;
        this.f58259m.setColor(this.f58247a.f58277f);
        int i2 = 0;
        for (Map.Entry<Integer, Double> entry : this.f58257k.entrySet()) {
            if (this.f58247a.f58279h) {
                if (entry.getValue().doubleValue() == 0.0d) {
                    this.f58258l.setStrokeWidth(5.0f);
                } else {
                    this.f58258l.setStrokeWidth(BitmapDescriptorFactory.HUE_RED);
                }
            }
            if (this.f58247a.f58288q.drawVertical() && entry.getKey().intValue() <= this.f58254h.m7057d()) {
                canvas.drawLine(this.f58254h.m7063a() + entry.getKey().intValue(), this.f58254h.m7059b(), this.f58254h.m7063a() + entry.getKey().intValue(), this.f58254h.m7059b() + this.f58254h.m7058c(), this.f58258l);
            }
            if (this.f58247a.f58286o) {
                if (this.f58247a.f58285n <= BitmapDescriptorFactory.HUE_RED || this.f58247a.f58285n > 180.0f) {
                    this.f58259m.setTextAlign(Paint.Align.CENTER);
                    if (i2 == this.f58257k.size() - 1) {
                        this.f58259m.setTextAlign(Paint.Align.RIGHT);
                    }
                    if (i2 == 0) {
                        this.f58259m.setTextAlign(Paint.Align.LEFT);
                    }
                } else if (this.f58247a.f58285n < 90.0f) {
                    this.f58259m.setTextAlign(Paint.Align.RIGHT);
                } else if (this.f58247a.f58285n <= 180.0f) {
                    this.f58259m.setTextAlign(Paint.Align.LEFT);
                }
                String mo6982a = this.f58249c.mo6982a(entry.getValue().doubleValue(), true);
                String str = mo6982a;
                if (mo6982a == null) {
                    str = "";
                }
                String[] split = str.split(StringUtils.f67179LF);
                if (this.f58247a.f58285n <= BitmapDescriptorFactory.HUE_RED || this.f58247a.f58285n > 180.0f) {
                    i = 0;
                } else {
                    this.f58259m.getTextBounds(split[0], 0, split[0].length(), new Rect());
                    i = (int) Math.abs(rect.width() * Math.cos(Math.toRadians(this.f58247a.f58285n)));
                }
                for (int i3 = 0; i3 < split.length; i3++) {
                    float height = (((canvas.getHeight() - this.f58247a.f58280i) - m7012c()) - ((((split.length - i3) - 1) * this.f58247a.f58272a) * 1.1f)) + this.f58247a.f58289r;
                    float m7063a = this.f58254h.m7063a() + entry.getKey().intValue();
                    if (this.f58247a.f58285n > BitmapDescriptorFactory.HUE_RED && this.f58247a.f58285n < 90.0f) {
                        canvas.save();
                        float f = m7063a + i;
                        canvas.rotate(this.f58247a.f58285n, f, height);
                        canvas.drawText(split[i3], f, height, this.f58259m);
                        canvas.restore();
                    } else if (this.f58247a.f58285n <= BitmapDescriptorFactory.HUE_RED || this.f58247a.f58285n > 180.0f) {
                        canvas.drawText(split[i3], m7063a, height, this.f58259m);
                    } else {
                        canvas.save();
                        float f2 = m7063a - i;
                        canvas.rotate(this.f58247a.f58285n - 180.0f, f2, height);
                        canvas.drawText(split[i3], f2, height, this.f58259m);
                        canvas.restore();
                    }
                }
            }
            i2++;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0109 A[LOOP:1: B:16:0x0101->B:18:0x0109, LOOP_END] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m7010c(android.graphics.Canvas r8) {
        /*
            Method dump skipped, instructions count: 323
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.jjoe64.graphview.C16561c.m7010c(android.graphics.Canvas):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x0203 A[LOOP:1: B:49:0x01fb->B:51:0x0203, LOOP_END] */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m7008d(android.graphics.Canvas r8) {
        /*
            Method dump skipped, instructions count: 582
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.jjoe64.graphview.C16561c.m7008d(android.graphics.Canvas):void");
    }

    /* renamed from: l */
    private void m7000l() {
        Paint paint = new Paint();
        this.f58258l = paint;
        paint.setColor(this.f58247a.f58278g);
        this.f58258l.setStrokeWidth(BitmapDescriptorFactory.HUE_RED);
        Paint paint2 = new Paint();
        this.f58259m = paint2;
        paint2.setTextSize(this.f58247a.f58272a);
        this.f58259m.setAntiAlias(true);
        Paint paint3 = new Paint();
        this.f58260n = paint3;
        paint3.setTextSize(this.f58247a.f58272a);
        this.f58260n.setTextAlign(Paint.Align.CENTER);
    }

    /* JADX WARN: Type inference failed for: r0v120, types: [double] */
    /* JADX WARN: Type inference failed for: r0v122, types: [double] */
    /* JADX WARN: Type inference failed for: r0v128, types: [double] */
    /* JADX WARN: Type inference failed for: r0v130, types: [double] */
    /* JADX WARN: Type inference failed for: r0v29, types: [double] */
    /* JADX WARN: Type inference failed for: r0v94, types: [double] */
    /* renamed from: m */
    private boolean m6999m() {
        char c;
        if (this.f58268v == null) {
            return false;
        }
        if (this.f58254h.f58152d == null) {
            return true;
        }
        double m6988b = this.f58254h.f58152d.m6988b();
        double m6987c = this.f58254h.f58152d.m6987c();
        int i = this.f58250d;
        if (!this.f58254h.f58152d.f58322c) {
            throw new IllegalStateException("Not yet implemented");
        }
        double d = m6987c - m6988b;
        ?? round = Math.round((d / (i - 1)) * 1000000.0d) / 1000000.0d;
        Map<Integer, Double> map = this.f58256j;
        char c2 = round;
        if (map != null) {
            c2 = round;
            if (map.size() > 1) {
                Iterator<Double> it2 = this.f58256j.values().iterator();
                char c3 = 0;
                int i2 = 0;
                while (true) {
                    if (!it2.hasNext()) {
                        c = 0;
                        break;
                    }
                    Double next = it2.next();
                    if (i2 != 0) {
                        c = next.doubleValue();
                        break;
                    }
                    c3 = next.doubleValue();
                    i2++;
                }
                ?? r0 = c - c3;
                c2 = round;
                if (r0 > 0.0d) {
                    c2 = r0 > round ? r0 / 2.0d : r0 < round ? 2.0d * r0 : (char) 0;
                    int i3 = (int) (d / r0);
                    int i4 = (int) (d / c2);
                    boolean z = i3 > i || i4 > i || i4 > i3;
                    if (c2 == Double.NaN || !z || i4 > i) {
                        c2 = r0;
                    }
                }
            }
        }
        double d2 = this.f58254h.m7055f().f58326g;
        double floor = Math.floor((m6988b - d2) / c2);
        int max = Math.max(((int) ((this.f58254h.m7055f().f58324e.m6990b() * (-1.0d)) / c2)) + 2, 2);
        Map<Integer, Double> map2 = this.f58256j;
        if (map2 != null) {
            map2.clear();
        } else {
            this.f58256j = new LinkedHashMap(max);
        }
        double m7058c = this.f58254h.m7058c() / this.f58254h.m7055f().f58324e.m6990b();
        for (int i5 = 0; i5 < max; i5++) {
            double d3 = (i5 * c2) + (floor * c2) + d2;
            if (d3 <= this.f58254h.m7055f().f58324e.f58318c && d3 >= this.f58254h.m7055f().f58324e.f58319d) {
                this.f58256j.put(Integer.valueOf((int) ((d3 - this.f58254h.m7055f().f58324e.f58319d) * m7058c * (-1.0d))), Double.valueOf(d3));
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0203  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x020c  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x023b  */
    /* JADX WARN: Type inference failed for: r0v115, types: [double] */
    /* JADX WARN: Type inference failed for: r0v143, types: [double] */
    /* JADX WARN: Type inference failed for: r0v145, types: [double] */
    /* JADX WARN: Type inference failed for: r0v151, types: [double] */
    /* JADX WARN: Type inference failed for: r0v153, types: [double] */
    /* JADX WARN: Type inference failed for: r0v156, types: [double] */
    /* JADX WARN: Type inference failed for: r0v159, types: [double] */
    /* JADX WARN: Type inference failed for: r0v20, types: [double] */
    /* JADX WARN: Type inference failed for: r0v34, types: [double] */
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m6998n() {
        /*
            Method dump skipped, instructions count: 720
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.jjoe64.graphview.C16561c.m6998n():void");
    }

    /* renamed from: o */
    private void m6997o() {
        int i = 0;
        String mo6982a = this.f58249c.mo6982a(this.f58254h.f58151c.m6962d(false), false);
        String str = mo6982a;
        if (mo6982a == null) {
            str = "";
        }
        Rect rect = new Rect();
        this.f58259m.getTextBounds(str, 0, str.length(), rect);
        this.f58261o = Integer.valueOf(rect.width());
        this.f58263q = Integer.valueOf(rect.height());
        String mo6982a2 = this.f58249c.mo6982a(this.f58254h.f58151c.m6965c(false), false);
        if (mo6982a2 == null) {
            mo6982a2 = "";
        }
        this.f58259m.getTextBounds(mo6982a2, 0, mo6982a2.length(), rect);
        Integer valueOf = Integer.valueOf(Math.max(this.f58261o.intValue(), rect.width()));
        this.f58261o = valueOf;
        Integer valueOf2 = Integer.valueOf(valueOf.intValue() + 6);
        this.f58261o = valueOf2;
        this.f58261o = Integer.valueOf(valueOf2.intValue() + this.f58247a.f58289r);
        byte[] bytes = mo6982a2.getBytes();
        int length = bytes.length;
        int i2 = 1;
        while (true) {
            int i3 = i2;
            if (i >= length) {
                this.f58263q = Integer.valueOf(this.f58263q.intValue() * i3);
                return;
            }
            int i4 = i3;
            if (bytes[i] == 10) {
                i4 = i3 + 1;
            }
            i++;
            i2 = i4;
        }
    }

    /* renamed from: p */
    private void m6996p() {
        int i = 0;
        if (this.f58254h.f58152d == null) {
            this.f58265s = 0;
            this.f58266t = 0;
            return;
        }
        String mo6982a = this.f58254h.f58152d.m6986d().mo6982a(((this.f58254h.f58152d.m6987c() - this.f58254h.f58152d.m6988b()) * 0.783d) + this.f58254h.f58152d.m6988b(), false);
        Rect rect = new Rect();
        this.f58259m.getTextBounds(mo6982a, 0, mo6982a.length(), rect);
        this.f58265s = Integer.valueOf(rect.width());
        this.f58266t = Integer.valueOf(rect.height());
        byte[] bytes = mo6982a.getBytes();
        int length = bytes.length;
        int i2 = 1;
        while (true) {
            int i3 = i2;
            if (i >= length) {
                this.f58266t = Integer.valueOf(this.f58266t.intValue() * i3);
                return;
            }
            int i4 = i3;
            if (bytes[i] == 10) {
                i4 = i3 + 1;
            }
            i++;
            i2 = i4;
        }
    }

    /* renamed from: a */
    public final float m7022a() {
        return this.f58247a.f58272a;
    }

    /* renamed from: a */
    public final void m7020a(int i) {
        this.f58247a.f58275d = i;
    }

    /* renamed from: a */
    public final void m7019a(Canvas canvas) {
        int i;
        Integer valueOf;
        boolean z = false;
        int i2 = 0;
        if (this.f58267u == null) {
            String mo6982a = this.f58249c.mo6982a(((this.f58254h.f58151c.m6968b(false) - this.f58254h.f58151c.m6972a(false)) * 0.783d) + this.f58254h.f58151c.m6972a(false), true);
            String str = mo6982a;
            if (mo6982a == null) {
                str = "";
            }
            Rect rect = new Rect();
            this.f58259m.getTextBounds(str, 0, str.length(), rect);
            this.f58267u = Integer.valueOf(rect.width());
            if (!this.f58264r) {
                this.f58268v = Integer.valueOf(rect.height());
                byte[] bytes = str.getBytes();
                int length = bytes.length;
                int i3 = 1;
                while (true) {
                    i = i3;
                    if (i2 >= length) {
                        break;
                    }
                    int i4 = i;
                    if (bytes[i2] == 10) {
                        i4 = i + 1;
                    }
                    i2++;
                    i3 = i4;
                }
                this.f58268v = Integer.valueOf(this.f58268v.intValue() * i);
                this.f58268v = Integer.valueOf((int) Math.max(valueOf.intValue(), this.f58247a.f58272a));
            }
            if (this.f58247a.f58285n > BitmapDescriptorFactory.HUE_RED && this.f58247a.f58285n <= 180.0f) {
                this.f58268v = Integer.valueOf(((int) Math.round(Math.abs(this.f58268v.intValue() * Math.cos(Math.toRadians(this.f58247a.f58285n))))) + ((int) Math.round(Math.abs(this.f58267u.intValue() * Math.sin(Math.toRadians(this.f58247a.f58285n))))));
                this.f58267u = Integer.valueOf(((int) Math.round(Math.abs(this.f58268v.intValue() * Math.sin(Math.toRadians(this.f58247a.f58285n))))) + ((int) Math.round(Math.abs(this.f58267u.intValue() * Math.cos(Math.toRadians(this.f58247a.f58285n))))));
            }
            this.f58268v = Integer.valueOf(this.f58268v.intValue() + this.f58247a.f58289r);
            z = true;
        }
        if (this.f58261o == null) {
            m6997o();
            z = true;
        }
        if (this.f58265s == null) {
            m6996p();
            z = true;
        }
        if (z) {
            this.f58254h.m7062a(canvas);
            return;
        }
        if (!this.f58248b) {
            m6998n();
        }
        if (!this.f58248b) {
            return;
        }
        m7008d(canvas);
        m7010c(canvas);
        m7013b(canvas);
        String str2 = this.f58269w;
        if (str2 != null && str2.length() > 0) {
            this.f58260n.setColor(this.f58247a.f58284m);
            this.f58260n.setTextSize(this.f58247a.f58283l);
            canvas.drawText(this.f58269w, canvas.getWidth() / 2, canvas.getHeight() - this.f58247a.f58280i, this.f58260n);
        }
        String str3 = this.f58270x;
        if (str3 != null && str3.length() > 0) {
            this.f58260n.setColor(this.f58247a.f58282k);
            this.f58260n.setTextSize(this.f58247a.f58281j);
            float m7009d = m7009d();
            float height = canvas.getHeight() / 2;
            canvas.save();
            canvas.rotate(-90.0f, m7009d, height);
            canvas.drawText(this.f58270x, m7009d, height, this.f58260n);
            canvas.restore();
        }
        if (this.f58254h.f58152d == null) {
            return;
        }
        C16574h c16574h = this.f58254h.f58152d;
        if (c16574h.f58328i == null || c16574h.f58328i.length() <= 0) {
            return;
        }
        c16574h.f58327h.setColor(c16574h.f58330k);
        c16574h.f58327h.setTextSize(c16574h.m6984f());
        float width = canvas.getWidth() - (c16574h.m6984f() / 2.0f);
        float height2 = canvas.getHeight() / 2;
        canvas.save();
        canvas.rotate(-90.0f, width, height2);
        canvas.drawText(c16574h.f58328i, width, height2, c16574h.f58327h);
        canvas.restore();
    }

    /* renamed from: a */
    public final void m7018a(AbstractC16566d abstractC16566d) {
        this.f58249c = abstractC16566d;
        abstractC16566d.mo6981a(this.f58254h.f58151c);
    }

    /* renamed from: a */
    public final void m7016a(boolean z, boolean z2) {
        this.f58248b = false;
        if (!z) {
            if (!this.f58262p) {
                this.f58261o = null;
            }
            this.f58263q = null;
            this.f58265s = null;
            this.f58266t = null;
        }
    }

    /* renamed from: b */
    public final int m7015b() {
        return this.f58247a.f58277f;
    }

    /* renamed from: b */
    public final void m7014b(int i) {
        this.f58247a.f58277f = i;
    }

    /* renamed from: c */
    public final int m7012c() {
        String str = this.f58269w;
        if (str == null || str.length() <= 0) {
            return 0;
        }
        return (int) this.f58247a.f58283l;
    }

    /* renamed from: c */
    public final void m7011c(int i) {
        this.f58247a.f58278g = i;
        m7000l();
    }

    /* renamed from: d */
    public final int m7009d() {
        String str = this.f58270x;
        if (str == null || str.length() <= 0) {
            return 0;
        }
        return (int) this.f58247a.f58281j;
    }

    /* renamed from: e */
    public final C16564b m7007e() {
        return this.f58247a;
    }

    /* renamed from: f */
    public final int m7006f() {
        if (this.f58247a.f58290s == EnumC16565c.f58292a || this.f58247a.f58290s == EnumC16565c.f58294c || this.f58261o == null || !this.f58247a.f58287p) {
            return 0;
        }
        return this.f58261o.intValue();
    }

    /* renamed from: g */
    public final int m7005g() {
        if (this.f58268v == null || !this.f58247a.f58286o) {
            return 0;
        }
        return this.f58268v.intValue();
    }

    /* renamed from: h */
    public final int m7004h() {
        return this.f58247a.f58278g;
    }

    /* renamed from: i */
    public final boolean m7003i() {
        return this.f58247a.f58279h;
    }

    /* renamed from: j */
    public final void m7002j() {
        this.f58247a.f58272a = 28.0f;
        m7000l();
    }

    /* renamed from: k */
    public final int m7001k() {
        Integer num = this.f58265s;
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }
}
