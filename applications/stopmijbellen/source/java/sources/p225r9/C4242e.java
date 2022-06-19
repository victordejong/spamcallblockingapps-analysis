package p225r9;

import android.support.p012v4.media.C0082b;
import com.google.android.gms.internal.ads.C1676a;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.Flushable;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.logging.Logger;
import java.util.regex.Pattern;
import p011aa.AbstractC0054g;
import p011aa.AbstractC0073x;
import p011aa.AbstractC0074y;
import p011aa.C0062o;
import p011aa.C0065p;
import p011aa.C0067r;
import p011aa.C0069t;
import p214q9.C4171c;
import p279w9.AbstractC4792a;
import p290x9.C4945f;
/* renamed from: r9.e */
/* loaded from: classes2-dex2jar.jar:r9/e.class */
public final class C4242e implements Closeable, Flushable {

    /* renamed from: u */
    public static final Pattern f13285u = Pattern.compile("[a-z0-9_-]{1,120}");

    /* renamed from: a */
    public final AbstractC4792a f13286a;

    /* renamed from: b */
    public final File f13287b;

    /* renamed from: c */
    public final File f13288c;

    /* renamed from: d */
    public final File f13289d;

    /* renamed from: e */
    public final File f13290e;

    /* renamed from: f */
    public final int f13291f;

    /* renamed from: g */
    public long f13292g;

    /* renamed from: h */
    public final int f13293h;

    /* renamed from: j */
    public AbstractC0054g f13295j;

    /* renamed from: l */
    public int f13297l;

    /* renamed from: m */
    public boolean f13298m;

    /* renamed from: n */
    public boolean f13299n;

    /* renamed from: o */
    public boolean f13300o;

    /* renamed from: p */
    public boolean f13301p;

    /* renamed from: q */
    public boolean f13302q;

    /* renamed from: s */
    public final Executor f13304s;

    /* renamed from: i */
    public long f13294i = 0;

    /* renamed from: k */
    public final LinkedHashMap<String, C4247d> f13296k = new LinkedHashMap<>(0, 0.75f, true);

    /* renamed from: r */
    public long f13303r = 0;

    /* renamed from: t */
    public final Runnable f13305t = new RunnableC4243a();

    /* renamed from: r9.e$a */
    /* loaded from: classes2-dex2jar.jar:r9/e$a.class */
    public class RunnableC4243a implements Runnable {
        public RunnableC4243a() {
            C4242e.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (C4242e.this) {
                C4242e c4242e = C4242e.this;
                if ((!c4242e.f13299n) || c4242e.f13300o) {
                    return;
                }
                try {
                    c4242e.m1247L();
                } catch (IOException e) {
                    C4242e.this.f13301p = true;
                }
                try {
                    if (C4242e.this.m1240r()) {
                        C4242e.this.m1249J();
                        C4242e.this.f13297l = 0;
                    }
                } catch (IOException e2) {
                    C4242e c4242e2 = C4242e.this;
                    c4242e2.f13302q = true;
                    Logger logger = C0062o.f138a;
                    c4242e2.f13295j = new C0067r(new C0065p());
                }
            }
        }
    }

    /* renamed from: r9.e$b */
    /* loaded from: classes2-dex2jar.jar:r9/e$b.class */
    public class C4244b extends C4249f {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4244b(AbstractC0073x abstractC0073x) {
            super(abstractC0073x);
            C4242e.this = r4;
        }

        @Override // p225r9.C4249f
        /* renamed from: d */
        public void mo1231d(IOException iOException) {
            C4242e.this.f13298m = true;
        }
    }

    /* renamed from: r9.e$c */
    /* loaded from: classes2-dex2jar.jar:r9/e$c.class */
    public final class C4245c {

        /* renamed from: a */
        public final C4247d f13308a;

        /* renamed from: b */
        public final boolean[] f13309b;

        /* renamed from: c */
        public boolean f13310c;

        /* renamed from: r9.e$c$a */
        /* loaded from: classes2-dex2jar.jar:r9/e$c$a.class */
        public class C4246a extends C4249f {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C4246a(AbstractC0073x abstractC0073x) {
                super(abstractC0073x);
                C4245c.this = r4;
            }

            @Override // p225r9.C4249f
            /* renamed from: d */
            public void mo1231d(IOException iOException) {
                synchronized (C4242e.this) {
                    C4245c.this.m1236c();
                }
            }
        }

