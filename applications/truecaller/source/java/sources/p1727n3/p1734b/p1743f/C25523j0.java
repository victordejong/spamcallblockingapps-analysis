package p1727n3.p1734b.p1743f;
/* renamed from: n3.b.f.j0 */
/* loaded from: classes-dex2jar.jar:n3/b/f/j0.class */
public class C25523j0 {

    /* renamed from: a */
    public int f71401a = 0;

    /* renamed from: b */
    public int f71402b = 0;

    /* renamed from: c */
    public int f71403c = Integer.MIN_VALUE;

    /* renamed from: d */
    public int f71404d = Integer.MIN_VALUE;

    /* renamed from: e */
    public int f71405e = 0;

    /* renamed from: f */
    public int f71406f = 0;

    /* renamed from: g */
    public boolean f71407g = false;

    /* renamed from: h */
    public boolean f71408h = false;

    /* renamed from: a */
    public void m3345a(int i, int i2) {
        this.f71403c = i;
        this.f71404d = i2;
        this.f71408h = true;
        if (this.f71407g) {
            if (i2 != Integer.MIN_VALUE) {
                this.f71401a = i2;
            }
            if (i == Integer.MIN_VALUE) {
                return;
            }
            this.f71402b = i;
            return;
        }
        if (i != Integer.MIN_VALUE) {
            this.f71401a = i;
        }
        if (i2 == Integer.MIN_VALUE) {
            return;
        }
        this.f71402b = i2;
    }
}
