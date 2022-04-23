package p131c.p372f.p373a.p374a.p375a;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Handler;
import p131c.p372f.p373a.p374a.p375a.AsyncTaskC6414g;
import p131c.p372f.p373a.p374a.p375a.p385n.C6458f;
/* renamed from: c.f.a.a.a.c */
/* loaded from: classes2-dex2jar.jar:c/f/a/a/a/c.class */
public class C6401c implements AsyncTaskC6414g.AbstractC6415a {

    /* renamed from: g */
    public static C6401c f20066g = new C6401c();

    /* renamed from: a */
    public AbstractC6403b f20067a;

    /* renamed from: b */
    public AsyncTaskC6414g f20068b;

    /* renamed from: c */
    public Context f20069c;

    /* renamed from: e */
    public C6405d f20071e;

    /* renamed from: d */
    public C6404c f20070d = new C6404c();

    /* renamed from: f */
    public final Runnable f20072f = new RunnableC6402a();

    /* renamed from: c.f.a.a.a.c$a */
    /* loaded from: classes2-dex2jar.jar:c/f/a/a/a/c$a.class */
    public class RunnableC6402a implements Runnable {
        public RunnableC6402a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C6401c.this.f20069c == null || !C6458f.m20820a(C6401c.this.f20069c)) {
                C6401c.this.m20973b();
            } else {
                C6401c.this.m20977a();
            }
        }
    }

    /* renamed from: c.f.a.a.a.c$b */
    /* loaded from: classes2-dex2jar.jar:c/f/a/a/a/c$b.class */
    public interface AbstractC6403b {
        void onAvidLoaded();
    }

    /* renamed from: c.f.a.a.a.c$c */
    /* loaded from: classes2-dex2jar.jar:c/f/a/a/a/c$c.class */
    public class C6404c {
        public C6404c() {
        }

        /* renamed from: a */
        public void m20966a(AsyncTaskC6414g gVar) {
            if (Build.VERSION.SDK_INT >= 11) {
                C6401c.this.f20068b.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, "https://mobile-static.adsafeprotected.com/avid-v2.js");
            } else {
                C6401c.this.f20068b.execute("https://mobile-static.adsafeprotected.com/avid-v2.js");
            }
        }
    }

    /* renamed from: c.f.a.a.a.c$d */
    /* loaded from: classes2-dex2jar.jar:c/f/a/a/a/c$d.class */
    public class C6405d {

        /* renamed from: a */
        public Handler f20075a = new Handler();

        public C6405d() {
        }

        /* renamed from: a */
        public void m20965a() {
            this.f20075a.removeCallbacks(C6401c.this.f20072f);
        }

        /* renamed from: b */
        public void m20964b() {
            this.f20075a.postDelayed(C6401c.this.f20072f, 2000L);
        }
    }

    /* renamed from: d */
    public static C6401c m20969d() {
        return f20066g;
    }

    /* renamed from: a */
    public final void m20977a() {
        if (!C6399a.m20983b() && this.f20068b == null) {
            AsyncTaskC6414g gVar = new AsyncTaskC6414g();
            this.f20068b = gVar;
            gVar.m20926a(this);
            this.f20070d.m20966a(this.f20068b);
        }
    }

    /* renamed from: a */
    public void m20976a(Context context) {
        this.f20069c = context;
        this.f20071e = new C6405d();
        m20977a();
    }

    /* renamed from: a */
    public void m20975a(AbstractC6403b bVar) {
        this.f20067a = bVar;
    }

    /* renamed from: b */
    public final void m20973b() {
        C6405d dVar = this.f20071e;
        if (dVar != null) {
            dVar.m20964b();
        }
    }

    /* renamed from: c */
    public void m20971c() {
        C6405d dVar = this.f20071e;
        if (dVar != null) {
            dVar.m20965a();
            this.f20071e = null;
        }
        this.f20067a = null;
        this.f20069c = null;
    }

    @Override // p131c.p372f.p373a.p374a.p375a.AsyncTaskC6414g.AbstractC6415a
    public void failedToLoadAvid() {
        this.f20068b = null;
        m20973b();
    }

    @Override // p131c.p372f.p373a.p374a.p375a.AsyncTaskC6414g.AbstractC6415a
    public void onLoadAvid(String str) {
        this.f20068b = null;
        C6399a.m20984a(str);
        AbstractC6403b bVar = this.f20067a;
        if (bVar != null) {
            bVar.onAvidLoaded();
        }
    }
}
