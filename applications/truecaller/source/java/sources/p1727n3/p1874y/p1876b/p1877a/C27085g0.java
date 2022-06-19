package p1727n3.p1874y.p1876b.p1877a;

import android.os.Handler;
import android.support.p001v4.media.session.MediaSessionCompat;
/* renamed from: n3.y.b.a.g0 */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/g0.class */
public final class C27085g0 {

    /* renamed from: a */
    public final AbstractC27087b f75702a;

    /* renamed from: b */
    public final AbstractC27086a f75703b;

    /* renamed from: c */
    public final AbstractC27096l0 f75704c;

    /* renamed from: d */
    public int f75705d;

    /* renamed from: e */
    public Object f75706e;

    /* renamed from: f */
    public Handler f75707f;

    /* renamed from: g */
    public int f75708g;

    /* renamed from: h */
    public boolean f75709h;

    /* renamed from: i */
    public boolean f75710i;

    /* renamed from: j */
    public boolean f75711j;

    /* renamed from: n3.y.b.a.g0$a */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/g0$a.class */
    public interface AbstractC27086a {
    }

    /* renamed from: n3.y.b.a.g0$b */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/g0$b.class */
    public interface AbstractC27087b {
        /* renamed from: f */
        void m933f(int i, Object obj) throws C27080f;
    }

    public C27085g0(AbstractC27086a abstractC27086a, AbstractC27087b abstractC27087b, AbstractC27096l0 abstractC27096l0, int i, Handler handler) {
        this.f75703b = abstractC27086a;
        this.f75702a = abstractC27087b;
        this.f75704c = abstractC27096l0;
        this.f75707f = handler;
        this.f75708g = i;
    }

    /* renamed from: a */
    public boolean m938a() {
        synchronized (this) {
        }
        return false;
    }

    /* renamed from: b */
    public void m937b(boolean z) {
        synchronized (this) {
            this.f75710i = z | this.f75710i;
            this.f75711j = true;
            notifyAll();
        }
    }

    /* renamed from: c */
    public C27085g0 m936c() {
        MediaSessionCompat.m43184y(!this.f75709h);
        MediaSessionCompat.m43211p(true);
        this.f75709h = true;
        v vVar = this.f75703b;
        synchronized (vVar) {
            if (vVar.w) {
                m937b(false);
            } else {
                vVar.g.m302a(15, this).sendToTarget();
            }
        }
        return this;
    }

    /* renamed from: d */
    public C27085g0 m935d(Object obj) {
        MediaSessionCompat.m43184y(!this.f75709h);
        this.f75706e = obj;
        return this;
    }

    /* renamed from: e */
    public C27085g0 m934e(int i) {
        MediaSessionCompat.m43184y(!this.f75709h);
        this.f75705d = i;
        return this;
    }
}
