package p068d2;

import android.support.p012v4.media.C0082b;
import com.google.android.gms.internal.ads.C1676a;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.RandomAccessFile;
import java.util.LinkedList;
import java.util.Objects;
import java.util.zip.GZIPInputStream;
import org.json.JSONException;
import p007a6.C0028d;
/* renamed from: d2.h3 */
/* loaded from: classes-dex2jar.jar:d2/h3.class */
public class C2292h3 {

    /* renamed from: a */
    public LinkedList<Runnable> f8225a = new LinkedList<>();

    /* renamed from: b */
    public boolean f8226b;

    /* renamed from: d2.h3$a */
    /* loaded from: classes-dex2jar.jar:d2/h3$a.class */
    public class C2293a implements AbstractC2458y0 {

        /* renamed from: d2.h3$a$a */
        /* loaded from: classes-dex2jar.jar:d2/h3$a$a.class */
        public class RunnableC2294a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ C2410t0 f8228a;

            public RunnableC2294a(C2410t0 c2410t0) {
                C2293a.this = r4;
                this.f8228a = c2410t0;
            }

            @Override // java.lang.Runnable
            public void run() {
                C2292h3 c2292h3 = C2292h3.this;
                C2410t0 c2410t0 = this.f8228a;
                Objects.requireNonNull(c2292h3);
                C2267f4 c2267f4 = c2410t0.f8537b;
                String m3697o = c2267f4.m3697o("filepath");
                String m3697o2 = c2267f4.m3697o("data");
                boolean equals = c2267f4.m3697o("encoding").equals("utf8");
                C2267f4 m4791f = C1676a.m4791f();
                try {
                    c2292h3.m3679d(m3697o, m3697o2, equals);
                    C2227e4.m3739n(m4791f, "success", true);
                    c2410t0.m3587a(m4791f).m3586b();
                } catch (IOException e) {
                    C0028d.m8912h(m4791f, "success", false, c2410t0, m4791f);
                }
                C2292h3.m3681b(C2292h3.this);
            }
        }