        public C4245c(C4247d c4247d) {
            C4242e.this = r4;
            this.f13308a = c4247d;
            this.f13309b = c4247d.f13317e ? null : new boolean[r4.f13293h];
        }

        /* renamed from: a */
        public void m1238a() throws IOException {
            synchronized (C4242e.this) {
                if (this.f13310c) {
                    throw new IllegalStateException();
                }
                if (this.f13308a.f13318f == this) {
                    C4242e.this.m1244k(this, false);
                }
                this.f13310c = true;
            }
        }

        /* renamed from: b */
        public void m1237b() throws IOException {
            synchronized (C4242e.this) {
                if (this.f13310c) {
                    throw new IllegalStateException();
                }
                if (this.f13308a.f13318f == this) {
                    C4242e.this.m1244k(this, true);
                }
                this.f13310c = true;
            }
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0040 -> B:8:0x0031). Please submit an issue!!! */
        /* renamed from: c */
        public void m1236c() {
            if (this.f13308a.f13318f == this) {
                int i = 0;
                while (true) {
                    C4242e c4242e = C4242e.this;
                    if (i >= c4242e.f13293h) {
                        this.f13308a.f13318f = null;
                        return;
                    }
                    try {
                        ((AbstractC4792a.C4793a) c4242e.f13286a).m451a(this.f13308a.f13316d[i]);
                    } catch (IOException e) {
                    }
                    i++;
                }
            }
        }

        /* renamed from: d */
        public AbstractC0073x m1235d(int i) {
            AbstractC0073x abstractC0073x;
            synchronized (C4242e.this) {
                if (!this.f13310c) {
                    C4247d c4247d = this.f13308a;
                    if (c4247d.f13318f != this) {
                        Logger logger = C0062o.f138a;
                        return new C0065p();
                    }
                    if (!c4247d.f13317e) {
                        this.f13309b[i] = true;
                    }
                    File file = c4247d.f13316d[i];
                    try {
                        Objects.requireNonNull((AbstractC4792a.C4793a) C4242e.this.f13286a);
                        try {
                            abstractC0073x = C0062o.m8828c(file);
                        } catch (FileNotFoundException e) {
                            file.getParentFile().mkdirs();
                            abstractC0073x = C0062o.m8828c(file);
                        }
                        return new C4246a(abstractC0073x);
                    } catch (FileNotFoundException e2) {
                        Logger logger2 = C0062o.f138a;
                        return new C0065p();
                    }
                }
                throw new IllegalStateException();
            }
        }
    }

    /* renamed from: r9.e$d */
    /* loaded from: classes2-dex2jar.jar:r9/e$d.class */
    public final class C4247d {

        /* renamed from: a */
        public final String f13313a;

        /* renamed from: b */
        public final long[] f13314b;

        /* renamed from: c */
        public final File[] f13315c;

        /* renamed from: d */
        public final File[] f13316d;

        /* renamed from: e */
        public boolean f13317e;

        /* renamed from: f */
        public C4245c f13318f;

        /* renamed from: g */
        public long f13319g;

        public C4247d(String str) {
            C4242e.this = r8;
            this.f13313a = str;
            int i = r8.f13293h;
            this.f13314b = new long[i];
            this.f13315c = new File[i];
            this.f13316d = new File[i];
            StringBuilder sb = new StringBuilder(str);
            sb.append('.');
            int length = sb.length();
            for (int i2 = 0; i2 < r8.f13293h; i2++) {
                sb.append(i2);
                this.f13315c[i2] = new File(r8.f13287b, sb.toString());
                sb.append(".tmp");
                this.f13316d[i2] = new File(r8.f13287b, sb.toString());
                sb.setLength(length);
            }
        }

        /* renamed from: a */
        public final IOException m1234a(String[] strArr) throws IOException {
            StringBuilder m8752j = C0082b.m8752j("unexpected journal line: ");
            m8752j.append(Arrays.toString(strArr));
            throw new IOException(m8752j.toString());
        }

