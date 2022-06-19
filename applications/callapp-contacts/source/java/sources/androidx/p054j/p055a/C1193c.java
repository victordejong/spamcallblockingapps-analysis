package androidx.p054j.p055a;
/* renamed from: androidx.j.a.c */
/* loaded from: classes-dex2jar.jar:androidx/j/a/c.class */
public final class C1193c {

    /* renamed from: a */
    public static final C1193c f4652a;

    /* renamed from: b */
    public static final C1193c f4653b;

    /* renamed from: c */
    public static final C1193c f4654c;

    /* renamed from: d */
    public static final C1193c f4655d;

    /* renamed from: e */
    public static final C1193c f4656e;

    /* renamed from: f */
    public static final C1193c f4657f;

    /* renamed from: g */
    final float[] f4658g;

    /* renamed from: h */
    final float[] f4659h;

    /* renamed from: i */
    final float[] f4660i;

    /* renamed from: j */
    boolean f4661j = true;

    static {
        C1193c c1193c = new C1193c();
        f4652a = c1193c;
        m43381c(c1193c);
        m43380d(c1193c);
        C1193c c1193c2 = new C1193c();
        f4653b = c1193c2;
        m43382b(c1193c2);
        m43380d(c1193c2);
        C1193c c1193c3 = new C1193c();
        f4654c = c1193c3;
        m43384a(c1193c3);
        m43380d(c1193c3);
        C1193c c1193c4 = new C1193c();
        f4655d = c1193c4;
        m43381c(c1193c4);
        m43379e(c1193c4);
        C1193c c1193c5 = new C1193c();
        f4656e = c1193c5;
        m43382b(c1193c5);
        m43379e(c1193c5);
        C1193c c1193c6 = new C1193c();
        f4657f = c1193c6;
        m43384a(c1193c6);
        m43379e(c1193c6);
    }

    C1193c() {
        float[] fArr = new float[3];
        this.f4658g = fArr;
        float[] fArr2 = new float[3];
        this.f4659h = fArr2;
        this.f4660i = r0;
        m43383a(fArr);
        m43383a(fArr2);
        float[] fArr3 = {0.24f, 0.52f, 0.24f};
    }

    C1193c(C1193c c1193c) {
        float[] fArr = new float[3];
        this.f4658g = fArr;
        float[] fArr2 = new float[3];
        this.f4659h = fArr2;
        float[] fArr3 = new float[3];
        this.f4660i = fArr3;
        System.arraycopy(c1193c.f4658g, 0, fArr, 0, fArr.length);
        System.arraycopy(c1193c.f4659h, 0, fArr2, 0, fArr2.length);
        System.arraycopy(c1193c.f4660i, 0, fArr3, 0, fArr3.length);
    }

    /* renamed from: a */
    private static void m43384a(C1193c c1193c) {
        float[] fArr = c1193c.f4659h;
        fArr[1] = 0.26f;
        fArr[2] = 0.45f;
    }

    /* renamed from: a */
    private static void m43383a(float[] fArr) {
        fArr[0] = 0.0f;
        fArr[1] = 0.5f;
        fArr[2] = 1.0f;
    }

    /* renamed from: b */
    private static void m43382b(C1193c c1193c) {
        float[] fArr = c1193c.f4659h;
        fArr[0] = 0.3f;
        fArr[1] = 0.5f;
        fArr[2] = 0.7f;
    }

    /* renamed from: c */
    private static void m43381c(C1193c c1193c) {
        float[] fArr = c1193c.f4659h;
        fArr[0] = 0.55f;
        fArr[1] = 0.74f;
    }

    /* renamed from: d */
    private static void m43380d(C1193c c1193c) {
        float[] fArr = c1193c.f4658g;
        fArr[0] = 0.35f;
        fArr[1] = 1.0f;
    }

    /* renamed from: e */
    private static void m43379e(C1193c c1193c) {
        float[] fArr = c1193c.f4658g;
        fArr[1] = 0.3f;
        fArr[2] = 0.4f;
    }
}
