package p131c.p372f.p373a.p374a.p375a.p381m.p382h.p383i;

import android.os.Handler;
import android.webkit.JavascriptInterface;
import p131c.p372f.p373a.p374a.p375a.p381m.p382h.C6434a;
/* renamed from: c.f.a.a.a.m.h.i.c */
/* loaded from: classes2-dex2jar.jar:c/f/a/a/a/m/h/i/c.class */
public class C6445c {

    /* renamed from: a */
    public final C6434a f20129a;

    /* renamed from: b */
    public final Handler f20130b = new Handler();

    /* renamed from: c */
    public AbstractC6446a f20131c;

    /* renamed from: c.f.a.a.a.m.h.i.c$a */
    /* loaded from: classes2-dex2jar.jar:c/f/a/a/a/m/h/i/c$a.class */
    public interface AbstractC6446a {
        void onAvidAdSessionContextInvoked();
    }

    /* renamed from: c.f.a.a.a.m.h.i.c$b */
    /* loaded from: classes2-dex2jar.jar:c/f/a/a/a/m/h/i/c$b.class */
    public class RunnableC6447b implements Runnable {
        public RunnableC6447b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C6445c.this.f20131c != null) {
                C6445c.this.f20131c.onAvidAdSessionContextInvoked();
                C6445c.this.f20131c = null;
            }
        }
    }

    public C6445c(C6434a aVar) {
        this.f20129a = aVar;
    }

    /* renamed from: a */
    public void m20856a(AbstractC6446a aVar) {
        this.f20131c = aVar;
    }

    @JavascriptInterface
    public String getAvidAdSessionContext() {
        this.f20130b.post(new RunnableC6447b());
        return this.f20129a.m20882c().toString();
    }
}