        /* renamed from: b */
        public C4248e m1233b() {
            if (Thread.holdsLock(C4242e.this)) {
                AbstractC0074y[] abstractC0074yArr = new AbstractC0074y[C4242e.this.f13293h];
                long[] jArr = (long[]) this.f13314b.clone();
                int i = 0;
                while (true) {
                    try {
                        C4242e c4242e = C4242e.this;
                        if (i >= c4242e.f13293h) {
                            return new C4248e(this.f13313a, this.f13319g, abstractC0074yArr, jArr);
                        }
                        abstractC0074yArr[i] = ((AbstractC4792a.C4793a) c4242e.f13286a).m448d(this.f13315c[i]);
                        i++;
                    } catch (FileNotFoundException e) {
                        int i2 = 0;
                        while (true) {
                            C4242e c4242e2 = C4242e.this;
                            if (i2 >= c4242e2.f13293h || abstractC0074yArr[i2] == null) {
                                try {
                                    c4242e2.m1248K(this);
                                    return null;
                                } catch (IOException e2) {
                                    return null;
                                }
                            }
                            C4171c.m1332d(abstractC0074yArr[i2]);
                            i2++;
                        }
                    }
                }
            } else {
                throw new AssertionError();
            }
        }

        /* renamed from: c */
        public void m1232c(AbstractC0054g abstractC0054g) throws IOException {
            for (long j : this.f13314b) {
                abstractC0054g.mo8815w(32).mo8820S(j);
            }
        }
    }

    /* renamed from: r9.e$e */
    /* loaded from: classes2-dex2jar.jar:r9/e$e.class */
    public final class C4248e implements Closeable {

        /* renamed from: a */
        public final String f13321a;

        /* renamed from: b */
        public final long f13322b;

        /* renamed from: c */
        public final AbstractC0074y[] f13323c;

        public C4248e(String str, long j, AbstractC0074y[] abstractC0074yArr, long[] jArr) {
            C4242e.this = r5;
            this.f13321a = str;
            this.f13322b = j;
            this.f13323c = abstractC0074yArr;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            for (AbstractC0074y abstractC0074y : this.f13323c) {
                C4171c.m1332d(abstractC0074y);
            }
        }
    }

    public C4242e(AbstractC4792a abstractC4792a, File file, int i, int i2, long j, Executor executor) {
        this.f13286a = abstractC4792a;
        this.f13287b = file;
        this.f13291f = i;
        this.f13288c = new File(file, "journal");
        this.f13289d = new File(file, "journal.tmp");
        this.f13290e = new File(file, "journal.bkp");
        this.f13293h = i2;
        this.f13292g = j;
        this.f13304s = executor;
    }

    /* renamed from: A */
    public final void m1252A() throws IOException {
        ((AbstractC4792a.C4793a) this.f13286a).m451a(this.f13289d);
        Iterator<C4247d> it2 = this.f13296k.values().iterator();
        while (it2.hasNext()) {
            C4247d next = it2.next();
            if (next.f13318f == null) {
                for (int i = 0; i < this.f13293h; i++) {
                    this.f13294i += next.f13314b[i];
                }
            } else {
                next.f13318f = null;
                for (int i2 = 0; i2 < this.f13293h; i2++) {
                    ((AbstractC4792a.C4793a) this.f13286a).m451a(next.f13315c[i2]);
                    ((AbstractC4792a.C4793a) this.f13286a).m451a(next.f13316d[i2]);
                }
                it2.remove();
            }
        }
    }

    /* renamed from: B */
    public final void m1251B() throws IOException {
        C0069t c0069t = new C0069t(((AbstractC4792a.C4793a) this.f13286a).m448d(this.f13288c));
        try {
            String mo8800t = c0069t.mo8800t();
            String mo8800t2 = c0069t.mo8800t();
            String mo8800t3 = c0069t.mo8800t();
            String mo8800t4 = c0069t.mo8800t();
            String mo8800t5 = c0069t.mo8800t();
            if (!"libcore.io.DiskLruCache".equals(mo8800t) || !"1".equals(mo8800t2) || !Integer.toString(this.f13291f).equals(mo8800t3) || !Integer.toString(this.f13293h).equals(mo8800t4) || !"".equals(mo8800t5)) {
                throw new IOException("unexpected journal header: [" + mo8800t + ", " + mo8800t2 + ", " + mo8800t4 + ", " + mo8800t5 + "]");
            }
            int i = 0;
            while (true) {
                try {
                    m1250D(c0069t.mo8800t());
                    i++;
                } catch (EOFException e) {
                    this.f13297l = i - this.f13296k.size();
                    if (!c0069t.mo8798v()) {
                        m1249J();
                    } else {
                        this.f13295j = m1239s();
                    }
                    C4171c.m1332d(c0069t);
                    return;
                }
            }
        } catch (Throwable th) {
            C4171c.m1332d(c0069t);
            throw th;
        }
    }

