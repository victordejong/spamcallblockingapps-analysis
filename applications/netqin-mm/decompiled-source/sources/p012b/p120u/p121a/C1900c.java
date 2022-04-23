package p012b.p120u.p121a;
/* renamed from: b.u.a.c */
/* loaded from: classes-dex2jar.jar:b/u/a/c.class */
public final class C1900c {

    /* renamed from: e */
    public static final C1900c f7490e;

    /* renamed from: f */
    public static final C1900c f7491f;

    /* renamed from: g */
    public static final C1900c f7492g;

    /* renamed from: h */
    public static final C1900c f7493h;

    /* renamed from: i */
    public static final C1900c f7494i;

    /* renamed from: j */
    public static final C1900c f7495j;

    /* renamed from: a */
    public final float[] f7496a;

    /* renamed from: b */
    public final float[] f7497b = new float[3];

    /* renamed from: c */
    public final float[] f7498c = new float[3];

    /* renamed from: d */
    public boolean f7499d = true;

    static {
        C1900c cVar = new C1900c();
        f7490e = cVar;
        m31759b(cVar);
        m31753e(f7490e);
        C1900c cVar2 = new C1900c();
        f7491f = cVar2;
        m31755d(cVar2);
        m31753e(f7491f);
        C1900c cVar3 = new C1900c();
        f7492g = cVar3;
        m31762a(cVar3);
        m31753e(f7492g);
        C1900c cVar4 = new C1900c();
        f7493h = cVar4;
        m31759b(cVar4);
        m31757c(f7493h);
        C1900c cVar5 = new C1900c();
        f7494i = cVar5;
        m31755d(cVar5);
        m31757c(f7494i);
        C1900c cVar6 = new C1900c();
        f7495j = cVar6;
        m31762a(cVar6);
        m31757c(f7495j);
    }

    public C1900c() {
        float[] fArr = new float[3];
        this.f7496a = fArr;
        m31761a(fArr);
        m31761a(this.f7497b);
        m31746l();
    }

    /* renamed from: a */
    public static void m31762a(C1900c cVar) {
        float[] fArr = cVar.f7497b;
        fArr[1] = 0.26f;
        fArr[2] = 0.45f;
    }

    /* renamed from: a */
    public static void m31761a(float[] fArr) {
        fArr[0] = 0.0f;
        fArr[1] = 0.5f;
        fArr[2] = 1.0f;
    }

    /* renamed from: b */
    public static void m31759b(C1900c cVar) {
        float[] fArr = cVar.f7497b;
        fArr[0] = 0.55f;
        fArr[1] = 0.74f;
    }

    /* renamed from: c */
    public static void m31757c(C1900c cVar) {
        float[] fArr = cVar.f7496a;
        fArr[1] = 0.3f;
        fArr[2] = 0.4f;
    }

    /* renamed from: d */
    public static void m31755d(C1900c cVar) {
        float[] fArr = cVar.f7497b;
        fArr[0] = 0.3f;
        fArr[1] = 0.5f;
        fArr[2] = 0.7f;
    }

    /* renamed from: e */
    public static void m31753e(C1900c cVar) {
        float[] fArr = cVar.f7496a;
        fArr[0] = 0.35f;
        fArr[1] = 1.0f;
    }

    /* renamed from: a */
    public float m31763a() {
        return this.f7498c[1];
    }

    /* renamed from: b */
    public float m31760b() {
        return this.f7497b[2];
    }

    /* renamed from: c */
    public float m31758c() {
        return this.f7496a[2];
    }

    /* renamed from: d */
    public float m31756d() {
        return this.f7497b[0];
    }

    /* renamed from: e */
    public float m31754e() {
        return this.f7496a[0];
    }

    /* renamed from: f */
    public float m31752f() {
        return this.f7498c[2];
    }

    /* renamed from: g */
    public float m31751g() {
        return this.f7498c[0];
    }

    /* renamed from: h */
    public float m31750h() {
        return this.f7497b[1];
    }

    /* renamed from: i */
    public float m31749i() {
        return this.f7496a[1];
    }

    /* renamed from: j */
    public boolean m31748j() {
        return this.f7499d;
    }

    /* renamed from: k */
    public void m31747k() {
        int length = this.f7498c.length;
        float f = 0.0f;
        for (int i = 0; i < length; i++) {
            float f2 = this.f7498c[i];
            f = f;
            if (f2 > 0.0f) {
                f += f2;
            }
        }
        if (f != 0.0f) {
            int length2 = this.f7498c.length;
            for (int i2 = 0; i2 < length2; i2++) {
                float[] fArr = this.f7498c;
                if (fArr[i2] > 0.0f) {
                    fArr[i2] = fArr[i2] / f;
                }
            }
        }
    }

    /* renamed from: l */
    public final void m31746l() {
        float[] fArr = this.f7498c;
        fArr[0] = 0.24f;
        fArr[1] = 0.52f;
        fArr[2] = 0.24f;
    }
}