        public C2293a() {
            C2292h3.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            C2292h3.m3680c(C2292h3.this, new RunnableC2294a(c2410t0));
        }
    }

    /* renamed from: d2.h3$b */
    /* loaded from: classes-dex2jar.jar:d2/h3$b.class */
    public class C2295b implements AbstractC2458y0 {

        /* renamed from: d2.h3$b$a */
        /* loaded from: classes-dex2jar.jar:d2/h3$b$a.class */
        public class RunnableC2296a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ C2410t0 f8231a;

            public RunnableC2296a(C2410t0 c2410t0) {
                C2295b.this = r4;
                this.f8231a = c2410t0;
            }

            @Override // java.lang.Runnable
            public void run() {
                File file = new File(this.f8231a.f8537b.m3697o("filepath"));
                C2292h3 c2292h3 = C2292h3.this;
                C2410t0 c2410t0 = this.f8231a;
                Objects.requireNonNull(c2292h3);
                C2408t.m3591d().m3732b().m3620d();
                C2267f4 c2267f4 = new C2267f4();
                if (c2292h3.m3678e(file)) {
                    C0028d.m8912h(c2267f4, "success", true, c2410t0, c2267f4);
                } else {
                    C0028d.m8912h(c2267f4, "success", false, c2410t0, c2267f4);
                }
                C2292h3.m3681b(C2292h3.this);
            }
        }

        public C2295b() {
            C2292h3.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            C2292h3.m3680c(C2292h3.this, new RunnableC2296a(c2410t0));
        }
    }

    /* renamed from: d2.h3$c */
    /* loaded from: classes-dex2jar.jar:d2/h3$c.class */
    public class C2297c implements AbstractC2458y0 {

        /* renamed from: d2.h3$c$a */
        /* loaded from: classes-dex2jar.jar:d2/h3$c$a.class */
        public class RunnableC2298a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ C2410t0 f8234a;

            public RunnableC2298a(C2410t0 c2410t0) {
                C2297c.this = r4;
                this.f8234a = c2410t0;
            }

            @Override // java.lang.Runnable
            public void run() {
                C2292h3 c2292h3 = C2292h3.this;
                C2410t0 c2410t0 = this.f8234a;
                Objects.requireNonNull(c2292h3);
                String m3697o = c2410t0.f8537b.m3697o("filepath");
                C2267f4 m4791f = C1676a.m4791f();
                String[] list = new File(m3697o).list();
                if (list != null) {
                    C2200d4 c2200d4 = new C2200d4();
                    for (String str : list) {
                        C2267f4 c2267f4 = new C2267f4();
                        C2227e4.m3744i(c2267f4, "filename", str);
                        if (new File(C1676a.m4789h(m3697o, str)).isDirectory()) {
                            C2227e4.m3739n(c2267f4, "is_folder", true);
                        } else {
                            C2227e4.m3739n(c2267f4, "is_folder", false);
                        }
                        c2200d4.m3764a(c2267f4);
                    }
                    C2227e4.m3739n(m4791f, "success", true);
                    C2227e4.m3746g(m4791f, "entries", c2200d4);
                    c2410t0.m3587a(m4791f).m3586b();
                } else {
                    C0028d.m8912h(m4791f, "success", false, c2410t0, m4791f);
                }
                C2292h3.m3681b(C2292h3.this);
            }
        }

        public C2297c() {
            C2292h3.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            C2292h3.m3680c(C2292h3.this, new RunnableC2298a(c2410t0));
        }
    }

    /* renamed from: d2.h3$d */
    /* loaded from: classes-dex2jar.jar:d2/h3$d.class */
    public class C2299d implements AbstractC2458y0 {

        /* renamed from: d2.h3$d$a */
        /* loaded from: classes-dex2jar.jar:d2/h3$d$a.class */
        public class RunnableC2300a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ C2410t0 f8237a;

            public RunnableC2300a(C2410t0 c2410t0) {
                C2299d.this = r4;
                this.f8237a = c2410t0;
            }

            @Override // java.lang.Runnable
            public void run() {
                C2292h3 c2292h3 = C2292h3.this;
                C2410t0 c2410t0 = this.f8237a;
                Objects.requireNonNull(c2292h3);
                C2267f4 c2267f4 = c2410t0.f8537b;
                String m3697o = c2267f4.m3697o("filepath");
                String m3697o2 = c2267f4.m3697o("encoding");
                boolean z = m3697o2 != null && m3697o2.equals("utf8");
                C2267f4 m4791f = C1676a.m4791f();
                try {
                    StringBuilder m3682a = c2292h3.m3682a(m3697o, z);
                    C2227e4.m3739n(m4791f, "success", true);
                    C2227e4.m3744i(m4791f, "data", m3682a.toString());
                    c2410t0.m3587a(m4791f).m3586b();
                } catch (IOException e) {
                    C0028d.m8912h(m4791f, "success", false, c2410t0, m4791f);
                }
                C2292h3.m3681b(C2292h3.this);
            }
        }

        public C2299d() {
            C2292h3.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            C2292h3.m3680c(C2292h3.this, new RunnableC2300a(c2410t0));
        }
    }

    /* renamed from: d2.h3$e */
    /* loaded from: classes-dex2jar.jar:d2/h3$e.class */
    public class C2301e implements AbstractC2458y0 {

        /* renamed from: d2.h3$e$a */
        /* loaded from: classes-dex2jar.jar:d2/h3$e$a.class */
        public class RunnableC2302a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ C2410t0 f8240a;

            public RunnableC2302a(C2410t0 c2410t0) {
                C2301e.this = r4;
                this.f8240a = c2410t0;
            }

            @Override // java.lang.Runnable
            public void run() {
                C2292h3 c2292h3 = C2292h3.this;
                C2410t0 c2410t0 = this.f8240a;
                Objects.requireNonNull(c2292h3);
                C2267f4 c2267f4 = c2410t0.f8537b;
                String m3697o = c2267f4.m3697o("filepath");
                String m3697o2 = c2267f4.m3697o("new_filepath");
                C2267f4 m4791f = C1676a.m4791f();
                try {
                    if (new File(m3697o).renameTo(new File(m3697o2))) {
                        C2227e4.m3739n(m4791f, "success", true);
                        c2410t0.m3587a(m4791f).m3586b();
                    } else {
                        C2227e4.m3739n(m4791f, "success", false);
                        c2410t0.m3587a(m4791f).m3586b();
                    }
                } catch (Exception e) {
                    C0028d.m8912h(m4791f, "success", false, c2410t0, m4791f);
                }
                C2292h3.m3681b(C2292h3.this);
            }
        }

        public C2301e() {
            C2292h3.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            C2292h3.m3680c(C2292h3.this, new RunnableC2302a(c2410t0));
        }
    }

    /* renamed from: d2.h3$f */
    /* loaded from: classes-dex2jar.jar:d2/h3$f.class */
    public class C2303f implements AbstractC2458y0 {

        /* renamed from: d2.h3$f$a */
        /* loaded from: classes-dex2jar.jar:d2/h3$f$a.class */
        public class RunnableC2304a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ C2410t0 f8243a;

            public RunnableC2304a(C2410t0 c2410t0) {
                C2303f.this = r4;
                this.f8243a = c2410t0;
            }

            @Override // java.lang.Runnable
            public void run() {
                C2292h3 c2292h3 = C2292h3.this;
                C2410t0 c2410t0 = this.f8243a;
                Objects.requireNonNull(c2292h3);
                String m3697o = c2410t0.f8537b.m3697o("filepath");
                C2408t.m3591d().m3732b().m3620d();
                C2267f4 c2267f4 = new C2267f4();
                try {
                    C2227e4.m3739n(c2267f4, "result", new File(m3697o).exists());
                    C2227e4.m3739n(c2267f4, "success", true);
                    c2410t0.m3587a(c2267f4).m3586b();
                } catch (Exception e) {
                    C2227e4.m3739n(c2267f4, "result", false);
                    C2227e4.m3739n(c2267f4, "success", false);
                    c2410t0.m3587a(c2267f4).m3586b();
                    e.printStackTrace();
                }
                C2292h3.m3681b(C2292h3.this);
            }
        }

        public C2303f() {
            C2292h3.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            C2292h3.m3680c(C2292h3.this, new RunnableC2304a(c2410t0));
        }
    }

    /* renamed from: d2.h3$g */
    /* loaded from: classes-dex2jar.jar:d2/h3$g.class */
    public class C2305g implements AbstractC2458y0 {

        /* renamed from: d2.h3$g$a */
        /* loaded from: classes-dex2jar.jar:d2/h3$g$a.class */
        public class RunnableC2306a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ C2410t0 f8246a;

            public RunnableC2306a(C2410t0 c2410t0) {
                C2305g.this = r4;
                this.f8246a = c2410t0;
            }

            @Override // java.lang.Runnable
            public void run() {
                int i;
                C2292h3 c2292h3 = C2292h3.this;
                C2410t0 c2410t0 = this.f8246a;
                Objects.requireNonNull(c2292h3);
                C2267f4 c2267f4 = c2410t0.f8537b;
                String m3697o = c2267f4.m3697o("filepath");
                C2267f4 m4791f = C1676a.m4791f();
                try {
                    int m3735r = C2227e4.m3735r(c2267f4, "offset");
                    int m3735r2 = C2227e4.m3735r(c2267f4, "size");
                    boolean m3741l = C2227e4.m3741l(c2267f4, "gunzip");
                    String m3697o2 = c2267f4.m3697o("output_filepath");
                    C2166a3 c2166a3 = new C2166a3(new FileInputStream(m3697o), m3735r, m3735r2);
                    InputStream inputStream = c2166a3;
                    if (m3741l) {
                        inputStream = new GZIPInputStream(c2166a3, 1024);
                    }
                    if (m3697o2.equals("")) {
                        StringBuilder sb = new StringBuilder(inputStream.available());
                        byte[] bArr = new byte[1024];
                        while (true) {
                            int read = inputStream.read(bArr, 0, 1024);
                            if (read < 0) {
                                break;
                            }
                            sb.append(new String(bArr, 0, read, "ISO-8859-1"));
                        }
                        C2227e4.m3740m(m4791f, "size", sb.length());
                        C2227e4.m3744i(m4791f, "data", sb.toString());
                    } else {
                        FileOutputStream fileOutputStream = new FileOutputStream(m3697o2);
                        byte[] bArr2 = new byte[1024];
                        int i2 = 0;
                        while (true) {
                            i = i2;
                            int read2 = inputStream.read(bArr2, 0, 1024);
                            if (read2 < 0) {
                                break;
                            }
                            fileOutputStream.write(bArr2, 0, read2);
                            i2 = i + read2;
                        }
                        fileOutputStream.close();
                        C2227e4.m3740m(m4791f, "size", i);
                    }
                    inputStream.close();
                    C2227e4.m3739n(m4791f, "success", true);
                    c2410t0.m3587a(m4791f).m3586b();
                } catch (IOException e) {
                    C0028d.m8912h(m4791f, "success", false, c2410t0, m4791f);
                } catch (OutOfMemoryError e2) {
                    C2408t.m3591d().m3718p().m3686e(0, 0, "Out of memory error - disabling AdColony.", false);
                    C2408t.m3591d().f8065C = true;
                    C0028d.m8912h(m4791f, "success", false, c2410t0, m4791f);
                }
                C2292h3.m3681b(C2292h3.this);
            }
        }

        public C2305g() {
            C2292h3.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            C2292h3.m3680c(C2292h3.this, new RunnableC2306a(c2410t0));
        }
    }

    /* renamed from: d2.h3$h */
    /* loaded from: classes-dex2jar.jar:d2/h3$h.class */
    public class C2307h implements AbstractC2458y0 {

        /* renamed from: d2.h3$h$a */
        /* loaded from: classes-dex2jar.jar:d2/h3$h$a.class */
        public class RunnableC2308a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ C2410t0 f8249a;

            public RunnableC2308a(C2410t0 c2410t0) {
                C2307h.this = r4;
                this.f8249a = c2410t0;
            }

            @Override // java.lang.Runnable
            public void run() {
                C2292h3 c2292h3 = C2292h3.this;
                C2410t0 c2410t0 = this.f8249a;
                Objects.requireNonNull(c2292h3);
                C2267f4 c2267f4 = c2410t0.f8537b;
                String m3697o = c2267f4.m3697o("filepath");
                String m3697o2 = c2267f4.m3697o("bundle_path");
                C2200d4 m3750c = C2227e4.m3750c(c2267f4, "bundle_filenames");
                C2267f4 m4791f = C1676a.m4791f();
                try {
                    File file = new File(m3697o2);
                    RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
                    byte[] bArr = new byte[32];
                    randomAccessFile.readInt();
                    int readInt = randomAccessFile.readInt();
                    C2200d4 c2200d4 = new C2200d4();
                    byte[] bArr2 = new byte[1024];
                    for (int i = 0; i < readInt; i++) {
                        randomAccessFile.seek((i * 44) + 8);
                        randomAccessFile.read(bArr);
                        randomAccessFile.readInt();
                        int readInt2 = randomAccessFile.readInt();
                        int readInt3 = randomAccessFile.readInt();
                        synchronized (c2200d4.f8025a) {
                            c2200d4.f8025a.put(readInt3);
                        }
                        try {
                            String str = m3697o + m3750c.f8025a.get(i);
                            randomAccessFile.seek(readInt2);
                            FileOutputStream fileOutputStream = new FileOutputStream(str);
                            int i2 = readInt3 / 1024;
                            int i3 = readInt3 % 1024;
                            for (int i4 = 0; i4 < i2; i4++) {
                                randomAccessFile.read(bArr2, 0, 1024);
                                fileOutputStream.write(bArr2, 0, 1024);
                            }
                            randomAccessFile.read(bArr2, 0, i3);
                            fileOutputStream.write(bArr2, 0, i3);
                            fileOutputStream.close();
                        } catch (JSONException e) {
                            C2408t.m3591d().m3718p().m3686e(0, 0, "Couldn't extract file name at index " + i + " unpacking ad unit bundle at " + m3697o2, false);
                            C2227e4.m3739n(m4791f, "success", false);
                            c2410t0.m3587a(m4791f).m3586b();
                        }
                    }
                    randomAccessFile.close();
                    file.delete();
                    C2227e4.m3739n(m4791f, "success", true);
                    C2227e4.m3746g(m4791f, "file_sizes", c2200d4);
                    c2410t0.m3587a(m4791f).m3586b();
                } catch (IOException e2) {
                    C0082b.m8750l(0, 0, C1676a.m4789h("Failed to find or open ad unit bundle at path: ", m3697o2), true);
                    C0028d.m8912h(m4791f, "success", false, c2410t0, m4791f);
                } catch (OutOfMemoryError e3) {
                    C2408t.m3591d().m3718p().m3686e(0, 0, "Out of memory error - disabling AdColony.", false);
                    C2408t.m3591d().f8065C = true;
                    C0028d.m8912h(m4791f, "success", false, c2410t0, m4791f);
                }
                C2292h3.m3681b(C2292h3.this);
            }
        }

        public C2307h() {
            C2292h3.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            C2292h3.m3680c(C2292h3.this, new RunnableC2308a(c2410t0));
        }
    }

    /* renamed from: d2.h3$i */
    /* loaded from: classes-dex2jar.jar:d2/h3$i.class */
    public class C2309i implements AbstractC2458y0 {

        /* renamed from: d2.h3$i$a */
        /* loaded from: classes-dex2jar.jar:d2/h3$i$a.class */
        public class RunnableC2310a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ C2410t0 f8252a;

            public RunnableC2310a(C2410t0 c2410t0) {
                C2309i.this = r4;
                this.f8252a = c2410t0;
            }

            @Override // java.lang.Runnable
            public void run() {
                C2292h3 c2292h3 = C2292h3.this;
                C2410t0 c2410t0 = this.f8252a;
                Objects.requireNonNull(c2292h3);
                String m3697o = c2410t0.f8537b.m3697o("filepath");
                C2267f4 m4791f = C1676a.m4791f();
                try {
                    if (new File(m3697o).mkdir()) {
                        C2227e4.m3739n(m4791f, "success", true);
                        c2410t0.m3587a(m4791f).m3586b();
                    } else {
                        C2227e4.m3739n(m4791f, "success", false);
                    }
                } catch (Exception e) {
                    C0028d.m8912h(m4791f, "success", false, c2410t0, m4791f);
                }
                C2292h3.m3681b(C2292h3.this);
            }
        }

        public C2309i() {
            C2292h3.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            C2292h3.m3680c(C2292h3.this, new RunnableC2310a(c2410t0));
        }
    }

    /* renamed from: b */
    public static void m3681b(C2292h3 c2292h3) {
        c2292h3.f8226b = false;
        if (!c2292h3.f8225a.isEmpty()) {
            c2292h3.f8226b = true;
            c2292h3.f8225a.removeLast().run();
        }
    }

    /* renamed from: c */
    public static void m3680c(C2292h3 c2292h3, Runnable runnable) {
        if (!c2292h3.f8225a.isEmpty() || c2292h3.f8226b) {
            c2292h3.f8225a.push(runnable);
            return;
        }
        c2292h3.f8226b = true;
        runnable.run();
    }

    /* renamed from: a */
    public StringBuilder m3682a(String str, boolean z) throws IOException {
        File file = new File(str);
        StringBuilder sb = new StringBuilder((int) file.length());
        BufferedReader bufferedReader = z ? new BufferedReader(new InputStreamReader(new FileInputStream(file.getAbsolutePath()), "UTF-8")) : new BufferedReader(new InputStreamReader(new FileInputStream(file.getAbsolutePath())));
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                bufferedReader.close();
                return sb;
            }
            sb.append(readLine);
            sb.append("\n");
        }
    }

    /* renamed from: d */
    public void m3679d(String str, String str2, boolean z) throws IOException {
        BufferedWriter bufferedWriter = z ? new BufferedWriter(new OutputStreamWriter(new FileOutputStream(str), "UTF-8")) : new BufferedWriter(new OutputStreamWriter(new FileOutputStream(str)));
        bufferedWriter.write(str2);
        bufferedWriter.flush();
        bufferedWriter.close();
    }

    /* renamed from: e */
    public boolean m3678e(File file) {
        try {
            if (file.isDirectory() && file.list().length != 0) {
                String[] list = file.list();
                if (list.length > 0) {
                    return m3678e(new File(file, list[0]));
                }
                if (file.list().length != 0) {
                    return false;
                }
                return file.delete();
            }
            return file.delete();
        } catch (Exception e) {
            return false;
        }
    }

    /* renamed from: f */
    public void m3677f() {
        C2408t.m3592c("FileSystem.save", new C2293a());
        C2408t.m3592c("FileSystem.delete", new C2295b());
        C2408t.m3592c("FileSystem.listing", new C2297c());
        C2408t.m3592c("FileSystem.load", new C2299d());
        C2408t.m3592c("FileSystem.rename", new C2301e());
        C2408t.m3592c("FileSystem.exists", new C2303f());
        C2408t.m3592c("FileSystem.extract", new C2305g());
        C2408t.m3592c("FileSystem.unpack_bundle", new C2307h());
        C2408t.m3592c("FileSystem.create_directory", new C2309i());
    }
}
