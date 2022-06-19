package p202p7;

import android.net.Uri;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.math.BigInteger;
import java.net.CacheResponse;
import java.nio.ByteBuffer;
import java.util.Date;
import java.util.Hashtable;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import p124i4.C3102d;
import p148k7.AbstractC3330b;
import p148k7.AbstractC3356j;
import p148k7.AbstractC3360m;
import p148k7.C3343h;
import p148k7.C3358l;
import p148k7.C3367r;
import p159l7.AbstractC3510a;
import p159l7.AbstractC3517f;
import p181n7.AbstractC3749g;
import p181n7.AbstractC3761j;
import p181n7.C3732a;
import p181n7.C3746d0;
import p181n7.C3759h;
import p181n7.C3782w;
import p255u7.C4534a;
import p255u7.C4538c;
import p255u7.C4539d;
import p291y.C4951d;
/* renamed from: p7.d */
/* loaded from: classes2-dex2jar.jar:p7/d.class */
public class C4030d extends C3746d0 {

    /* renamed from: a */
    public int f12654a;

    /* renamed from: b */
    public int f12655b;

    /* renamed from: c */
    public C4539d f12656c;

    /* renamed from: d */
    public C3343h f12657d;

    /* renamed from: e */
    public int f12658e;

    /* renamed from: f */
    public int f12659f;

    /* renamed from: g */
    public int f12660g;

    /* renamed from: h */
    public int f12661h;

    /* renamed from: p7.d$a */
    /* loaded from: classes2-dex2jar.jar:p7/d$a.class */
    public class RunnableC4031a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AbstractC3749g.C3750a f12662a;

        /* renamed from: b */
        public final /* synthetic */ C4038f f12663b;

