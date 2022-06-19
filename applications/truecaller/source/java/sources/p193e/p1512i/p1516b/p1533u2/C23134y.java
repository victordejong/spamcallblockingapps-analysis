package p193e.p1512i.p1516b.p1533u2;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.WebView;
import java.util.Objects;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicBoolean;
import p193e.p1512i.p1516b.p1528q2.C23023i;
import p193e.p1512i.p1516b.p1531s2.C23089l;
import p193e.p1512i.p1516b.p1531s2.FutureC23081g;
import p193e.p1512i.p1516b.p1536w1.ExecutorC23149c;
/* renamed from: e.i.b.u2.y */
/* loaded from: classes-dex2jar.jar:e/i/b/u2/y.class */
public class C23134y {

    /* renamed from: a */
    public final Context f64084a;

    /* renamed from: b */
    public final ExecutorC23149c f64085b;

    /* renamed from: c */
    public final FutureC23081g<String> f64086c = new FutureC23081g<>();

    /* renamed from: d */
    public final AtomicBoolean f64087d = new AtomicBoolean(false);

    /* renamed from: e.i.b.u2.y$a */
    /* loaded from: classes-dex2jar.jar:e/i/b/u2/y$a.class */
    public class RunnableC23135a implements Runnable {
        public RunnableC23135a() {
            C23134y.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            String str;
            if (C23134y.this.f64087d.compareAndSet(false, true)) {
                C23134y c23134y = C23134y.this;
                Objects.requireNonNull(c23134y);
                try {
                    WebView webView = new WebView(c23134y.f64084a);
                    str = webView.getSettings().getUserAgentString();
                    webView.destroy();
                } catch (Throwable th) {
                    str = null;
                }
                String str2 = str;
                if (TextUtils.isEmpty(str)) {
                    try {
                        str2 = System.getProperty("http.agent");
                    } catch (Throwable th2) {
                        C23089l.m7560a(th2);
                        str2 = null;
                    }
                    if (str2 == null) {
                        str2 = "";
                    }
                }
                FutureC23081g<String> futureC23081g = C23134y.this.f64086c;
                futureC23081g.f63909a.compareAndSet(null, new FutureC23081g.C23084c<>(str2));
                futureC23081g.f63910b.countDown();
            }
        }
    }

    public C23134y(Context context, ExecutorC23149c executorC23149c) {
        C23023i.m7583a(getClass());
        this.f64084a = context;
        this.f64085b = executorC23149c;
    }

    /* renamed from: a */
    public Future<String> mo7427a() {
        mo7426b();
        return this.f64086c;
    }

    /* renamed from: b */
    public void mo7426b() {
        this.f64085b.f64119a.post(new C23136z(new RunnableC23135a()));
    }
}
