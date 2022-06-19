package p193e.p194a.p1187r2;
/* renamed from: e.a.r2.h0 */
/* loaded from: classes5-dex2jar.jar:e/a/r2/h0.class */
public class C19862h0 {

    /* renamed from: e */
    public static C19862h0 f56268e;

    /* renamed from: f */
    public static int f56269f;

    /* renamed from: a */
    public AbstractC19888u f56270a;

    /* renamed from: b */
    public Object f56271b;

    /* renamed from: c */
    public C19872n f56272c;

    /* renamed from: d */
    public C19862h0 f56273d;

    /* renamed from: a */
    public static <T> C19862h0 m11851a(T t, AbstractC19888u<T, ?> abstractC19888u, C19872n c19872n) {
        C19862h0 c19862h0;
        synchronized (C19862h0.class) {
            try {
                c19862h0 = f56268e;
                if (c19862h0 != null) {
                    f56268e = c19862h0.f56273d;
                    c19862h0.f56273d = null;
                    f56269f--;
                } else {
                    c19862h0 = new C19862h0();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        c19862h0.f56271b = t;
        c19862h0.f56270a = abstractC19888u;
        c19862h0.f56272c = c19872n;
        return c19862h0;
    }

    /* renamed from: b */
    public void m11850b() {
        this.f56270a = null;
        this.f56271b = null;
        this.f56272c = null;
        synchronized (C19862h0.class) {
            try {
                int i = f56269f;
                if (i < 5) {
                    this.f56273d = f56268e;
                    f56268e = this;
                    f56269f = i + 1;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
