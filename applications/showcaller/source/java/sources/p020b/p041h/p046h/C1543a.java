package p020b.p041h.p046h;

import android.graphics.Typeface;
import android.os.Handler;
import p020b.p041h.p046h.C1550e;
import p020b.p041h.p046h.C1556f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: b.h.h.a */
/* loaded from: classes-dex2jar.jar:b/h/h/a.class */
public class C1543a {

    /* renamed from: a */
    private final C1556f.C1559c f6081a;

    /* renamed from: b */
    private final Handler f6082b;

    /* renamed from: b.h.h.a$a */
    /* loaded from: classes-dex2jar.jar:b/h/h/a$a.class */
    public class RunnableC1544a implements Runnable {

        /* renamed from: d */
        final /* synthetic */ C1556f.C1559c f6083d;

        /* renamed from: e */
        final /* synthetic */ Typeface f6084e;

        RunnableC1544a(C1556f.C1559c c1559c, Typeface typeface) {
            C1543a.this = r4;
            this.f6083d = c1559c;
            this.f6084e = typeface;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f6083d.mo29728b(this.f6084e);
        }
    }

    /* renamed from: b.h.h.a$b */
    /* loaded from: classes-dex2jar.jar:b/h/h/a$b.class */
    public class RunnableC1545b implements Runnable {

        /* renamed from: d */
        final /* synthetic */ C1556f.C1559c f6086d;

        /* renamed from: e */
        final /* synthetic */ int f6087e;

        RunnableC1545b(C1556f.C1559c c1559c, int i) {
            C1543a.this = r4;
            this.f6086d = c1559c;
            this.f6087e = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f6086d.mo29729a(this.f6087e);
        }
    }

    public C1543a(C1556f.C1559c c1559c, Handler handler) {
        this.f6081a = c1559c;
        this.f6082b = handler;
    }

    /* renamed from: a */
    private void m29767a(int i) {
        this.f6082b.post(new RunnableC1545b(this.f6081a, i));
    }

    /* renamed from: c */
    private void m29765c(Typeface typeface) {
        this.f6082b.post(new RunnableC1544a(this.f6081a, typeface));
    }

    /* renamed from: b */
    public void m29766b(C1550e.C1555e c1555e) {
        if (c1555e.m29740a()) {
            m29765c(c1555e.f6110a);
        } else {
            m29767a(c1555e.f6111b);
        }
    }
}
