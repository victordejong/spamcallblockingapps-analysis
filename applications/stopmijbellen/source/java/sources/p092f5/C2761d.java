package p092f5;

import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Locale;
import java.util.Objects;
/* renamed from: f5.d */
/* loaded from: classes-dex2jar.jar:f5/d.class */
public class C2761d implements AbstractC2752a {

    /* renamed from: d */
    public static final Charset f9454d = Charset.forName("UTF-8");

    /* renamed from: a */
    public final File f9455a;

    /* renamed from: b */
    public final int f9456b;

    /* renamed from: c */
    public C2757c f9457c;

    /* renamed from: f5.d$a */
    /* loaded from: classes-dex2jar.jar:f5/d$a.class */
    public static class C2762a {

        /* renamed from: a */
        public final byte[] f9458a;

        /* renamed from: b */
        public final int f9459b;

        public C2762a(byte[] bArr, int i) {
            this.f9458a = bArr;
            this.f9459b = i;
        }
    }

    public C2761d(File file, int i) {
        this.f9455a = file;
        this.f9456b = i;
    }

    @Override // p092f5.AbstractC2752a
    /* renamed from: a */
    public void mo3152a() {
        C2757c c2757c = this.f9457c;
        if (c2757c != null) {
            try {
                c2757c.close();
            } catch (IOException e) {
            }
        }
        this.f9457c = null;
    }

    @Override // p092f5.AbstractC2752a
    /* renamed from: b */
    public String mo3151b() {
        byte[] m3149d = m3149d();
        return m3149d != null ? new String(m3149d, f9454d) : null;
    }

    @Override // p092f5.AbstractC2752a
    /* renamed from: c */
    public void mo3150c(long j, String str) {
        int i;
        if (this.f9457c == null) {
            try {
                this.f9457c = new C2757c(this.f9455a);
            } catch (IOException e) {
                Objects.toString(this.f9455a);
            }
        }
        if (this.f9457c == null) {
            return;
        }
        String str2 = str;
        if (str == null) {
            str2 = "null";
        }
        try {
            String str3 = str2;
            if (str2.length() > this.f9456b / 4) {
                str3 = "..." + str2.substring(str2.length() - i);
            }
            this.f9457c.m3158k(String.format(Locale.US, "%d %s%n", Long.valueOf(j), str3.replaceAll("\r", " ").replaceAll("\n", " ")).getBytes(f9454d));
            while (!this.f9457c.m3155p() && this.f9457c.m3163J() > this.f9456b) {
                this.f9457c.m3166A();
            }
        } catch (IOException e2) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00e0 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00e2  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00fb -> B:28:0x00d0). Please submit an issue!!! */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public byte[] m3149d() {
        /*
            Method dump skipped, instructions count: 255
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p092f5.C2761d.m3149d():byte[]");
    }
}
