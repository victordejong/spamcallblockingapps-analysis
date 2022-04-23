package androidx.j.a;
/* loaded from: classes-dex2jar.jar:androidx/j/a/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static final c f2477a;

    /* renamed from: b  reason: collision with root package name */
    public static final c f2478b;

    /* renamed from: c  reason: collision with root package name */
    public static final c f2479c;

    /* renamed from: d  reason: collision with root package name */
    public static final c f2480d;
    public static final c e;
    public static final c f;
    final float[] g;
    final float[] h;
    final float[] i;
    boolean j = true;

    static {
        c cVar = new c();
        f2477a = cVar;
        c(cVar);
        d(cVar);
        c cVar2 = new c();
        f2478b = cVar2;
        b(cVar2);
        d(cVar2);
        c cVar3 = new c();
        f2479c = cVar3;
        a(cVar3);
        d(cVar3);
        c cVar4 = new c();
        f2480d = cVar4;
        c(cVar4);
        e(cVar4);
        c cVar5 = new c();
        e = cVar5;
        b(cVar5);
        e(cVar5);
        c cVar6 = new c();
        f = cVar6;
        a(cVar6);
        e(cVar6);
    }

    c() {
        float[] fArr = new float[3];
        this.g = fArr;
        float[] fArr2 = new float[3];
        this.h = fArr2;
        this.i = r0;
        a(fArr);
        a(fArr2);
        float[] fArr3 = {0.24f, 0.52f, 0.24f};
    }

    c(c cVar) {
        float[] fArr = new float[3];
        this.g = fArr;
        float[] fArr2 = new float[3];
        this.h = fArr2;
        float[] fArr3 = new float[3];
        this.i = fArr3;
        System.arraycopy(cVar.g, 0, fArr, 0, fArr.length);
        System.arraycopy(cVar.h, 0, fArr2, 0, fArr2.length);
        System.arraycopy(cVar.i, 0, fArr3, 0, fArr3.length);
    }

    private static void a(c cVar) {
        float[] fArr = cVar.h;
        fArr[1] = 0.26f;
        fArr[2] = 0.45f;
    }

    private static void a(float[] fArr) {
        fArr[0] = 0.0f;
        fArr[1] = 0.5f;
        fArr[2] = 1.0f;
    }

    private static void b(c cVar) {
        float[] fArr = cVar.h;
        fArr[0] = 0.3f;
        fArr[1] = 0.5f;
        fArr[2] = 0.7f;
    }

    private static void c(c cVar) {
        float[] fArr = cVar.h;
        fArr[0] = 0.55f;
        fArr[1] = 0.74f;
    }

    private static void d(c cVar) {
        float[] fArr = cVar.g;
        fArr[0] = 0.35f;
        fArr[1] = 1.0f;
    }

    private static void e(c cVar) {
        float[] fArr = cVar.g;
        fArr[1] = 0.3f;
        fArr[2] = 0.4f;
    }
}
