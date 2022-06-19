package p1727n3.p1874y.p1876b.p1877a;

import android.content.Context;
import android.os.Looper;
import androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector;
import java.util.Map;
import n3.y.b.a.w0.n;
import p1727n3.p1874y.p1876b.p1877a.p1878m0.C27101a;
import p1727n3.p1874y.p1876b.p1877a.p1902v0.AbstractC27387g;
import p1727n3.p1874y.p1876b.p1877a.p1903w0.AbstractC27402d;
import p1727n3.p1874y.p1876b.p1877a.p1903w0.n$a;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.AbstractC27415a;
import p1727n3.p1874y.p1906c.C27465a1;
/* renamed from: n3.y.b.a.k0$b */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/k0$b.class */
public final class k0$b {

    /* renamed from: a */
    public final Context f75726a;

    /* renamed from: b */
    public final C27465a1 f75727b;

    /* renamed from: c */
    public AbstractC27415a f75728c;

    /* renamed from: d */
    public AbstractC27387g f75729d;

    /* renamed from: e */
    public C27075d f75730e;

    /* renamed from: f */
    public AbstractC27402d f75731f;

    /* renamed from: g */
    public C27101a f75732g;

    /* renamed from: h */
    public Looper f75733h;

    /* renamed from: i */
    public boolean f75734i;

    public k0$b(Context context, C27465a1 c27465a1) {
        n nVar;
        DefaultTrackSelector defaultTrackSelector = new DefaultTrackSelector(context);
        C27075d c27075d = new C27075d();
        Map map = n.n;
        synchronized (n.class) {
            try {
                if (n.s == null) {
                    n$a n_a = new n$a(context);
                    n.s = new n(n_a.f77136a, n_a.f77137b, n_a.f77138c, n_a.f77139d, n_a.f77140e);
                }
                nVar = n.s;
            } catch (Throwable th) {
                throw th;
            }
        }
        Looper myLooper = Looper.myLooper();
        myLooper = myLooper == null ? Looper.getMainLooper() : myLooper;
        AbstractC27415a abstractC27415a = AbstractC27415a.f77151a;
        C27101a c27101a = new C27101a(abstractC27415a);
        this.f75726a = context;
        this.f75727b = c27465a1;
        this.f75729d = defaultTrackSelector;
        this.f75730e = c27075d;
        this.f75731f = nVar;
        this.f75733h = myLooper;
        this.f75732g = c27101a;
        this.f75728c = abstractC27415a;
    }
}
