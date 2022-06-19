package p193e.p1512i.p1516b.p1522i2;

import android.content.SharedPreferences;
import com.mopub.common.Constants;
import com.tenor.android.core.constant.StringConstant;
import e.i.b.u2.m;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import p193e.p1512i.p1516b.AbstractC22939e2;
import p193e.p1512i.p1516b.AbstractRunnableC22929c3;
import p193e.p1512i.p1516b.p1528q2.C23019f;
import p193e.p1512i.p1516b.p1533u2.AbstractC23118d0;
import p193e.p1512i.p1516b.p1533u2.C23116c0;
import p193e.p1512i.p1516b.p1533u2.C23126p;
import p193e.p1512i.p1516b.p1533u2.C23128r;
import p193e.p1512i.p1516b.p1533u2.C23132x;
/* renamed from: e.i.b.i2.c */
/* loaded from: classes-dex2jar.jar:e/i/b/i2/c.class */
public class C22961c {

    /* renamed from: a */
    public final C23128r f63666a;

    /* renamed from: b */
    public final C23116c0 f63667b;

    /* renamed from: c */
    public final AbstractC22939e2 f63668c;

    /* renamed from: d */
    public final C22967g f63669d;

    /* renamed from: e */
    public final Executor f63670e;

    /* renamed from: g */
    public final Object f63672g = new Object();

    /* renamed from: f */
    public final Map<C23126p, Future<?>> f63671f = new ConcurrentHashMap();

    /* renamed from: e.i.b.i2.c$a */
    /* loaded from: classes-dex2jar.jar:e/i/b/i2/c$a.class */
    public class C22962a extends AbstractRunnableC22929c3 {

        /* renamed from: c */
        public final C23132x f63673c;

        public C22962a(C23132x c23132x, RunnableC22960b runnableC22960b) {
            C22961c.this = r4;
            this.f63673c = c23132x;
        }

        @Override // p193e.p1512i.p1516b.AbstractRunnableC22929c3
        /* renamed from: a */
        public void mo7379a() throws IOException {
            C23116c0 c23116c0 = C22961c.this.f63667b;
            String str = c23116c0.f63986b;
            String packageName = c23116c0.f63985a.getPackageName();
            Objects.requireNonNull(c23116c0.f63987c);
            m mVar = new m(str, packageName, "4.4.0", c23116c0.f63988d.m7619b(), c23116c0.f63989e.m7568b(), Constants.ANDROID_PLATFORM);
            C22967g c22967g = C22961c.this.f63669d;
            Objects.requireNonNull(c22967g);
            Objects.requireNonNull(c22967g.f63689b);
            HttpURLConnection m7609c = c22967g.m7609c(new URL("https://bidder.criteo.com/config/app"), null, "POST");
            c22967g.m7607e(m7609c, mVar);
            InputStream m7610b = C22967g.m7610b(m7609c);
            try {
                AbstractC23118d0 abstractC23118d0 = (AbstractC23118d0) c22967g.f63690c.m7563a(AbstractC23118d0.class, m7610b);
                if (m7610b != null) {
                    m7610b.close();
                }
                C23132x c23132x = this.f63673c;
                c23132x.f64080b = c23132x.m7470a(c23132x.f64080b, abstractC23118d0);
                AbstractC23118d0 abstractC23118d02 = c23132x.f64080b;
                if (c23132x.f64081c == null || c23132x.f64082d == null) {
                    return;
                }
                try {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    c23132x.f64082d.m7562b(abstractC23118d02, byteArrayOutputStream);
                    String str2 = new String(byteArrayOutputStream.toByteArray(), Charset.forName(StringConstant.UTF8));
                    byteArrayOutputStream.close();
                    SharedPreferences.Editor edit = c23132x.f64081c.edit();
                    edit.putString("CriteoCachedConfig", str2);
                    edit.apply();
                } catch (Exception e) {
                    c23132x.f64079a.m7586a(new C23019f(3, "Couldn't persist values", e, null));
                }
            } catch (Throwable th) {
                if (m7610b != null) {
                    try {
                        m7610b.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }
    }

    public C22961c(C23128r c23128r, C23116c0 c23116c0, AbstractC22939e2 abstractC22939e2, C22967g c22967g, Executor executor) {
        this.f63666a = c23128r;
        this.f63667b = c23116c0;
        this.f63668c = abstractC22939e2;
        this.f63669d = c22967g;
        this.f63670e = executor;
    }

    /* renamed from: a */
    public final void m7613a(List<C23126p> list) {
        synchronized (this.f63672g) {
            this.f63671f.keySet().removeAll(list);
        }
    }
}
