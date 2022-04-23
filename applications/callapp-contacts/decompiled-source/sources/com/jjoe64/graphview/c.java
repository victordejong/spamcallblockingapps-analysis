package com.jjoe64.graphview;

import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.TypedValue;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Map;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes4-dex2jar.jar:com/jjoe64/graphview/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    protected b f33561a = new b();

    /* renamed from: b  reason: collision with root package name */
    protected boolean f33562b;

    /* renamed from: c  reason: collision with root package name */
    public d f33563c;

    /* renamed from: d  reason: collision with root package name */
    public int f33564d;
    public int e;
    public boolean f;
    public boolean g;
    private final GraphView h;
    private Map<Integer, Double> i;
    private Map<Integer, Double> j;
    private Map<Integer, Double> k;
    private Paint l;
    private Paint m;
    private Paint n;
    private Integer o;
    private boolean p;
    private Integer q;
    private boolean r;
    private Integer s;
    private Integer t;
    private Integer u;
    private Integer v;
    private String w;
    private String x;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.jjoe64.graphview.c$1  reason: invalid class name */
    /* loaded from: classes4-dex2jar.jar:com/jjoe64/graphview/c$1.class */
    public static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f33565a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002c -> B:16:0x001d). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x0028 -> B:12:0x0013). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC0541c.a().length];
            f33565a = iArr;
            try {
                iArr[EnumC0541c.f33571b - 1] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f33565a[EnumC0541c.f33570a - 1] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f33565a[EnumC0541c.f33572c - 1] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/jjoe64/graphview/c$a.class */
    public enum a {
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

    /* loaded from: classes4-dex2jar.jar:com/jjoe64/graphview/c$b.class */
    public final class b {

        /* renamed from: a  reason: collision with root package name */
        public float f33566a;

        /* renamed from: b  reason: collision with root package name */
        public Paint.Align f33567b;

        /* renamed from: c  reason: collision with root package name */
        public Paint.Align f33568c;

        /* renamed from: d  reason: collision with root package name */
        public int f33569d;
        public int e;
        public int f;
        public int g;
        public boolean h;
        public int i;
        public float j;
        public int k;
        public float l;
        public int m;
        public float n;
        boolean o;
        boolean p;
        a q;
        int r;
        int s = EnumC0541c.f33571b;

        public b() {
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* renamed from: com.jjoe64.graphview.c$c  reason: collision with other inner class name */
    /* loaded from: classes4-dex2jar.jar:com/jjoe64/graphview/c$c.class */
    public static final class EnumC0541c extends Enum<EnumC0541c> {

        /* renamed from: a  reason: collision with root package name */
        public static final int f33570a = 1;

        /* renamed from: b  reason: collision with root package name */
        public static final int f33571b = 2;

        /* renamed from: c  reason: collision with root package name */
        public static final int f33572c = 3;

        /* renamed from: d  reason: collision with root package name */
        private static final /* synthetic */ int[] f33573d = {1, 2, 3};

        private EnumC0541c(String str, int i) {
        }

        public static int[] a() {
            return (int[]) f33573d.clone();
        }
    }

    public c(GraphView graphView) {
        int i;
        this.h = graphView;
        a(new com.jjoe64.graphview.b());
        TypedValue typedValue = new TypedValue();
        graphView.getContext().getTheme().resolveAttribute(16842818, typedValue, true);
        int i2 = -7829368;
        int i3 = -16777216;
        int i4 = 20;
        try {
            TypedArray obtainStyledAttributes = graphView.getContext().obtainStyledAttributes(typedValue.data, new int[]{16842806, 16842808, 16842901, 16843327});
            i3 = obtainStyledAttributes.getColor(0, -16777216);
            i2 = obtainStyledAttributes.getColor(1, -7829368);
            i4 = obtainStyledAttributes.getDimensionPixelSize(2, 20);
            i = obtainStyledAttributes.getDimensionPixelSize(3, 20);
            obtainStyledAttributes.recycle();
        } catch (Exception e) {
            i = 20;
        }
        this.f33561a.f33569d = i3;
        this.f33561a.e = i3;
        this.f33561a.f = i3;
        this.f33561a.g = i2;
        this.f33561a.f33566a = i4;
        this.f33561a.i = i;
        b bVar = this.f33561a;
        bVar.r = ((int) bVar.f33566a) / 5;
        this.f33561a.f33567b = Paint.Align.RIGHT;
        this.f33561a.f33568c = Paint.Align.LEFT;
        this.f33561a.h = true;
        b bVar2 = this.f33561a;
        bVar2.k = bVar2.f33569d;
        b bVar3 = this.f33561a;
        bVar3.m = bVar3.f;
        b bVar4 = this.f33561a;
        bVar4.j = bVar4.f33566a;
        b bVar5 = this.f33561a;
        bVar5.l = bVar5.f33566a;
        this.f33561a.o = true;
        this.f33561a.p = true;
        this.f33561a.n = BitmapDescriptorFactory.HUE_RED;
        this.f33561a.q = a.BOTH;
        l();
        this.f33564d = 5;
        this.e = 5;
        this.g = true;
        this.f = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0066, code lost:
        if (r12 < 10.0d) goto L_0x00a2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x009f, code lost:
        if (r12 < 15.0d) goto L_0x00a2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00a2, code lost:
        r7 = 4621819117588971520(0x4024000000000000, double:10.0);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [double] */
    /* JADX WARN: Type inference failed for: r12v2, types: [double] */
    /* JADX WARN: Type inference failed for: r7v1, types: [double] */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v2, types: [double] */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9 */
    /* JADX WARN: Unknown variable types count: 3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static double a(double r7, boolean r9) {
        /*
            r0 = 0
            r10 = r0
        L_0x0002:
            r0 = r10
            r11 = r0
            r0 = r7
            r12 = r0
            r0 = r7
            double r0 = java.lang.Math.abs(r0)
            r1 = 4621819117588971520(0x4024000000000000, double:10.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x001f
            r0 = r7
            r1 = 4621819117588971520(0x4024000000000000, double:10.0)
            double r0 = r0 / r1
            r7 = r0
            int r10 = r10 + 1
            goto L_0x0002
        L_0x001f:
            r0 = r12
            double r0 = java.lang.Math.abs(r0)
            r1 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0037
            r0 = r12
            r1 = 4621819117588971520(0x4024000000000000, double:10.0)
            double r0 = r0 * r1
            r12 = r0
            int r11 = r11 + (-1)
            goto L_0x001f
        L_0x0037:
            r0 = r9
            if (r0 == 0) goto L_0x006c
            r0 = r12
            r7 = r0
            r0 = r12
            r1 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x00a6
            r0 = r12
            r1 = 4611686018427387904(0x4000000000000000, double:2.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x0051
            goto L_0x007f
        L_0x0051:
            r0 = r12
            r1 = 4617315517961601024(0x4014000000000000, double:5.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x005d
            goto L_0x008f
        L_0x005d:
            r0 = r12
            r7 = r0
            r0 = r12
            r1 = 4621819117588971520(0x4024000000000000, double:10.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x00a6
            goto L_0x00a2
        L_0x006c:
            r0 = r12
            r7 = r0
            r0 = r12
            r1 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x00a6
            r0 = r12
            r1 = 4617202927970916762(0x401399999999999a, double:4.9)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x0086
        L_0x007f:
            r0 = 4611686018427387904(0x4000000000000000, double:2.0)
            r7 = r0
            goto L_0x00a6
        L_0x0086:
            r0 = r12
            r1 = 4621762822593629389(0x4023cccccccccccd, double:9.9)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x0096
        L_0x008f:
            r0 = 4617315517961601024(0x4014000000000000, double:5.0)
            r7 = r0
            goto L_0x00a6
        L_0x0096:
            r0 = r12
            r7 = r0
            r0 = r12
            r1 = 4624633867356078080(0x402e000000000000, double:15.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x00a6
        L_0x00a2:
            r0 = 4621819117588971520(0x4024000000000000, double:10.0)
            r7 = r0
        L_0x00a6:
            r0 = r7
            r1 = 4621819117588971520(0x4024000000000000, double:10.0)
            r2 = r11
            double r2 = (double) r2
            double r1 = java.lang.Math.pow(r1, r2)
            double r0 = r0 * r1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.jjoe64.graphview.c.a(double, boolean):double");
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x016b, code lost:
        if (r0 <= r0) goto L_0x0175;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v103, types: [double] */
    /* JADX WARN: Type inference failed for: r0v25, types: [double] */
    /* JADX WARN: Type inference failed for: r17v1, types: [double] */
    /* JADX WARN: Type inference failed for: r17v16 */
    /* JADX WARN: Type inference failed for: r17v17 */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r17v6 */
    /* JADX WARN: Type inference failed for: r17v8 */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v1, types: [double] */
    /* JADX WARN: Type inference failed for: r19v5 */
    /* JADX WARN: Unknown variable types count: 4 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean a(boolean r7) {
        /*
            Method dump skipped, instructions count: 617
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.jjoe64.graphview.c.a(boolean):boolean");
    }

    private void b(Canvas canvas) {
        int i;
        Rect rect;
        this.m.setColor(this.f33561a.f);
        int i2 = 0;
        for (Map.Entry<Integer, Double> entry : this.k.entrySet()) {
            if (this.f33561a.h) {
                if (entry.getValue().doubleValue() == 0.0d) {
                    this.l.setStrokeWidth(5.0f);
                } else {
                    this.l.setStrokeWidth(BitmapDescriptorFactory.HUE_RED);
                }
            }
            if (this.f33561a.q.drawVertical() && entry.getKey().intValue() <= this.h.d()) {
                canvas.drawLine(this.h.a() + entry.getKey().intValue(), this.h.b(), this.h.a() + entry.getKey().intValue(), this.h.b() + this.h.c(), this.l);
            }
            if (this.f33561a.o) {
                if (this.f33561a.n <= BitmapDescriptorFactory.HUE_RED || this.f33561a.n > 180.0f) {
                    this.m.setTextAlign(Paint.Align.CENTER);
                    if (i2 == this.k.size() - 1) {
                        this.m.setTextAlign(Paint.Align.RIGHT);
                    }
                    if (i2 == 0) {
                        this.m.setTextAlign(Paint.Align.LEFT);
                    }
                } else if (this.f33561a.n < 90.0f) {
                    this.m.setTextAlign(Paint.Align.RIGHT);
                } else if (this.f33561a.n <= 180.0f) {
                    this.m.setTextAlign(Paint.Align.LEFT);
                }
                String a2 = this.f33563c.a(entry.getValue().doubleValue(), true);
                String str = a2;
                if (a2 == null) {
                    str = "";
                }
                String[] split = str.split(StringUtils.LF);
                if (this.f33561a.n <= BitmapDescriptorFactory.HUE_RED || this.f33561a.n > 180.0f) {
                    i = 0;
                } else {
                    this.m.getTextBounds(split[0], 0, split[0].length(), new Rect());
                    i = (int) Math.abs(rect.width() * Math.cos(Math.toRadians(this.f33561a.n)));
                }
                for (int i3 = 0; i3 < split.length; i3++) {
                    float height = (((canvas.getHeight() - this.f33561a.i) - c()) - ((((split.length - i3) - 1) * this.f33561a.f33566a) * 1.1f)) + this.f33561a.r;
                    float a3 = this.h.a() + entry.getKey().intValue();
                    if (this.f33561a.n > BitmapDescriptorFactory.HUE_RED && this.f33561a.n < 90.0f) {
                        canvas.save();
                        float f = a3 + i;
                        canvas.rotate(this.f33561a.n, f, height);
                        canvas.drawText(split[i3], f, height, this.m);
                        canvas.restore();
                    } else if (this.f33561a.n <= BitmapDescriptorFactory.HUE_RED || this.f33561a.n > 180.0f) {
                        canvas.drawText(split[i3], a3, height, this.m);
                    } else {
                        canvas.save();
                        float f2 = a3 - i;
                        canvas.rotate(this.f33561a.n - 180.0f, f2, height);
                        canvas.drawText(split[i3], f2, height, this.m);
                        canvas.restore();
                    }
                }
            }
            i2++;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0109 A[LOOP:1: B:16:0x0101->B:18:0x0109, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void c(android.graphics.Canvas r8) {
        /*
            Method dump skipped, instructions count: 323
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.jjoe64.graphview.c.c(android.graphics.Canvas):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x0203 A[LOOP:1: B:49:0x01fb->B:51:0x0203, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void d(android.graphics.Canvas r8) {
        /*
            Method dump skipped, instructions count: 582
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.jjoe64.graphview.c.d(android.graphics.Canvas):void");
    }

    private void l() {
        Paint paint = new Paint();
        this.l = paint;
        paint.setColor(this.f33561a.g);
        this.l.setStrokeWidth(BitmapDescriptorFactory.HUE_RED);
        Paint paint2 = new Paint();
        this.m = paint2;
        paint2.setTextSize(this.f33561a.f33566a);
        this.m.setAntiAlias(true);
        Paint paint3 = new Paint();
        this.n = paint3;
        paint3.setTextSize(this.f33561a.f33566a);
        this.n.setTextAlign(Paint.Align.CENTER);
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x0142, code lost:
        if (r0 <= r0) goto L_0x014c;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v29, types: [double] */
    /* JADX WARN: Type inference failed for: r0v94, types: [double] */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2, types: [double] */
    /* JADX WARN: Type inference failed for: r13v20 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r13v8 */
    /* JADX WARN: Unknown variable types count: 3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m() {
        /*
            Method dump skipped, instructions count: 568
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.jjoe64.graphview.c.m():boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x0184, code lost:
        if (r0 <= r0) goto L_0x018e;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:51:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0203  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x020c  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x023b  */
    /* JADX WARN: Type inference failed for: r0v115, types: [double] */
    /* JADX WARN: Type inference failed for: r0v34, types: [double] */
    /* JADX WARN: Type inference failed for: r19v12 */
    /* JADX WARN: Type inference failed for: r19v3 */
    /* JADX WARN: Type inference failed for: r19v4 */
    /* JADX WARN: Type inference failed for: r19v7 */
    /* JADX WARN: Type inference failed for: r21v0 */
    /* JADX WARN: Type inference failed for: r21v1, types: [double] */
    /* JADX WARN: Type inference failed for: r21v15 */
    /* JADX WARN: Type inference failed for: r21v16 */
    /* JADX WARN: Type inference failed for: r21v2, types: [double] */
    /* JADX WARN: Type inference failed for: r21v4 */
    /* JADX WARN: Type inference failed for: r21v8 */
    /* JADX WARN: Type inference failed for: r21v9 */
    /* JADX WARN: Unknown variable types count: 5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void n() {
        /*
            Method dump skipped, instructions count: 720
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.jjoe64.graphview.c.n():void");
    }

    private void o() {
        String a2 = this.f33563c.a(this.h.f33523c.d(false), false);
        String a3 = "";
        String str = a2;
        if (a2 == null) {
            str = "";
        }
        Rect rect = new Rect();
        this.m.getTextBounds(str, 0, str.length(), rect);
        this.o = Integer.valueOf(rect.width());
        this.q = Integer.valueOf(rect.height());
        a3 = this.f33563c.a(this.h.f33523c.c(false), false);
        if (a3 == null) {
        }
        this.m.getTextBounds(a3, 0, a3.length(), rect);
        Integer valueOf = Integer.valueOf(Math.max(this.o.intValue(), rect.width()));
        this.o = valueOf;
        Integer valueOf2 = Integer.valueOf(valueOf.intValue() + 6);
        this.o = valueOf2;
        this.o = Integer.valueOf(valueOf2.intValue() + this.f33561a.r);
        int i = 1;
        for (byte b2 : a3.getBytes()) {
            i = i;
            if (b2 == 10) {
                i++;
            }
        }
        this.q = Integer.valueOf(this.q.intValue() * i);
    }

    private void p() {
        if (this.h.f33524d == null) {
            this.s = 0;
            this.t = 0;
            return;
        }
        String a2 = this.h.f33524d.d().a(((this.h.f33524d.c() - this.h.f33524d.b()) * 0.783d) + this.h.f33524d.b(), false);
        Rect rect = new Rect();
        this.m.getTextBounds(a2, 0, a2.length(), rect);
        this.s = Integer.valueOf(rect.width());
        this.t = Integer.valueOf(rect.height());
        byte[] bytes = a2.getBytes();
        int i = 1;
        for (byte b2 : bytes) {
            i = i;
            if (b2 == 10) {
                i++;
            }
        }
        this.t = Integer.valueOf(this.t.intValue() * i);
    }

    public final float a() {
        return this.f33561a.f33566a;
    }

    public final void a(int i) {
        this.f33561a.f33569d = i;
    }

    public final void a(Canvas canvas) {
        Integer valueOf;
        boolean z = false;
        z = true;
        if (this.u == null) {
            String a2 = this.f33563c.a(((this.h.f33523c.b(false) - this.h.f33523c.a(false)) * 0.783d) + this.h.f33523c.a(false), true);
            String str = a2;
            if (a2 == null) {
                str = "";
            }
            Rect rect = new Rect();
            this.m.getTextBounds(str, 0, str.length(), rect);
            this.u = Integer.valueOf(rect.width());
            if (!this.r) {
                this.v = Integer.valueOf(rect.height());
                int i = 1;
                for (byte b2 : str.getBytes()) {
                    i = i;
                    if (b2 == 10) {
                        i++;
                    }
                }
                this.v = Integer.valueOf(this.v.intValue() * i);
                this.v = Integer.valueOf((int) Math.max(valueOf.intValue(), this.f33561a.f33566a));
            }
            if (this.f33561a.n > BitmapDescriptorFactory.HUE_RED && this.f33561a.n <= 180.0f) {
                this.v = Integer.valueOf(((int) Math.round(Math.abs(this.v.intValue() * Math.cos(Math.toRadians(this.f33561a.n))))) + ((int) Math.round(Math.abs(this.u.intValue() * Math.sin(Math.toRadians(this.f33561a.n))))));
                this.u = Integer.valueOf(((int) Math.round(Math.abs(this.v.intValue() * Math.sin(Math.toRadians(this.f33561a.n))))) + ((int) Math.round(Math.abs(this.u.intValue() * Math.cos(Math.toRadians(this.f33561a.n))))));
            }
            this.v = Integer.valueOf(this.v.intValue() + this.f33561a.r);
            z = true;
        }
        if (this.o == null) {
            o();
            z = true;
        }
        if (this.s == null) {
            p();
        }
        if (z) {
            this.h.a(canvas);
            return;
        }
        if (!this.f33562b) {
            n();
        }
        if (this.f33562b) {
            d(canvas);
            c(canvas);
            b(canvas);
            String str2 = this.w;
            if (str2 != null && str2.length() > 0) {
                this.n.setColor(this.f33561a.m);
                this.n.setTextSize(this.f33561a.l);
                canvas.drawText(this.w, canvas.getWidth() / 2, canvas.getHeight() - this.f33561a.i, this.n);
            }
            String str3 = this.x;
            if (str3 != null && str3.length() > 0) {
                this.n.setColor(this.f33561a.k);
                this.n.setTextSize(this.f33561a.j);
                float d2 = d();
                float height = canvas.getHeight() / 2;
                canvas.save();
                canvas.rotate(-90.0f, d2, height);
                canvas.drawText(this.x, d2, height, this.n);
                canvas.restore();
            }
            if (this.h.f33524d != null) {
                h hVar = this.h.f33524d;
                if (hVar.i != null && hVar.i.length() > 0) {
                    hVar.h.setColor(hVar.k);
                    hVar.h.setTextSize(hVar.f());
                    float width = canvas.getWidth() - (hVar.f() / 2.0f);
                    float height2 = canvas.getHeight() / 2;
                    canvas.save();
                    canvas.rotate(-90.0f, width, height2);
                    canvas.drawText(hVar.i, width, height2, hVar.h);
                    canvas.restore();
                }
            }
        }
    }

    public final void a(d dVar) {
        this.f33563c = dVar;
        dVar.a(this.h.f33523c);
    }

    public final void a(boolean z, boolean z2) {
        this.f33562b = false;
        if (!z) {
            if (!this.p) {
                this.o = null;
            }
            this.q = null;
            this.s = null;
            this.t = null;
        }
    }

    public final int b() {
        return this.f33561a.f;
    }

    public final void b(int i) {
        this.f33561a.f = i;
    }

    public final int c() {
        String str = this.w;
        if (str == null || str.length() <= 0) {
            return 0;
        }
        return (int) this.f33561a.l;
    }

    public final void c(int i) {
        this.f33561a.g = i;
        l();
    }

    public final int d() {
        String str = this.x;
        if (str == null || str.length() <= 0) {
            return 0;
        }
        return (int) this.f33561a.j;
    }

    public final b e() {
        return this.f33561a;
    }

    public final int f() {
        if (this.f33561a.s == EnumC0541c.f33570a || this.f33561a.s == EnumC0541c.f33572c || this.o == null || !this.f33561a.p) {
            return 0;
        }
        return this.o.intValue();
    }

    public final int g() {
        if (this.v == null || !this.f33561a.o) {
            return 0;
        }
        return this.v.intValue();
    }

    public final int h() {
        return this.f33561a.g;
    }

    public final boolean i() {
        return this.f33561a.h;
    }

    public final void j() {
        this.f33561a.f33566a = 28.0f;
        l();
    }

    public final int k() {
        Integer num = this.s;
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }
}
