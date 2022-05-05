package p459j.p460a.p603y;
/* renamed from: j.a.y.a */
/* loaded from: classes2-dex2jar.jar:j/a/y/a.class */
public final class C14447a {

    /* renamed from: a */
    public long f32341a = System.currentTimeMillis();

    /* renamed from: b */
    public long f32342b = System.currentTimeMillis();

    /* renamed from: c */
    public int f32343c;

    /* renamed from: d */
    public int f32344d;

    /* renamed from: e */
    public final int f32345e;

    /* renamed from: f */
    public final int f32346f;

    public C14447a(int i, int i2) {
        this.f32345e = i;
        this.f32346f = i2;
    }

    /* renamed from: a */
    public final int m1282a() {
        long j = this.f32341a;
        long j2 = this.f32342b;
        if (j <= j2) {
            return (int) (j2 - j);
        }
        throw new IllegalStateException("[DailySyncJobEvent] Duration cannot be negative.");
    }

    /* renamed from: b */
    public final int m1281b() {
        return this.f32344d;
    }

    /* renamed from: c */
    public final int m1280c() {
        return this.f32343c;
    }

    /* renamed from: d */
    public final int m1279d() {
        return this.f32345e;
    }

    /* renamed from: e */
    public final int m1278e() {
        return this.f32346f;
    }

    /* renamed from: f */
    public final void m1277f() {
        this.f32344d++;
    }

    /* renamed from: g */
    public final void m1276g() {
        this.f32343c++;
    }

    /* renamed from: h */
    public final void m1275h() {
        this.f32341a = System.currentTimeMillis();
    }

    /* renamed from: i */
    public final void m1274i() {
        this.f32342b = System.currentTimeMillis();
    }
}
