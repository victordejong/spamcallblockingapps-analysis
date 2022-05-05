package p081h.p115c.p116a;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p115c.p116a.p117i.C5750e;
import p081h.p115c.p116a.p118j.C5760b;
import p081h.p115c.p116a.p118j.C5762c;
/* renamed from: h.c.a.d */
/* loaded from: classes-dex2jar.jar:h/c/a/d.class */
public abstract class AbstractC5726d {

    /* renamed from: a */
    public String f14332a = "https://ad3.apx.appier.net";

    /* renamed from: b */
    public String f14333b = "/v1/sdk/ad";

    /* renamed from: c */
    public Context f14334c;

    /* renamed from: d */
    public AbstractC5730d f14335d;

    /* renamed from: e */
    public C5750e f14336e;

    /* renamed from: f */
    public AdvertisingIdClient.Info f14337f;

    /* renamed from: g */
    public C5760b f14338g;

    /* renamed from: h */
    public C5762c f14339h;

    /* renamed from: i */
    public JSONObject f14340i;

    /* renamed from: h.c.a.d$a */
    /* loaded from: classes-dex2jar.jar:h/c/a/d$a.class */
    public class C5727a implements C5750e.AbstractC5752b {
        public C5727a() {
        }

        @Override // p081h.p115c.p116a.p117i.C5750e.AbstractC5752b
        /* renamed from: a */
        public void mo24556a(AdvertisingIdClient.Info info) {
            AbstractC5726d.this.f14337f = info;
            AbstractC5726d.this.m24632i();
        }
    }

    /* renamed from: h.c.a.d$b */
    /* loaded from: classes-dex2jar.jar:h/c/a/d$b.class */
    public class C5728b implements C5760b.AbstractC5761a {
        public C5728b() {
        }

        @Override // p081h.p115c.p116a.p118j.C5760b.AbstractC5761a
        /* renamed from: a */
        public void mo24542a(C5762c cVar) {
            AbstractC5726d.this.f14339h = cVar;
            int a = AbstractC5726d.this.f14339h.m24541a();
            if (a == -1) {
                AbstractC5726d.this.f14335d.mo24616a(EnumC5731e.NETWORK_ERROR);
            } else if (a == 200) {
                String h = AbstractC5726d.this.m24633h();
                try {
                    AbstractC5726d.this.f14340i = new JSONObject(h);
                    AbstractC5726d.this.f14335d.mo24617a(AbstractC5726d.this, false);
                } catch (JSONException e) {
                    AbstractC5726d.this.f14335d.mo24616a(EnumC5731e.INVALID_JSON);
                }
            } else if (a == 204) {
                AbstractC5726d.this.f14335d.mo24617a(AbstractC5726d.this, true);
            } else if (400 <= a && a <= 499) {
                AbstractC5726d.this.f14335d.mo24616a(EnumC5731e.BAD_REQUEST);
            } else if (500 > a || a > 599) {
                AbstractC5726d.this.f14335d.mo24616a(EnumC5731e.UNKNOWN_ERROR);
            } else {
                AbstractC5726d.this.f14335d.mo24616a(EnumC5731e.INTERNAL_SERVER_ERROR);
            }
        }
    }

    /* renamed from: h.c.a.d$c */
    /* loaded from: classes-dex2jar.jar:h/c/a/d$c.class */
    public class RunnableC5729c implements Runnable {
        public RunnableC5729c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractC5726d.this.f14338g.m24543b().mo24542a(AbstractC5726d.this.f14338g.m24547a());
        }
    }

    /* renamed from: h.c.a.d$d */
    /* loaded from: classes-dex2jar.jar:h/c/a/d$d.class */
    public interface AbstractC5730d {
        /* renamed from: a */
        void mo24617a(AbstractC5726d dVar, boolean z);

        /* renamed from: a */
        void mo24616a(EnumC5731e eVar);
    }

    public AbstractC5726d(Context context) {
        this.f14334c = context;
        this.f14336e = new C5750e(context);
    }

    /* renamed from: a */
    public AdvertisingIdClient.Info m24647a() {
        return this.f14337f;
    }

    /* renamed from: a */
    public void m24646a(AbstractC5730d dVar) {
        this.f14335d = dVar;
    }

    /* renamed from: b */
    public JSONObject m24641b() {
        return this.f14340i;
    }

    /* renamed from: c */
    public String m24639c() {
        return this.f14333b;
    }

    /* renamed from: d */
    public abstract String mo24610d();

    /* renamed from: e */
    public Context m24636e() {
        return this.f14334c;
    }

    /* renamed from: f */
    public C5750e m24635f() {
        return this.f14336e;
    }

    /* renamed from: g */
    public String m24634g() {
        return this.f14332a;
    }

    /* renamed from: h */
    public String m24633h() {
        return this.f14339h.m24539b();
    }

    /* renamed from: i */
    public final void m24632i() {
        this.f14338g = C5760b.m24545a(mo24610d());
        this.f14338g.m24546a(new C5728b());
        new Thread(new RunnableC5729c()).start();
    }

    /* renamed from: j */
    public void m24631j() {
        if (this.f14336e.m24564a() != null) {
            m24632i();
        } else {
            this.f14336e.m24563a(new C5727a());
        }
    }
}