    /* renamed from: D */
    public final void m1250D(String str) throws IOException {
        String str2;
        int indexOf = str.indexOf(32);
        if (indexOf != -1) {
            int i = indexOf + 1;
            int indexOf2 = str.indexOf(32, i);
            if (indexOf2 == -1) {
                String substring = str.substring(i);
                str2 = substring;
                if (indexOf == 6) {
                    str2 = substring;
                    if (str.startsWith("REMOVE")) {
                        this.f13296k.remove(substring);
                        return;
                    }
                }
            } else {
                str2 = str.substring(i, indexOf2);
            }
            C4247d c4247d = this.f13296k.get(str2);
            C4247d c4247d2 = c4247d;
            if (c4247d == null) {
                c4247d2 = new C4247d(str2);
                this.f13296k.put(str2, c4247d2);
            }
            if (indexOf2 == -1 || indexOf != 5 || !str.startsWith("CLEAN")) {
                if (indexOf2 == -1 && indexOf == 5 && str.startsWith("DIRTY")) {
                    c4247d2.f13318f = new C4245c(c4247d2);
                    return;
                } else if (indexOf2 != -1 || indexOf != 4 || !str.startsWith("READ")) {
                    throw new IOException(C1676a.m4789h("unexpected journal line: ", str));
                } else {
                    return;
                }
            }
            String[] split = str.substring(indexOf2 + 1).split(" ");
            c4247d2.f13317e = true;
            c4247d2.f13318f = null;
            if (split.length != C4242e.this.f13293h) {
                c4247d2.m1234a(split);
                throw null;
            }
            for (int i2 = 0; i2 < split.length; i2++) {
                try {
                    c4247d2.f13314b[i2] = Long.parseLong(split[i2]);
                } catch (NumberFormatException e) {
                    c4247d2.m1234a(split);
                    throw null;
                }
            }
            return;
        }
        throw new IOException(C1676a.m4789h("unexpected journal line: ", str));
    }

    /* renamed from: J */
    public void m1249J() throws IOException {
        AbstractC0073x abstractC0073x;
        synchronized (this) {
            AbstractC0054g abstractC0054g = this.f13295j;
            if (abstractC0054g != null) {
                abstractC0054g.close();
            }
            AbstractC4792a abstractC4792a = this.f13286a;
            File file = this.f13289d;
            Objects.requireNonNull((AbstractC4792a.C4793a) abstractC4792a);
            try {
                abstractC0073x = C0062o.m8828c(file);
            } catch (FileNotFoundException e) {
                file.getParentFile().mkdirs();
                abstractC0073x = C0062o.m8828c(file);
            }
            Logger logger = C0062o.f138a;
            C0067r c0067r = new C0067r(abstractC0073x);
            c0067r.mo8821R("libcore.io.DiskLruCache");
            c0067r.mo8815w(10);
            c0067r.mo8821R("1");
            c0067r.mo8815w(10);
            c0067r.mo8820S(this.f13291f);
            c0067r.mo8815w(10);
            c0067r.mo8820S(this.f13293h);
            c0067r.mo8815w(10);
            c0067r.mo8815w(10);
            for (C4247d c4247d : this.f13296k.values()) {
                if (c4247d.f13318f != null) {
                    c0067r.mo8821R("DIRTY");
                    c0067r.mo8815w(32);
                    c0067r.mo8821R(c4247d.f13313a);
                    c0067r.mo8815w(10);
                } else {
                    c0067r.mo8821R("CLEAN");
                    c0067r.mo8815w(32);
                    c0067r.mo8821R(c4247d.f13313a);
                    c4247d.m1232c(c0067r);
                    c0067r.mo8815w(10);
                }
            }
            c0067r.close();
            AbstractC4792a abstractC4792a2 = this.f13286a;
            File file2 = this.f13288c;
            Objects.requireNonNull((AbstractC4792a.C4793a) abstractC4792a2);
            if (file2.exists()) {
                ((AbstractC4792a.C4793a) this.f13286a).m449c(this.f13288c, this.f13290e);
            }
            ((AbstractC4792a.C4793a) this.f13286a).m449c(this.f13289d, this.f13288c);
            ((AbstractC4792a.C4793a) this.f13286a).m451a(this.f13290e);
            this.f13295j = m1239s();
            this.f13298m = false;
            this.f13302q = false;
        }
    }