        public RunnableC4031a(C4030d c4030d, AbstractC3749g.C3750a c3750a, C4038f c4038f) {
            this.f12662a = c3750a;
            this.f12663b = c4038f;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f12662a.f12174c.mo152a(null, this.f12663b);
            this.f12663b.m1481p();
        }
    }

    /* renamed from: p7.d$b */
    /* loaded from: classes2-dex2jar.jar:p7/d$b.class */
    public static class C4032b extends C3367r {

        /* renamed from: h */
        public C4041i f12664h;

        /* renamed from: i */
        public C3358l f12665i;

        public C4032b() {
        }

        public C4032b(RunnableC4031a runnableC4031a) {
        }

        /* JADX WARN: Finally extract failed */
        @Override // p148k7.C3367r, p159l7.AbstractC3513c
        /* renamed from: c */
        public void mo1099c(AbstractC3360m abstractC3360m, C3358l c3358l) {
            int i;
            int i2;
            byte[] bArr;
            C3358l c3358l2 = this.f12665i;
            if (c3358l2 != null) {
                super.mo1099c(abstractC3360m, c3358l2);
                if (this.f12665i.f11382c > 0) {
                    return;
                }
                this.f12665i = null;
            }
            C3358l c3358l3 = new C3358l();
            try {
                try {
                    C4041i c4041i = this.f12664h;
                    if (c4041i != null) {
                        FileOutputStream m1475b = c4041i.m1475b(1);
                        if (m1475b != null) {
                            while (!c3358l.m2343j()) {
                                ByteBuffer m2338o = c3358l.m2338o();
                                try {
                                    if (m2338o.isDirect()) {
                                        bArr = new byte[m2338o.remaining()];
                                        i2 = 0;
                                        i = m2338o.remaining();
                                        m2338o.get(bArr);
                                    } else {
                                        bArr = m2338o.array();
                                        i2 = m2338o.arrayOffset() + m2338o.position();
                                        i = m2338o.remaining();
                                    }
                                    m1475b.write(bArr, i2, i);
                                    c3358l3.m2352a(m2338o);
                                } catch (Throwable th) {
                                    c3358l3.m2352a(m2338o);
                                    throw th;
                                }
                            }
                        } else {
                            m1482p();
                        }
                    }
                } catch (Exception e) {
                    m1482p();
                }
                super.mo1099c(abstractC3360m, c3358l);
                if (this.f12664h == null || c3358l.f11382c <= 0) {
                    return;
                }
                C3358l c3358l4 = new C3358l();
                this.f12665i = c3358l4;
                c3358l.m2349d(c3358l4, c3358l.f11382c);
            } finally {
                c3358l.m2349d(c3358l3, c3358l.f11382c);
                c3358l3.m2349d(c3358l, c3358l3.f11382c);
            }
        }

        @Override // p148k7.C3367r, p148k7.AbstractC3360m
        public void close() {
            m1482p();
            super.close();
        }

        @Override // p148k7.AbstractC3361n
        /* renamed from: n */
        public void mo1262n(Exception exc) {
            super.mo1262n(exc);
            if (exc != null) {
                m1482p();
            }
        }

        /* renamed from: p */
        public void m1482p() {
            C4041i c4041i = this.f12664h;
            if (c4041i != null) {
                c4041i.m1476a();
                this.f12664h = null;
            }
        }
    }

    /* renamed from: p7.d$c */
    /* loaded from: classes2-dex2jar.jar:p7/d$c.class */
    public static class C4033c {

        /* renamed from: a */
        public FileInputStream[] f12666a;

        /* renamed from: b */
        public C4040h f12667b;

        /* renamed from: c */
        public long f12668c;

        /* renamed from: d */
        public C4042e f12669d;
    }

    /* renamed from: p7.d$d */
    /* loaded from: classes2-dex2jar.jar:p7/d$d.class */
    public static class C4034d extends C3367r {

        /* renamed from: h */
        public C4040h f12670h;

        /* renamed from: j */
        public C4534a f12672j;

        /* renamed from: k */
        public boolean f12673k;

        /* renamed from: i */
        public C3358l f12671i = new C3358l();

        /* renamed from: l */
        public Runnable f12674l = new RunnableC4035a();

        /* renamed from: p7.d$d$a */
        /* loaded from: classes2-dex2jar.jar:p7/d$d$a.class */
        public class RunnableC4035a implements Runnable {
            public RunnableC4035a() {
                C4034d.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                C4034d.this.m1481p();
            }
        }

        /* renamed from: p7.d$d$b */
        /* loaded from: classes2-dex2jar.jar:p7/d$d$b.class */
        public class RunnableC4036b implements Runnable {
            public RunnableC4036b() {
                C4034d.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                C4034d.this.close();
            }
        }

        public C4034d(C4040h c4040h, long j) {
            C4534a c4534a = new C4534a();
            this.f12672j = c4534a;
            this.f12670h = c4040h;
            c4534a.f13941b = (int) j;
        }

        @Override // p148k7.C3367r, p148k7.AbstractC3360m
        public void close() {
            if (mo940a().f11338e != Thread.currentThread()) {
                mo940a().m2359g(new RunnableC4036b());
                return;
            }
            this.f12671i.m2339n();
            C4951d.m198e(this.f12670h.f12685b);
            super.close();
        }

        @Override // p148k7.C3367r, p148k7.AbstractC3360m
        /* renamed from: e */
        public boolean mo938e() {
            return false;
        }

        @Override // p148k7.AbstractC3361n
        /* renamed from: n */
        public void mo1262n(Exception exc) {
            if (!this.f12673k) {
                return;
            }
            C4951d.m198e(this.f12670h.f12685b);
            super.mo1262n(exc);
        }

        /* renamed from: p */
        public void m1481p() {
            C3358l c3358l = this.f12671i;
            if (c3358l.f11382c > 0) {
                mo1099c(this, c3358l);
                if (this.f12671i.f11382c > 0) {
                    return;
                }
            }
            try {
                ByteBuffer m863a = this.f12672j.m863a();
                int read = this.f12670h.f12685b.read(m863a.array(), m863a.arrayOffset(), m863a.capacity());
                if (read == -1) {
                    C3358l.m2340m(m863a);
                    this.f12673k = true;
                    mo1262n(null);
                    return;
                }
                this.f12672j.m861c(read);
                m863a.limit(read);
                this.f12671i.m2352a(m863a);
                mo1099c(this, this.f12671i);
                if (this.f12671i.f11382c > 0) {
                    return;
                }
                mo940a().m2357i(this.f12674l, 10L);
            } catch (IOException e) {
                this.f12673k = true;
                mo1262n(e);
            }
        }
    }

    /* renamed from: p7.d$e */
    /* loaded from: classes2-dex2jar.jar:p7/d$e.class */
    public class C4037e extends C4038f implements AbstractC3330b {
        public C4037e(C4030d c4030d, C4040h c4040h, long j) {
            super(c4040h, j);
        }
    }

    /* renamed from: p7.d$f */
    /* loaded from: classes2-dex2jar.jar:p7/d$f.class */
    public class C4038f extends C4034d implements AbstractC3356j {

        /* renamed from: m */
        public boolean f12677m;

        /* renamed from: n */
        public AbstractC3510a f12678n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4038f(C4040h c4040h, long j) {
            super(c4040h, j);
            C4030d.this = r6;
            this.f12673k = true;
        }

        @Override // p148k7.C3367r, p148k7.AbstractC3360m, p148k7.AbstractC3362o
        /* renamed from: a */
        public C3343h mo940a() {
            return C4030d.this.f12657d;
        }

        @Override // p202p7.C4030d.C4034d, p148k7.C3367r, p148k7.AbstractC3360m
        public void close() {
        }

        @Override // p148k7.AbstractC3362o
        /* renamed from: g */
        public void mo1480g(AbstractC3510a abstractC3510a) {
            this.f12678n = abstractC3510a;
        }

        @Override // p148k7.AbstractC3362o
        public boolean isOpen() {
            return false;
        }

        @Override // p148k7.AbstractC3362o
        /* renamed from: j */
        public void mo1267j() {
        }

        @Override // p148k7.AbstractC3362o
        /* renamed from: k */
        public void mo1479k(C3358l c3358l) {
            c3358l.m2339n();
        }

        @Override // p148k7.AbstractC3362o
        /* renamed from: m */
        public void mo1478m(AbstractC3517f abstractC3517f) {
        }

        @Override // p202p7.C4030d.C4034d, p148k7.AbstractC3361n
        /* renamed from: n */
        public void mo1262n(Exception exc) {
            super.mo1262n(exc);
            if (this.f12677m) {
                return;
            }
            this.f12677m = true;
            AbstractC3510a abstractC3510a = this.f12678n;
            if (abstractC3510a == null) {
                return;
            }
            abstractC3510a.mo1098a(exc);
        }
    }

    /* renamed from: p7.d$g */
    /* loaded from: classes2-dex2jar.jar:p7/d$g.class */
    public static final class C4039g {

        /* renamed from: a */
        public final String f12680a;

        /* renamed from: b */
        public final C4026b f12681b;

        /* renamed from: c */
        public final String f12682c;

        /* renamed from: d */
        public final C4026b f12683d;

        public C4039g(Uri uri, C4026b c4026b, C3759h c3759h, C4026b c4026b2) {
            this.f12680a = uri.toString();
            this.f12681b = c4026b;
            this.f12682c = c3759h.f12185b;
            this.f12683d = c4026b2;
        }

        public C4039g(InputStream inputStream) throws IOException {
            Throwable th;
            C4044f c4044f;
            try {
                c4044f = new C4044f(inputStream, C4538c.f13950a);
                try {
                    this.f12680a = c4044f.m1470k();
                    this.f12682c = c4044f.m1470k();
                    this.f12681b = new C4026b();
                    int readInt = c4044f.readInt();
                    for (int i = 0; i < readInt; i++) {
                        this.f12681b.m1495b(c4044f.m1470k());
                    }
                    C4026b c4026b = new C4026b();
                    this.f12683d = c4026b;
                    c4026b.m1489h(c4044f.m1470k());
                    int readInt2 = c4044f.readInt();
                    for (int i2 = 0; i2 < readInt2; i2++) {
                        this.f12683d.m1495b(c4044f.m1470k());
                    }
                    C4951d.m198e(c4044f, inputStream);
                } catch (Throwable th2) {
                    th = th2;
                    C4951d.m198e(c4044f, inputStream);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                c4044f = null;
            }
        }

        /* renamed from: a */
        public void m1477a(C4041i c4041i) throws IOException {
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(c4041i.m1475b(0), C4538c.f13951b));
            bufferedWriter.write(this.f12680a + '\n');
            bufferedWriter.write(this.f12682c + '\n');
            bufferedWriter.write(Integer.toString(this.f12681b.m1491f()) + '\n');
            for (int i = 0; i < this.f12681b.m1491f(); i++) {
                bufferedWriter.write(this.f12681b.m1493d(i) + ": " + this.f12681b.m1492e(i) + '\n');
            }
            bufferedWriter.write(this.f12683d.f12642b + '\n');
            bufferedWriter.write(Integer.toString(this.f12683d.m1491f()) + '\n');
            for (int i2 = 0; i2 < this.f12683d.m1491f(); i2++) {
                bufferedWriter.write(this.f12683d.m1493d(i2) + ": " + this.f12683d.m1492e(i2) + '\n');
            }
            if (this.f12680a.startsWith("https://")) {
                bufferedWriter.write(10);
                bufferedWriter.write("null\n");
                bufferedWriter.write("-1\n");
                bufferedWriter.write("-1\n");
            }
            bufferedWriter.close();
        }
    }

    /* renamed from: p7.d$h */
    /* loaded from: classes2-dex2jar.jar:p7/d$h.class */
    public static class C4040h extends CacheResponse {

        /* renamed from: a */
        public final C4039g f12684a;

        /* renamed from: b */
        public final FileInputStream f12685b;

        public C4040h(C4039g c4039g, FileInputStream fileInputStream) {
            this.f12684a = c4039g;
            this.f12685b = fileInputStream;
        }

        @Override // java.net.CacheResponse
        public InputStream getBody() throws IOException {
            return this.f12685b;
        }

        @Override // java.net.CacheResponse
        public Map<String, List<String>> getHeaders() {
            return this.f12684a.f12683d.m1488i();
        }
    }

    /* renamed from: p7.d$i */
    /* loaded from: classes2-dex2jar.jar:p7/d$i.class */
    public class C4041i {

        /* renamed from: a */
        public String f12686a;

        /* renamed from: b */
        public File[] f12687b;

        /* renamed from: c */
        public FileOutputStream[] f12688c;

        /* renamed from: d */
        public boolean f12689d;

        public C4041i(String str) {
            File file;
            C4030d.this = r9;
            this.f12686a = str;
            C4539d c4539d = r9.f12656c;
            Objects.requireNonNull(c4539d);
            File[] fileArr = new File[2];
            for (int i = 0; i < 2; i++) {
                do {
                    file = new File(c4539d.f13958e, new BigInteger(128, c4539d.f13955b).toString(16));
                } while (file.exists());
                fileArr[i] = file;
            }
            this.f12687b = fileArr;
            this.f12688c = new FileOutputStream[2];
        }

        /* renamed from: a */
        public void m1476a() {
            C4951d.m198e(this.f12688c);
            File[] fileArr = this.f12687b;
            String str = C4539d.f13952i;
            if (fileArr != null) {
                for (File file : fileArr) {
                    file.delete();
                }
            }
            if (this.f12689d) {
                return;
            }
            C4030d.this.f12655b++;
            this.f12689d = true;
        }

        /* renamed from: b */
        public FileOutputStream m1475b(int i) throws IOException {
            FileOutputStream[] fileOutputStreamArr = this.f12688c;
            if (fileOutputStreamArr[i] == null) {
                fileOutputStreamArr[i] = new FileOutputStream(this.f12687b[i]);
            }
            return this.f12688c[i];
        }
    }

    /* renamed from: i */
    public static C4030d m1483i(C3732a c3732a, File file, long j) throws IOException {
        for (AbstractC3749g abstractC3749g : c3732a.f12122a) {
            if (abstractC3749g instanceof C4030d) {
                throw new IOException("Response cache already added to http client");
            }
        }
        C4030d c4030d = new C4030d();
        c4030d.f12657d = c3732a.f12125d;
        c4030d.f12656c = new C4539d(file, j, false);
        c3732a.f12122a.add(0, c4030d);
        return c4030d;
    }

    @Override // p181n7.C3746d0, p181n7.AbstractC3749g
    /* renamed from: d */
    public void mo1486d(AbstractC3749g.C3751b c3751b) {
        int i;
        String str;
        Date date;
        if (((C4038f) C3102d.m2616w(c3751b.f12177e, C4038f.class)) != null) {
            ((AbstractC3761j) c3751b.f12178f).f12200k.m1802d("X-Served-From", "cache");
            return;
        }
        C4033c c4033c = (C4033c) ((Hashtable) c3751b.f12181a.f11570a).get("cache-data");
        C4026b m1494c = C4026b.m1494c(((AbstractC3761j) c3751b.f12178f).f12200k.f12257a);
        m1494c.m1490g("Content-Length");
        Locale locale = Locale.ENGLISH;
        AbstractC3761j abstractC3761j = (AbstractC3761j) c3751b.f12178f;
        m1494c.m1489h(String.format(locale, "%s %s %s", abstractC3761j.f12203n, Integer.valueOf(abstractC3761j.f12202m), ((AbstractC3761j) c3751b.f12178f).f12204o));
        C4042e c4042e = new C4042e(c3751b.f12182b.f12186c, m1494c);
        ((Hashtable) c3751b.f12181a.f11570a).put("response-headers", c4042e);
        if (c4033c != null) {
            C4042e c4042e2 = c4033c.f12669d;
            Objects.requireNonNull(c4042e2);
            if (c4042e.f12692b.f12643c == 304 || !(c4042e2.f12694d == null || (date = c4042e.f12694d) == null || date.getTime() >= c4042e2.f12694d.getTime())) {
                c3751b.f12182b.m1820d("Serving response from conditional cache");
                C4042e c4042e3 = c4033c.f12669d;
                Objects.requireNonNull(c4042e3);
                C4026b c4026b = new C4026b();
                int i2 = 0;
                while (true) {
                    if (i2 < c4042e3.f12692b.m1491f()) {
                        String m1493d = c4042e3.f12692b.m1493d(i2);
                        String m1492e = c4042e3.f12692b.m1492e(i2);
                        if (!m1493d.equals("Warning") || !m1492e.startsWith("1")) {
                            if (C4042e.m1473b(m1493d)) {
                                C4026b c4026b2 = c4042e.f12692b;
                                int size = c4026b2.f12641a.size();
                                while (true) {
                                    int i3 = size - 2;
                                    if (i3 < 0) {
                                        str = null;
                                        break;
                                    }
                                    size = i3;
                                    if (m1493d.equalsIgnoreCase(c4026b2.f12641a.get(i3))) {
                                        str = c4026b2.f12641a.get(i3 + 1);
                                        break;
                                    }
                                }
                                if (str != null) {
                                }
                            }
                            c4026b.m1496a(m1493d, m1492e);
                        }
                        i2++;
                    }
                }
                for (i = 0; i < c4042e.f12692b.m1491f(); i++) {
                    String m1493d2 = c4042e.f12692b.m1493d(i);
                    if (C4042e.m1473b(m1493d2)) {
                        c4026b.m1496a(m1493d2, c4042e.f12692b.m1492e(i));
                    }
                }
                C4042e c4042e4 = new C4042e(c4042e3.f12691a, c4026b);
                ((AbstractC3761j) c3751b.f12178f).f12200k = new C3782w(c4042e4.f12692b.m1488i());
                AbstractC3749g.AbstractC3758i abstractC3758i = c3751b.f12178f;
                C4026b c4026b3 = c4042e4.f12692b;
                int i4 = c4026b3.f12643c;
                AbstractC3761j abstractC3761j2 = (AbstractC3761j) abstractC3758i;
                abstractC3761j2.f12202m = i4;
                abstractC3761j2.f12204o = c4026b3.f12644d;
                abstractC3761j2.f12200k.m1802d("X-Served-From", "conditional-cache");
                this.f12658e++;
                C4034d c4034d = new C4034d(c4033c.f12667b, c4033c.f12668c);
                c4034d.mo1827o(c3751b.f12176i);
                c3751b.f12176i = c4034d;
                c4034d.mo940a().m2359g(c4034d.f12674l);
                return;
            }
            ((Hashtable) c3751b.f12181a.f11570a).remove("cache-data");
            C4951d.m198e(c4033c.f12666a);
        }
        C4028c c4028c = (C4028c) ((Hashtable) c3751b.f12181a.f11570a).get("request-headers");
        if (c4028c == null || !c4042e.m1474a(c4028c) || !c3751b.f12182b.f12185b.equals("GET")) {
            this.f12660g++;
            c3751b.f12182b.m1822b("Response is not cacheable");
            return;
        }
        String m852f = C4539d.m852f(c3751b.f12182b.f12186c);
        C4026b c4026b4 = c4028c.f12645a;
        Set<String> set = c4042e.f12706p;
        Objects.requireNonNull(c4026b4);
        C4026b c4026b5 = new C4026b();
        for (int i5 = 0; i5 < c4026b4.f12641a.size(); i5 += 2) {
            String str2 = c4026b4.f12641a.get(i5);
            if (set.contains(str2)) {
                c4026b5.m1496a(str2, c4026b4.f12641a.get(i5 + 1));
            }
        }
        C3759h c3759h = c3751b.f12182b;
        C4039g c4039g = new C4039g(c3759h.f12186c, c4026b5, c3759h, c4042e.f12692b);
        C4032b c4032b = new C4032b(null);
        C4041i c4041i = new C4041i(m852f);
        try {
            c4039g.m1477a(c4041i);
            c4041i.m1475b(1);
            c4032b.f12664h = c4041i;
            c4032b.mo1827o(c3751b.f12176i);
            c3751b.f12176i = c4032b;
            ((Hashtable) c3751b.f12181a.f11570a).put("body-cacher", c4032b);
            c3751b.f12182b.m1822b("Caching response");
            this.f12661h++;
        } catch (Exception e) {
            c4041i.m1476a();
            this.f12660g++;
        }
    }

    @Override // p181n7.C3746d0, p181n7.AbstractC3749g
    /* renamed from: g */
    public void mo1485g(AbstractC3749g.C3756g c3756g) {
        FileInputStream[] fileInputStreamArr;
        C4033c c4033c = (C4033c) ((Hashtable) c3756g.f12181a.f11570a).get("cache-data");
        if (c4033c != null && (fileInputStreamArr = c4033c.f12666a) != null) {
            C4951d.m198e(fileInputStreamArr);
        }
        C4038f c4038f = (C4038f) C3102d.m2616w(c3756g.f12177e, C4038f.class);
        if (c4038f != null) {
            C4951d.m198e(c4038f.f12670h.f12685b);
        }
        C4032b c4032b = (C4032b) ((Hashtable) c3756g.f12181a.f11570a).get("body-cacher");
        if (c4032b != null) {
            if (c3756g.f12183j != null) {
                c4032b.m1482p();
                return;
            }
            C4041i c4041i = c4032b.f12664h;
            if (c4041i == null) {
                return;
            }
            C4951d.m198e(c4041i.f12688c);
            if (!c4041i.f12689d) {
                C4539d c4539d = C4030d.this.f12656c;
                String str = c4041i.f12686a;
                File[] fileArr = c4041i.f12687b;
                int i = 0;
                while (true) {
                    File m856b = c4539d.m856b(str, i);
                    if (!m856b.exists()) {
                        break;
                    }
                    m856b.delete();
                    i++;
                }
                int i2 = 0;
                while (true) {
                    if (i2 >= fileArr.length) {
                        break;
                    }
                    File file = fileArr[i2];
                    File m856b2 = c4539d.m856b(str, i2);
                    if (!file.renameTo(m856b2)) {
                        for (File file2 : fileArr) {
                            file2.delete();
                        }
                        c4539d.m853e(str);
                    } else {
                        c4539d.m853e(file.getName());
                        c4539d.f13957d.m850c(c4539d.m855c(str, i2), new C4539d.C4541b(c4539d, m856b2));
                        i2++;
                    }
                }
                C4030d.this.f12654a++;
                c4041i.f12689d = true;
            }
            c4032b.f12664h = null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:70:0x02ce, code lost:
        if (r0 > 0) goto L83;
     */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0478  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0581  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x014f  */
    /* JADX WARN: Type inference failed for: r0v148, types: [long] */
    /* JADX WARN: Type inference failed for: r0v216, types: [long] */
    /* JADX WARN: Type inference failed for: r0v219, types: [long] */
    /* JADX WARN: Type inference failed for: r0v221, types: [long] */
    /* JADX WARN: Type inference failed for: r0v238, types: [long] */
    /* JADX WARN: Type inference failed for: r0v240, types: [long] */
    /* JADX WARN: Type inference failed for: r0v242, types: [long] */
    /* JADX WARN: Type inference failed for: r0v250, types: [long] */
    /* JADX WARN: Type inference failed for: r0v254, types: [long] */
    /* JADX WARN: Type inference failed for: r0v256, types: [long] */
    /* JADX WARN: Type inference failed for: r0v258, types: [long] */
    /* JADX WARN: Type inference failed for: r0v261, types: [long] */
    @Override // p181n7.C3746d0, p181n7.AbstractC3749g
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p170m7.AbstractC3653a mo1484h(p181n7.AbstractC3749g.C3750a r8) {
        /*
            Method dump skipped, instructions count: 1577
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p202p7.C4030d.mo1484h(n7.g$a):m7.a");
    }
}
