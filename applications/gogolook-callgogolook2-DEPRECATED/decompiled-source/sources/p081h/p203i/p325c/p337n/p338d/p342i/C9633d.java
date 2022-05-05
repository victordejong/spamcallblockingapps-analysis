package p081h.p203i.p325c.p337n.p338d.p342i;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.Locale;
import p081h.p203i.p325c.p337n.p338d.C9513b;
import p081h.p203i.p325c.p337n.p338d.p341h.C9546h;
import p081h.p203i.p325c.p337n.p338d.p342i.C9628c;
import p459j.p460a.p582w0.p590x4.C14247d;
/* renamed from: h.i.c.n.d.i.d */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/i/d.class */
public class C9633d implements AbstractC9623a {

    /* renamed from: d */
    public static final Charset f21946d = Charset.forName("UTF-8");

    /* renamed from: a */
    public final File f21947a;

    /* renamed from: b */
    public final int f21948b;

    /* renamed from: c */
    public C9628c f21949c;

    /* renamed from: h.i.c.n.d.i.d$a */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/i/d$a.class */
    public class C9634a implements C9628c.AbstractC9632d {

        /* renamed from: a */
        public final /* synthetic */ byte[] f21950a;

        /* renamed from: b */
        public final /* synthetic */ int[] f21951b;

        public C9634a(C9633d dVar, byte[] bArr, int[] iArr) {
            this.f21950a = bArr;
            this.f21951b = iArr;
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p342i.C9628c.AbstractC9632d
        /* renamed from: a */
        public void mo14637a(InputStream inputStream, int i) throws IOException {
            try {
                inputStream.read(this.f21950a, this.f21951b[0], i);
                int[] iArr = this.f21951b;
                iArr[0] = iArr[0] + i;
            } finally {
                inputStream.close();
            }
        }
    }

    /* renamed from: h.i.c.n.d.i.d$b */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/i/d$b.class */
    public class C9635b {

        /* renamed from: a */
        public final byte[] f21952a;

        /* renamed from: b */
        public final int f21953b;

        public C9635b(C9633d dVar, byte[] bArr, int i) {
            this.f21952a = bArr;
            this.f21953b = i;
        }
    }

    public C9633d(File file, int i) {
        this.f21947a = file;
        this.f21948b = i;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p342i.AbstractC9623a
    /* renamed from: a */
    public void mo14645a() {
        C9546h.m14934a(this.f21949c, "There was a problem closing the Crashlytics log file.");
        this.f21949c = null;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p342i.AbstractC9623a
    /* renamed from: a */
    public void mo14644a(long j, String str) {
        m14638f();
        m14642b(j, str);
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p342i.AbstractC9623a
    /* renamed from: b */
    public String mo14643b() {
        byte[] c = mo14641c();
        return c != null ? new String(c, f21946d) : null;
    }

    /* renamed from: b */
    public final void m14642b(long j, String str) {
        int i;
        if (this.f21949c != null) {
            String str2 = str;
            if (str == null) {
                str2 = C14247d.f31851f;
            }
            try {
                String str3 = str2;
                if (str2.length() > this.f21948b / 4) {
                    str3 = "..." + str2.substring(str2.length() - i);
                }
                this.f21949c.m14660a(String.format(Locale.US, "%d %s%n", Long.valueOf(j), str3.replaceAll("\r", " ").replaceAll("\n", " ")).getBytes(f21946d));
                while (!this.f21949c.m14656b() && this.f21949c.m14646f() > this.f21948b) {
                    this.f21949c.m14647e();
                }
            } catch (IOException e) {
                C9513b.m15015a().m15010b("There was a problem writing to the Crashlytics log.", e);
            }
        }
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p342i.AbstractC9623a
    /* renamed from: c */
    public byte[] mo14641c() {
        C9635b e = m14639e();
        if (e == null) {
            return null;
        }
        int i = e.f21953b;
        byte[] bArr = new byte[i];
        System.arraycopy(e.f21952a, 0, bArr, 0, i);
        return bArr;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p342i.AbstractC9623a
    /* renamed from: d */
    public void mo14640d() {
        mo14645a();
        this.f21947a.delete();
    }

    /* renamed from: e */
    public final C9635b m14639e() {
        if (!this.f21947a.exists()) {
            return null;
        }
        m14638f();
        C9628c cVar = this.f21949c;
        if (cVar == null) {
            return null;
        }
        int[] iArr = {0};
        byte[] bArr = new byte[cVar.m14646f()];
        try {
            this.f21949c.m14666a(new C9634a(this, bArr, iArr));
        } catch (IOException e) {
            C9513b.m15015a().m15010b("A problem occurred while reading the Crashlytics log file.", e);
        }
        return new C9635b(this, bArr, iArr[0]);
    }

    /* renamed from: f */
    public final void m14638f() {
        if (this.f21949c == null) {
            try {
                this.f21949c = new C9628c(this.f21947a);
            } catch (IOException e) {
                C9513b a = C9513b.m15015a();
                a.m15010b("Could not open log file: " + this.f21947a, e);
            }
        }
    }
}