    /* renamed from: K */
    public boolean m1248K(C4247d c4247d) throws IOException {
        C4245c c4245c = c4247d.f13318f;
        if (c4245c != null) {
            c4245c.m1236c();
        }
        for (int i = 0; i < this.f13293h; i++) {
            ((AbstractC4792a.C4793a) this.f13286a).m451a(c4247d.f13315c[i]);
            long j = this.f13294i;
            long[] jArr = c4247d.f13314b;
            this.f13294i = j - jArr[i];
            jArr[i] = 0;
        }
        this.f13297l++;
        this.f13295j.mo8821R("REMOVE").mo8815w(32).mo8821R(c4247d.f13313a).mo8815w(10);
        this.f13296k.remove(c4247d.f13313a);
        if (m1240r()) {
            this.f13304s.execute(this.f13305t);
            return true;
        }
        return true;
    }

    /* renamed from: L */
    public void m1247L() throws IOException {
        while (this.f13294i > this.f13292g) {
            m1248K(this.f13296k.values().iterator().next());
        }
        this.f13301p = false;
    }

    /* renamed from: P */
    public final void m1246P(String str) {
        if (f13285u.matcher(str).matches()) {
            return;
        }
        throw new IllegalArgumentException(C0082b.m8755g("keys must match regex [a-z0-9_-]{1,120}: \"", str, "\""));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this) {
            if (this.f13299n && !this.f13300o) {
                for (C4247d c4247d : (C4247d[]) this.f13296k.values().toArray(new C4247d[this.f13296k.size()])) {
                    C4245c c4245c = c4247d.f13318f;
                    if (c4245c != null) {
                        c4245c.m1238a();
                    }
                }
                m1247L();
                this.f13295j.close();
                this.f13295j = null;
                this.f13300o = true;
                return;
            }
            this.f13300o = true;
        }
    }

    /* renamed from: d */
    public final void m1245d() {
        boolean z;
        synchronized (this) {
            synchronized (this) {
                z = this.f13300o;
            }
            return;
        }
        if (!z) {
            return;
        }
        throw new IllegalStateException("cache is closed");
    }

    @Override // java.io.Flushable
    public void flush() throws IOException {
        synchronized (this) {
            if (!this.f13299n) {
                return;
            }
            m1245d();
            m1247L();
            this.f13295j.flush();
        }
    }

    /* renamed from: k */
    public void m1244k(C4245c c4245c, boolean z) throws IOException {
        synchronized (this) {
            C4247d c4247d = c4245c.f13308a;
            if (c4247d.f13318f == c4245c) {
                int i = 0;
                if (z) {
                    i = 0;
                    if (!c4247d.f13317e) {
                        int i2 = 0;
                        while (true) {
                            i = 0;
                            if (i2 >= this.f13293h) {
                                break;
                            } else if (!c4245c.f13309b[i2]) {
                                c4245c.m1238a();
                                throw new IllegalStateException("Newly created entry didn't create value for index " + i2);
                            } else {
                                AbstractC4792a abstractC4792a = this.f13286a;
                                File file = c4247d.f13316d[i2];
                                Objects.requireNonNull((AbstractC4792a.C4793a) abstractC4792a);
                                if (!file.exists()) {
                                    c4245c.m1238a();
                                    return;
                                }
                                i2++;
                            }
                        }
                    }
                }
                while (i < this.f13293h) {
                    File file2 = c4247d.f13316d[i];
                    if (z) {
                        Objects.requireNonNull((AbstractC4792a.C4793a) this.f13286a);
                        if (file2.exists()) {
                            File file3 = c4247d.f13315c[i];
                            ((AbstractC4792a.C4793a) this.f13286a).m449c(file2, file3);
                            long j = c4247d.f13314b[i];
                            Objects.requireNonNull((AbstractC4792a.C4793a) this.f13286a);
                            long length = file3.length();
                            c4247d.f13314b[i] = length;
                            this.f13294i = (this.f13294i - j) + length;
                        }
                    } else {
                        ((AbstractC4792a.C4793a) this.f13286a).m451a(file2);
                    }
                    i++;
                }
                this.f13297l++;
                c4247d.f13318f = null;
                if (c4247d.f13317e || z) {
                    c4247d.f13317e = true;
                    this.f13295j.mo8821R("CLEAN").mo8815w(32);
                    this.f13295j.mo8821R(c4247d.f13313a);
                    c4247d.m1232c(this.f13295j);
                    this.f13295j.mo8815w(10);
                    if (z) {
                        long j2 = this.f13303r;
                        this.f13303r = 1 + j2;
                        c4247d.f13319g = j2;
                    }
                } else {
                    this.f13296k.remove(c4247d.f13313a);
                    this.f13295j.mo8821R("REMOVE").mo8815w(32);
                    this.f13295j.mo8821R(c4247d.f13313a);
                    this.f13295j.mo8815w(10);
                }
                this.f13295j.flush();
                if (this.f13294i > this.f13292g || m1240r()) {
                    this.f13304s.execute(this.f13305t);
                }
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* renamed from: l */
    public C4245c m1243l(String str, long j) throws IOException {
        synchronized (this) {
            m1241p();
            m1245d();
            m1246P(str);
            C4247d c4247d = this.f13296k.get(str);
            if (j == -1 || (c4247d != null && c4247d.f13319g == j)) {
                if (c4247d != null && c4247d.f13318f != null) {
                    return null;
                }
                if (!this.f13301p && !this.f13302q) {
                    this.f13295j.mo8821R("DIRTY").mo8815w(32).mo8821R(str).mo8815w(10);
                    this.f13295j.flush();
                    if (this.f13298m) {
                        return null;
                    }
                    C4247d c4247d2 = c4247d;
                    if (c4247d == null) {
                        c4247d2 = new C4247d(str);
                        this.f13296k.put(str, c4247d2);
                    }
                    C4245c c4245c = new C4245c(c4247d2);
                    c4247d2.f13318f = c4245c;
                    return c4245c;
                }
                this.f13304s.execute(this.f13305t);
                return null;
            }
            return null;
        }
    }

    /* renamed from: o */
    public C4248e m1242o(String str) throws IOException {
        synchronized (this) {
            m1241p();
            m1245d();
            m1246P(str);
            C4247d c4247d = this.f13296k.get(str);
            if (c4247d != null && c4247d.f13317e) {
                C4248e m1233b = c4247d.m1233b();
                if (m1233b == null) {
                    return null;
                }
                this.f13297l++;
                this.f13295j.mo8821R("READ").mo8815w(32).mo8821R(str).mo8815w(10);
                if (m1240r()) {
                    this.f13304s.execute(this.f13305t);
                }
                return m1233b;
            }
            return null;
        }
    }

    /* renamed from: p */
    public void m1241p() throws IOException {
        synchronized (this) {
            if (this.f13299n) {
                return;
            }
            AbstractC4792a abstractC4792a = this.f13286a;
            File file = this.f13290e;
            Objects.requireNonNull((AbstractC4792a.C4793a) abstractC4792a);
            if (file.exists()) {
                AbstractC4792a abstractC4792a2 = this.f13286a;
                File file2 = this.f13288c;
                Objects.requireNonNull((AbstractC4792a.C4793a) abstractC4792a2);
                if (file2.exists()) {
                    ((AbstractC4792a.C4793a) this.f13286a).m451a(this.f13290e);
                } else {
                    ((AbstractC4792a.C4793a) this.f13286a).m449c(this.f13290e, this.f13288c);
                }
            }
            AbstractC4792a abstractC4792a3 = this.f13286a;
            File file3 = this.f13288c;
            Objects.requireNonNull((AbstractC4792a.C4793a) abstractC4792a3);
            if (file3.exists()) {
                try {
                    m1251B();
                    m1252A();
                    this.f13299n = true;
                    return;
                } catch (IOException e) {
                    C4945f c4945f = C4945f.f15078a;
                    c4945f.mo210l(5, "DiskLruCache " + this.f13287b + " is corrupt: " + e.getMessage() + ", removing", e);
                    close();
                    ((AbstractC4792a.C4793a) this.f13286a).m450b(this.f13287b);
                    this.f13300o = false;
                }
            }
            m1249J();
            this.f13299n = true;
        }
    }

    /* renamed from: r */
    public boolean m1240r() {
        int i = this.f13297l;
        return i >= 2000 && i >= this.f13296k.size();
    }

    /* renamed from: s */
    public final AbstractC0054g m1239s() throws FileNotFoundException {
        AbstractC0073x abstractC0073x;
        AbstractC4792a abstractC4792a = this.f13286a;
        File file = this.f13288c;
        Objects.requireNonNull((AbstractC4792a.C4793a) abstractC4792a);
        try {
            abstractC0073x = C0062o.m8830a(file);
        } catch (FileNotFoundException e) {
            file.getParentFile().mkdirs();
            abstractC0073x = C0062o.m8830a(file);
        }
        C4244b c4244b = new C4244b(abstractC0073x);
        Logger logger = C0062o.f138a;
        return new C0067r(c4244b);
    }
}
