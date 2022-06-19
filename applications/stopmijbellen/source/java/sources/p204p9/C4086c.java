package p204p9;

import java.io.Closeable;
import java.io.File;
import java.io.Flushable;
import java.io.IOException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Logger;
import java.util.regex.Pattern;
import javax.annotation.Nullable;
import p011aa.AbstractC0054g;
import p011aa.AbstractC0055h;
import p011aa.AbstractC0057j;
import p011aa.AbstractC0058k;
import p011aa.AbstractC0073x;
import p011aa.AbstractC0074y;
import p011aa.C0052e;
import p011aa.C0053f;
import p011aa.C0056i;
import p011aa.C0062o;
import p011aa.C0067r;
import p011aa.C0069t;
import p204p9.C4121r;
import p214q9.C4171c;
import p214q9.ThreadFactoryC4173d;
import p225r9.AbstractC4240c;
import p225r9.AbstractC4250g;
import p225r9.C4242e;
import p246t9.C4436e;
import p246t9.C4441j;
import p279w9.AbstractC4792a;
import p290x9.C4945f;
/* renamed from: p9.c */
/* loaded from: classes2-dex2jar.jar:p9/c.class */
public final class C4086c implements Closeable, Flushable {

    /* renamed from: a */
    public final AbstractC4250g f12822a = new C4087a();

    /* renamed from: b */
    public final C4242e f12823b;

    /* renamed from: c */
    public int f12824c;

    /* renamed from: d */
    public int f12825d;

    /* renamed from: e */
    public int f12826e;

    /* renamed from: f */
    public int f12827f;

    /* renamed from: g */
    public int f12828g;

    /* renamed from: p9.c$a */
    /* loaded from: classes2-dex2jar.jar:p9/c$a.class */
    public class C4087a implements AbstractC4250g {
        public C4087a() {
            C4086c.this = r4;
        }
    }

    /* renamed from: p9.c$b */
    /* loaded from: classes2-dex2jar.jar:p9/c$b.class */
    public final class C4088b implements AbstractC4240c {

        /* renamed from: a */
        public final C4242e.C4245c f12830a;

        /* renamed from: b */
        public AbstractC0073x f12831b;

        /* renamed from: c */
        public AbstractC0073x f12832c;

        /* renamed from: d */
        public boolean f12833d;

        /* renamed from: p9.c$b$a */
        /* loaded from: classes2-dex2jar.jar:p9/c$b$a.class */
        public class C4089a extends AbstractC0057j {

            /* renamed from: b */
            public final /* synthetic */ C4242e.C4245c f12835b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C4089a(AbstractC0073x abstractC0073x, C4086c c4086c, C4242e.C4245c c4245c) {
                super(abstractC0073x);
                C4088b.this = r4;
                this.f12835b = c4245c;
            }

