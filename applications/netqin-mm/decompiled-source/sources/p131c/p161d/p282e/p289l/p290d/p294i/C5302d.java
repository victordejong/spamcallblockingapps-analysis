package p131c.p161d.p282e.p289l.p290d.p294i;

import com.android.volley.Request;
import com.google.firebase.crashlytics.internal.common.CommonUtils;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.Locale;
import p131c.p161d.p282e.p289l.p290d.C5192b;
import p131c.p161d.p282e.p289l.p290d.p294i.C5297c;
/* renamed from: c.d.e.l.d.i.d */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/i/d.class */
public class C5302d implements AbstractC5292a {

    /* renamed from: d */
    public static final Charset f18095d = Charset.forName(Request.DEFAULT_PARAMS_ENCODING);

    /* renamed from: a */
    public final File f18096a;

    /* renamed from: b */
    public final int f18097b;

    /* renamed from: c */
    public C5297c f18098c;

    /* renamed from: c.d.e.l.d.i.d$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/i/d$a.class */
    public class C5303a implements C5297c.AbstractC5301d {

        /* renamed from: a */
        public final /* synthetic */ byte[] f18099a;

        /* renamed from: b */
        public final /* synthetic */ int[] f18100b;

        public C5303a(C5302d dVar, byte[] bArr, int[] iArr) {
            this.f18099a = bArr;
            this.f18100b = iArr;
        }

        @Override // p131c.p161d.p282e.p289l.p290d.p294i.C5297c.AbstractC5301d
        /* renamed from: a */
        public void mo23995a(InputStream inputStream, int i) throws IOException {
            try {
                inputStream.read(this.f18099a, this.f18100b[0], i);
                int[] iArr = this.f18100b;
                iArr[0] = iArr[0] + i;
            } finally {
                inputStream.close();
            }
        }
    }

    /* renamed from: c.d.e.l.d.i.d$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/i/d$b.class */
    public class C5304b {

        /* renamed from: a */
        public final byte[] f18101a;

        /* renamed from: b */
        public final int f18102b;

        public C5304b(C5302d dVar, byte[] bArr, int i) {
            this.f18101a = bArr;
            this.f18102b = i;
        }
    }

    public C5302d(File file, int i) {
        this.f18096a = file;
        this.f18097b = i;
    }

    @Override // p131c.p161d.p282e.p289l.p290d.p294i.AbstractC5292a
    /* renamed from: a */
    public void mo24003a() {
        CommonUtils.m7665a(this.f18098c, "There was a problem closing the Crashlytics log file.");
        this.f18098c = null;
    }

    @Override // p131c.p161d.p282e.p289l.p290d.p294i.AbstractC5292a
    /* renamed from: a */
    public void mo24002a(long j, String str) {
        m23996f();
        m24000b(j, str);
    }

    @Override // p131c.p161d.p282e.p289l.p290d.p294i.AbstractC5292a
    /* renamed from: b */
    public String mo24001b() {
        byte[] c = mo23999c();
        return c != null ? new String(c, f18095d) : null;
    }

    /* renamed from: b */
    public final void m24000b(long j, String str) {
        int i;
        if (this.f18098c != null) {
            String str2 = str;
            if (str == null) {
                str2 = "null";
            }
            try {
                String str3 = str2;
                if (str2.length() > this.f18097b / 4) {
                    str3 = "..." + str2.substring(str2.length() - i);
                }
                this.f18098c.m24019a(String.format(Locale.US, "%d %s%n", Long.valueOf(j), str3.replaceAll("\r", " ").replaceAll("\n", " ")).getBytes(f18095d));
                while (!this.f18098c.m24016b() && this.f18098c.m24004f() > this.f18097b) {
                    this.f18098c.m24005e();
                }
            } catch (IOException e) {
                C5192b.m24319a().m24314b("There was a problem writing to the Crashlytics log.", e);
            }
        }
    }

    @Override // p131c.p161d.p282e.p289l.p290d.p294i.AbstractC5292a
    /* renamed from: c */
    public byte[] mo23999c() {
        C5304b e = m23997e();
        if (e == null) {
            return null;
        }
        int i = e.f18102b;
        byte[] bArr = new byte[i];
        System.arraycopy(e.f18101a, 0, bArr, 0, i);
        return bArr;
    }

    @Override // p131c.p161d.p282e.p289l.p290d.p294i.AbstractC5292a
    /* renamed from: d */
    public void mo23998d() {
        mo24003a();
        this.f18096a.delete();
    }

    /* renamed from: e */
    public final C5304b m23997e() {
        if (!this.f18096a.exists()) {
            return null;
        }
        m23996f();
        C5297c cVar = this.f18098c;
        if (cVar == null) {
            return null;
        }
        int[] iArr = {0};
        byte[] bArr = new byte[cVar.m24004f()];
        try {
            this.f18098c.m24025a(new C5303a(this, bArr, iArr));
        } catch (IOException e) {
            C5192b.m24319a().m24314b("A problem occurred while reading the Crashlytics log file.", e);
        }
        return new C5304b(this, bArr, iArr[0]);
    }

    /* renamed from: f */
    public final void m23996f() {
        if (this.f18098c == null) {
            try {
                this.f18098c = new C5297c(this.f18096a);
            } catch (IOException e) {
                C5192b a = C5192b.m24319a();
                a.m24314b("Could not open log file: " + this.f18096a, e);
            }
        }
    }
}
