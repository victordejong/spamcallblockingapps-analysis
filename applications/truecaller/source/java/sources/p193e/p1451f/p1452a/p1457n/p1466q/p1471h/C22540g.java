package p193e.p1451f.p1452a.p1457n.p1466q.p1471h;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import p193e.p1451f.p1452a.C22234h;
import p193e.p1451f.p1452a.ComponentCallbacks2C22222c;
import p193e.p1451f.p1452a.ComponentCallbacks2C22236i;
import p193e.p1451f.p1452a.p1454l.AbstractC22249a;
import p193e.p1451f.p1452a.p1457n.AbstractC22271m;
import p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22364k;
import p193e.p1451f.p1452a.p1457n.p1460o.p1461b0.AbstractC22303d;
import p193e.p1451f.p1452a.p1476r.C22591h;
import p193e.p1451f.p1452a.p1479s.C22610d;
import p193e.p1451f.p1452a.p1480t.C22623j;
/* renamed from: e.f.a.n.q.h.g */
/* loaded from: classes-dex2jar.jar:e/f/a/n/q/h/g.class */
public class C22540g {

    /* renamed from: a */
    public final AbstractC22249a f62448a;

    /* renamed from: b */
    public final Handler f62449b;

    /* renamed from: c */
    public final List<AbstractC22541b> f62450c = new ArrayList();

    /* renamed from: d */
    public final ComponentCallbacks2C22236i f62451d;

    /* renamed from: e */
    public final AbstractC22303d f62452e;

    /* renamed from: f */
    public boolean f62453f;

    /* renamed from: g */
    public boolean f62454g;

    /* renamed from: h */
    public C22234h<Bitmap> f62455h;

    /* renamed from: i */
    public a f62456i;

    /* renamed from: j */
    public boolean f62457j;

    /* renamed from: k */
    public a f62458k;

    /* renamed from: l */
    public Bitmap f62459l;

    /* renamed from: m */
    public AbstractC22271m<Bitmap> f62460m;

    /* renamed from: n */
    public a f62461n;

    /* renamed from: o */
    public int f62462o;

    /* renamed from: p */
    public int f62463p;

    /* renamed from: q */
    public int f62464q;

    /* renamed from: e.f.a.n.q.h.g$b */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/q/h/g$b.class */
    public interface AbstractC22541b {
        /* renamed from: a */
        void mo8148a();
    }

    /* renamed from: e.f.a.n.q.h.g$c */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/q/h/g$c.class */
    public class C22542c implements Handler.Callback {
        public C22542c() {
            C22540g.this = r4;
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                C22540g.this.m8150b((a) message.obj);
                return true;
            } else if (i != 2) {
                return false;
            } else {
                C22540g.this.f62451d.m8411n((a) message.obj);
                return false;
            }
        }
    }

    public C22540g(ComponentCallbacks2C22222c componentCallbacks2C22222c, AbstractC22249a abstractC22249a, int i, int i2, AbstractC22271m<Bitmap> abstractC22271m, Bitmap bitmap) {
        AbstractC22303d abstractC22303d = componentCallbacks2C22222c.f61713b;
        ComponentCallbacks2C22236i m8446e = ComponentCallbacks2C22222c.m8446e(componentCallbacks2C22222c.f61715d.getBaseContext());
        C22234h<Bitmap> mo8106a = ComponentCallbacks2C22222c.m8446e(componentCallbacks2C22222c.f61715d.getBaseContext()).mo8415f().mo8106a(C22591h.m8073J(AbstractC22364k.f62125b).mo8107G(true).mo8113A(true).mo8088t(i, i2));
        this.f62451d = m8446e;
        Handler handler = new Handler(Looper.getMainLooper(), new C22542c());
        this.f62452e = abstractC22303d;
        this.f62449b = handler;
        this.f62455h = mo8106a;
        this.f62448a = abstractC22249a;
        m8149c(abstractC22271m, bitmap);
    }

    /* renamed from: a */
    public final void m8151a() {
        if (!this.f62453f || this.f62454g) {
            return;
        }
        a aVar = this.f62461n;
        if (aVar != null) {
            this.f62461n = null;
            m8150b(aVar);
            return;
        }
        this.f62454g = true;
        int mo8366g = this.f62448a.mo8366g();
        this.f62448a.mo8369d();
        this.f62458k = new a(this.f62449b, this.f62448a.mo8372a(), SystemClock.uptimeMillis() + mo8366g);
        this.f62455h.mo8106a(new C22591h().mo8082z(new C22610d(Double.valueOf(Math.random())))).mo8421U(this.f62448a).m8429M(this.f62458k);
    }

    /* renamed from: b */
    public void m8150b(a aVar) {
        this.f62454g = false;
        if (this.f62457j) {
            this.f62449b.obtainMessage(2, aVar).sendToTarget();
        } else if (!this.f62453f) {
            this.f62461n = aVar;
        } else {
            if (aVar.g != null) {
                Bitmap bitmap = this.f62459l;
                if (bitmap != null) {
                    this.f62452e.mo8327c(bitmap);
                    this.f62459l = null;
                }
                a aVar2 = this.f62456i;
                this.f62456i = aVar;
                int size = this.f62450c.size();
                while (true) {
                    size--;
                    if (size < 0) {
                        break;
                    }
                    this.f62450c.get(size).mo8148a();
                }
                if (aVar2 != null) {
                    this.f62449b.obtainMessage(2, aVar2).sendToTarget();
                }
            }
            m8151a();
        }
    }

    /* renamed from: c */
    public void m8149c(AbstractC22271m<Bitmap> abstractC22271m, Bitmap bitmap) {
        Objects.requireNonNull(abstractC22271m, "Argument must not be null");
        this.f62460m = abstractC22271m;
        Objects.requireNonNull(bitmap, "Argument must not be null");
        this.f62459l = bitmap;
        this.f62455h = this.f62455h.mo8106a(new C22591h().m8111C(abstractC22271m, true));
        this.f62462o = C22623j.m8020d(bitmap);
        this.f62463p = bitmap.getWidth();
        this.f62464q = bitmap.getHeight();
    }
}