            @Override // p011aa.AbstractC0057j, p011aa.AbstractC0073x, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                synchronized (C4086c.this) {
                    C4088b c4088b = C4088b.this;
                    if (c4088b.f12833d) {
                        return;
                    }
                    c4088b.f12833d = true;
                    C4086c.this.f12824c++;
                    this.f126a.close();
                    this.f12835b.m1237b();
                }
            }
        }

        public C4088b(C4242e.C4245c c4245c) {
            C4086c.this = r9;
            this.f12830a = c4245c;
            AbstractC0073x m1235d = c4245c.m1235d(1);
            this.f12831b = m1235d;
            this.f12832c = new C4089a(m1235d, r9, c4245c);
        }

        /* renamed from: a */
        public void m1427a() {
            synchronized (C4086c.this) {
                if (this.f12833d) {
                    return;
                }
                this.f12833d = true;
                C4086c.this.f12825d++;
                C4171c.m1332d(this.f12831b);
                try {
                    this.f12830a.m1238a();
                } catch (IOException e) {
                }
            }
        }
    }

    /* renamed from: p9.c$c */
    /* loaded from: classes2-dex2jar.jar:p9/c$c.class */
    public static class C4090c extends AbstractC4096d0 {

        /* renamed from: a */
        public final C4242e.C4248e f12837a;

        /* renamed from: b */
        public final AbstractC0055h f12838b;
        @Nullable

        /* renamed from: c */
        public final String f12839c;
        @Nullable

        /* renamed from: d */
        public final String f12840d;

        /* renamed from: p9.c$c$a */
        /* loaded from: classes2-dex2jar.jar:p9/c$c$a.class */
        public class C4091a extends AbstractC0058k {

            /* renamed from: b */
            public final /* synthetic */ C4242e.C4248e f12841b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C4091a(C4090c c4090c, AbstractC0074y abstractC0074y, C4242e.C4248e c4248e) {
                super(abstractC0074y);
                this.f12841b = c4248e;
            }

            @Override // p011aa.AbstractC0058k, p011aa.AbstractC0074y, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                this.f12841b.close();
                this.f127a.close();
            }
        }

        public C4090c(C4242e.C4248e c4248e, String str, String str2) {
            this.f12837a = c4248e;
            this.f12839c = str;
            this.f12840d = str2;
            C4091a c4091a = new C4091a(this, c4248e.f13323c[1], c4248e);
            Logger logger = C0062o.f138a;
            this.f12838b = new C0069t(c4091a);
        }

        /* JADX WARN: Type inference failed for: r0v8, types: [long] */
        @Override // p204p9.AbstractC4096d0
        /* renamed from: d */
        public long mo925d() {
            char c;
            try {
                String str = this.f12840d;
                c = 65535;
                if (str != null) {
                    c = Long.parseLong(str);
                }
            } catch (NumberFormatException e) {
                c = 65535;
            }
            return c;
        }

        @Override // p204p9.AbstractC4096d0
        /* renamed from: k */
        public C4127u mo924k() {
            C4127u c4127u;
            String str = this.f12839c;
            if (str != null) {
                Pattern pattern = C4127u.f12972b;
                try {
                    c4127u = C4127u.m1369a(str);
                } catch (IllegalArgumentException e) {
                }
                return c4127u;
            }
            c4127u = null;
            return c4127u;
        }

        @Override // p204p9.AbstractC4096d0
        /* renamed from: l */
        public AbstractC0055h mo923l() {
            return this.f12838b;
        }
    }

    /* renamed from: p9.c$d */
    /* loaded from: classes2-dex2jar.jar:p9/c$d.class */
    public static final class C4092d {

        /* renamed from: k */
        public static final String f12842k = "OkHttp-Sent-Millis";

        /* renamed from: l */
        public static final String f12843l = "OkHttp-Received-Millis";

        /* renamed from: a */
        public final String f12844a;

        /* renamed from: b */
        public final C4121r f12845b;

        /* renamed from: c */
        public final String f12846c;

        /* renamed from: d */
        public final EnumC4131w f12847d;

        /* renamed from: e */
        public final int f12848e;

        /* renamed from: f */
        public final String f12849f;

        /* renamed from: g */
        public final C4121r f12850g;
        @Nullable

        /* renamed from: h */
        public final C4120q f12851h;

        /* renamed from: i */
        public final long f12852i;

        /* renamed from: j */
        public final long f12853j;

        static {
            C4945f c4945f = C4945f.f15078a;
            Objects.requireNonNull(c4945f);
            Objects.requireNonNull(c4945f);
        }

        /* JADX WARN: Type inference failed for: r0v86, types: [long] */
        /* JADX WARN: Type inference failed for: r0v89, types: [long] */
        public C4092d(AbstractC0074y abstractC0074y) throws IOException {
            try {
                Logger logger = C0062o.f138a;
                C0069t c0069t = new C0069t(abstractC0074y);
                this.f12844a = c0069t.mo8800t();
                this.f12846c = c0069t.mo8800t();
                C4121r.C4122a c4122a = new C4121r.C4122a();
                int m1429k = C4086c.m1429k(c0069t);
                for (int i = 0; i < m1429k; i++) {
                    c4122a.m1395a(c0069t.mo8800t());
                }
                this.f12845b = new C4121r(c4122a);
                C4441j m915a = C4441j.m915a(c0069t.mo8800t());
                this.f12847d = m915a.f13807a;
                this.f12848e = m915a.f13808b;
                this.f12849f = m915a.f13809c;
                C4121r.C4122a c4122a2 = new C4121r.C4122a();
                int m1429k2 = C4086c.m1429k(c0069t);
                for (int i2 = 0; i2 < m1429k2; i2++) {
                    c4122a2.m1395a(c0069t.mo8800t());
                }
                String str = f12842k;
                String m1393c = c4122a2.m1393c(str);
                String str2 = f12843l;
                String m1393c2 = c4122a2.m1393c(str2);
                c4122a2.m1392d(str);
                c4122a2.m1392d(str2);
                this.f12852i = m1393c != null ? Long.parseLong(m1393c) : (char) 0;
                this.f12853j = m1393c2 != null ? Long.parseLong(m1393c2) : (char) 0;
                this.f12850g = new C4121r(c4122a2);
                if (this.f12844a.startsWith("https://")) {
                    String mo8800t = c0069t.mo8800t();
                    if (mo8800t.length() > 0) {
                        throw new IOException("expected \"\" but was \"" + mo8800t + "\"");
                    }
                    this.f12851h = new C4120q(!c0069t.mo8798v() ? EnumC4101f0.m1421a(c0069t.mo8800t()) : EnumC4101f0.SSL_3_0, C4104h.m1418a(c0069t.mo8800t()), C4171c.m1322n(m1426a(c0069t)), C4171c.m1322n(m1426a(c0069t)));
                } else {
                    this.f12851h = null;
                }
            } finally {
                abstractC0074y.close();
            }
        }

        public C4092d(C4084b0 c4084b0) {
            C4121r c4121r;
            this.f12844a = c4084b0.f12797a.f13041a.f12963i;
            int i = C4436e.f13787a;
            C4121r c4121r2 = c4084b0.f12804h.f12797a.f13043c;
            Set<String> m928f = C4436e.m928f(c4084b0.f12802f);
            if (m928f.isEmpty()) {
                c4121r = new C4121r(new C4121r.C4122a());
            } else {
                C4121r.C4122a c4122a = new C4121r.C4122a();
                int m1398f = c4121r2.m1398f();
                for (int i2 = 0; i2 < m1398f; i2++) {
                    String m1400d = c4121r2.m1400d(i2);
                    if (m928f.contains(m1400d)) {
                        String m1397g = c4121r2.m1397g(i2);
                        C4121r.m1403a(m1400d);
                        C4121r.m1402b(m1397g, m1400d);
                        c4122a.f12953a.add(m1400d);
                        c4122a.f12953a.add(m1397g.trim());
                    }
                }
                c4121r = new C4121r(c4122a);
            }
            this.f12845b = c4121r;
            this.f12846c = c4084b0.f12797a.f13042b;
            this.f12847d = c4084b0.f12798b;
            this.f12848e = c4084b0.f12799c;
            this.f12849f = c4084b0.f12800d;
            this.f12850g = c4084b0.f12802f;
            this.f12851h = c4084b0.f12801e;
            this.f12852i = c4084b0.f12807k;
            this.f12853j = c4084b0.f12808l;
        }

        /* renamed from: a */
        public final List<Certificate> m1426a(AbstractC0055h abstractC0055h) throws IOException {
            int m1429k = C4086c.m1429k(abstractC0055h);
            if (m1429k == -1) {
                return Collections.emptyList();
            }
            try {
                CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
                ArrayList arrayList = new ArrayList(m1429k);
                for (int i = 0; i < m1429k; i++) {
                    String mo8800t = ((C0069t) abstractC0055h).mo8800t();
                    C0053f c0053f = new C0053f();
                    c0053f.m8858L(C0056i.m8839b(mo8800t));
                    arrayList.add(certificateFactory.generateCertificate(new C0052e(c0053f)));
                }
                return arrayList;
            } catch (CertificateException e) {
                throw new IOException(e.getMessage());
            }
        }

        /* renamed from: b */
        public final void m1425b(AbstractC0054g abstractC0054g, List<Certificate> list) throws IOException {
            try {
                C0067r c0067r = (C0067r) abstractC0054g;
                c0067r.mo8820S(list.size());
                c0067r.mo8815w(10);
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    c0067r.mo8821R(C0056i.m8834i(list.get(i).getEncoded()).mo8790a());
                    c0067r.mo8815w(10);
                }
            } catch (CertificateEncodingException e) {
                throw new IOException(e.getMessage());
            }
        }

        /* renamed from: c */
        public void m1424c(C4242e.C4245c c4245c) throws IOException {
            AbstractC0073x m1235d = c4245c.m1235d(0);
            Logger logger = C0062o.f138a;
            C0067r c0067r = new C0067r(m1235d);
            c0067r.mo8821R(this.f12844a);
            c0067r.mo8815w(10);
            c0067r.mo8821R(this.f12846c);
            c0067r.mo8815w(10);
            c0067r.mo8820S(this.f12845b.m1398f());
            c0067r.mo8815w(10);
            int m1398f = this.f12845b.m1398f();
            for (int i = 0; i < m1398f; i++) {
                c0067r.mo8821R(this.f12845b.m1400d(i));
                c0067r.mo8821R(": ");
                c0067r.mo8821R(this.f12845b.m1397g(i));
                c0067r.mo8815w(10);
            }
            EnumC4131w enumC4131w = this.f12847d;
            int i2 = this.f12848e;
            String str = this.f12849f;
            StringBuilder sb = new StringBuilder();
            sb.append(enumC4131w == EnumC4131w.HTTP_1_0 ? "HTTP/1.0" : "HTTP/1.1");
            sb.append(' ');
            sb.append(i2);
            if (str != null) {
                sb.append(' ');
                sb.append(str);
            }
            c0067r.mo8821R(sb.toString());
            c0067r.mo8815w(10);
            c0067r.mo8820S(this.f12850g.m1398f() + 2);
            c0067r.mo8815w(10);
            int m1398f2 = this.f12850g.m1398f();
            for (int i3 = 0; i3 < m1398f2; i3++) {
                c0067r.mo8821R(this.f12850g.m1400d(i3));
                c0067r.mo8821R(": ");
                c0067r.mo8821R(this.f12850g.m1397g(i3));
                c0067r.mo8815w(10);
            }
            c0067r.mo8821R(f12842k);
            c0067r.mo8821R(": ");
            c0067r.mo8820S(this.f12852i);
            c0067r.mo8815w(10);
            c0067r.mo8821R(f12843l);
            c0067r.mo8821R(": ");
            c0067r.mo8820S(this.f12853j);
            c0067r.mo8815w(10);
            if (this.f12844a.startsWith("https://")) {
                c0067r.mo8815w(10);
                c0067r.mo8821R(this.f12851h.f12949b.f12908a);
                c0067r.mo8815w(10);
                m1425b(c0067r, this.f12851h.f12950c);
                m1425b(c0067r, this.f12851h.f12951d);
                c0067r.mo8821R(this.f12851h.f12948a.f12884a);
                c0067r.mo8815w(10);
            }
            c0067r.close();
        }
    }

    public C4086c(File file, long j) {
        AbstractC4792a abstractC4792a = AbstractC4792a.f14726a;
        Pattern pattern = C4242e.f13285u;
        if (j > 0) {
            TimeUnit timeUnit = TimeUnit.SECONDS;
            LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
            byte[] bArr = C4171c.f13144a;
            this.f12823b = new C4242e(abstractC4792a, file, 201105, 2, j, new ThreadPoolExecutor(0, 1, 60L, timeUnit, linkedBlockingQueue, new ThreadFactoryC4173d("OkHttp DiskLruCache", true)));
            return;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    /* renamed from: d */
    public static String m1430d(C4123s c4123s) {
        return C0056i.m8835f(c4123s.f12963i).m8836e("MD5").mo8788h();
    }

    /* renamed from: k */
    public static int m1429k(AbstractC0055h abstractC0055h) throws IOException {
        try {
            long mo8812G = abstractC0055h.mo8812G();
            String mo8800t = abstractC0055h.mo8800t();
            if (mo8812G >= 0 && mo8812G <= 2147483647L && mo8800t.isEmpty()) {
                return (int) mo8812G;
            }
            throw new IOException("expected an int but was \"" + mo8812G + mo8800t + "\"");
        } catch (NumberFormatException e) {
            throw new IOException(e.getMessage());
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f12823b.close();
    }

    @Override // java.io.Flushable
    public void flush() throws IOException {
        this.f12823b.flush();
    }

    /* renamed from: l */
    public void m1428l(C4135y c4135y) throws IOException {
        C4242e c4242e = this.f12823b;
        String m1430d = m1430d(c4135y.f13041a);
        synchronized (c4242e) {
            c4242e.m1241p();
            c4242e.m1245d();
            c4242e.m1246P(m1430d);
            C4242e.C4247d c4247d = c4242e.f13296k.get(m1430d);
            if (c4247d == null) {
                return;
            }
            c4242e.m1248K(c4247d);
            if (c4242e.f13294i <= c4242e.f13292g) {
                c4242e.f13301p = false;
            }
        }
    }
}
