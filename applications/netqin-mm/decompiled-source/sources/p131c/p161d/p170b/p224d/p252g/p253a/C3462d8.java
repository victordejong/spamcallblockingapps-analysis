package p131c.p161d.p170b.p224d.p252g.p253a;

import android.net.Uri;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzom;
import com.google.android.gms.internal.ads.zzon;
import com.google.android.gms.internal.ads.zzos;
import com.google.android.gms.internal.ads.zzou;
import com.google.android.gms.internal.ads.zzoz;
import com.google.android.gms.internal.ads.zzpa;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.HttpURLConnection;
import java.net.Socket;
import java.net.SocketException;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;
import javax.net.ssl.SSLSocketFactory;
/* renamed from: c.d.b.d.g.a.d8 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/d8.class */
public final class C3462d8 implements zzom {

    /* renamed from: q */
    public static final Pattern f12616q = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");

    /* renamed from: r */
    public static final AtomicReference<byte[]> f12617r = new AtomicReference<>();

    /* renamed from: b */
    public final int f12619b;

    /* renamed from: c */
    public final int f12620c;

    /* renamed from: d */
    public final String f12621d;

    /* renamed from: f */
    public final zzpa<? super C3462d8> f12623f;

    /* renamed from: g */
    public zzon f12624g;

    /* renamed from: h */
    public HttpURLConnection f12625h;

    /* renamed from: i */
    public InputStream f12626i;

    /* renamed from: j */
    public boolean f12627j;

    /* renamed from: k */
    public long f12628k;

    /* renamed from: l */
    public long f12629l;

    /* renamed from: m */
    public long f12630m;

    /* renamed from: n */
    public long f12631n;

    /* renamed from: o */
    public int f12632o;

    /* renamed from: a */
    public SSLSocketFactory f12618a = new C3536f8(this);

    /* renamed from: p */
    public Set<Socket> f12633p = new HashSet();

    /* renamed from: e */
    public final zzou f12622e = new zzou();

    public C3462d8(String str, zzpa<? super C3462d8> zzpaVar, int i, int i2, int i3) {
        zzoz.m11697a(str);
        this.f12621d = str;
        this.f12623f = zzpaVar;
        this.f12619b = i;
        this.f12620c = i2;
        this.f12632o = i3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x005f  */
    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r7v1, types: [long] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Unknown variable types count: 3 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long m27077a(java.net.HttpURLConnection r5) {
        /*
            Method dump skipped, instructions count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p253a.C3462d8.m27077a(java.net.HttpURLConnection):long");
    }

    /* JADX WARN: Code restructure failed: missing block: B:66:0x022c, code lost:
        if (r11 != 0) goto L_0x0235;
     */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0341 A[Catch: IOException -> 0x03d5, TRY_ENTER, TryCatch #1 {IOException -> 0x03d5, blocks: (B:3:0x000f, B:7:0x0046, B:9:0x0057, B:11:0x0065, B:13:0x008a, B:15:0x0092, B:20:0x00d0, B:23:0x0106, B:24:0x0145, B:26:0x0151, B:28:0x0160, B:30:0x016d, B:34:0x017e, B:36:0x0189, B:38:0x0196, B:39:0x01b7, B:41:0x01be, B:56:0x01fa, B:100:0x032d, B:102:0x0341, B:104:0x035b, B:106:0x0365, B:108:0x0375, B:109:0x0380, B:111:0x038c, B:112:0x0391, B:115:0x03a1, B:116:0x03ad, B:117:0x03ae, B:117:0x03ae, B:118:0x03b1, B:119:0x03d4), top: B:130:0x000f }] */
    /* JADX WARN: Removed duplicated region for block: B:133:0x03a1 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzom
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo11728a(com.google.android.gms.internal.ads.zzon r8) throws com.google.android.gms.internal.ads.zzos {
        /*
            Method dump skipped, instructions count: 1042
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p253a.C3462d8.mo11728a(com.google.android.gms.internal.ads.zzon):long");
    }

    /* renamed from: a */
    public final void m27081a() {
        HttpURLConnection httpURLConnection = this.f12625h;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e) {
                zzbbq.m15855b("Unexpected error while disconnecting", e);
            }
            this.f12625h = null;
        }
    }

    /* renamed from: a */
    public final void m27080a(int i) {
        this.f12632o = i;
        for (Socket socket : this.f12633p) {
            if (!socket.isClosed()) {
                try {
                    socket.setReceiveBufferSize(this.f12632o);
                } catch (SocketException e) {
                    zzbbq.m15853c("Failed to update receive buffer size.", e);
                }
            }
        }
    }

    /* renamed from: a */
    public final void m27076a(Socket socket) {
        this.f12633p.add(socket);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x005a, code lost:
        if (r7 > 2048) goto L_0x005d;
     */
    @Override // com.google.android.gms.internal.ads.zzom
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void close() throws com.google.android.gms.internal.ads.zzos {
        /*
            Method dump skipped, instructions count: 292
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p253a.C3462d8.close():void");
    }

    @Override // com.google.android.gms.internal.ads.zzom
    /* renamed from: o */
    public final Uri mo11724o() {
        HttpURLConnection httpURLConnection = this.f12625h;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    @Override // com.google.android.gms.internal.ads.zzom
    public final int read(byte[] bArr, int i, int i2) throws zzos {
        try {
            if (this.f12630m != this.f12628k) {
                byte[] andSet = f12617r.getAndSet(null);
                byte[] bArr2 = andSet;
                if (andSet == null) {
                    bArr2 = new byte[4096];
                }
                while (this.f12630m != this.f12628k) {
                    int read = this.f12626i.read(bArr2, 0, (int) Math.min(this.f12628k - this.f12630m, bArr2.length));
                    if (Thread.interrupted()) {
                        throw new InterruptedIOException();
                    } else if (read != -1) {
                        this.f12630m += read;
                        if (this.f12623f != null) {
                            this.f12623f.mo11692a((zzpa<? super C3462d8>) this, read);
                        }
                    } else {
                        throw new EOFException();
                    }
                }
                f12617r.set(bArr2);
            }
            if (i2 == 0) {
                return 0;
            }
            int i3 = i2;
            if (this.f12629l != -1) {
                long j = this.f12629l - this.f12631n;
                if (j == 0) {
                    return -1;
                }
                i3 = (int) Math.min(i2, j);
            }
            int read2 = this.f12626i.read(bArr, i, i3);
            if (read2 != -1) {
                this.f12631n += read2;
                if (this.f12623f != null) {
                    this.f12623f.mo11692a((zzpa<? super C3462d8>) this, read2);
                }
                return read2;
            } else if (this.f12629l == -1) {
                return -1;
            } else {
                throw new EOFException();
            }
        } catch (IOException e) {
            throw new zzos(e, this.f12624g, 2);
        }
    }
}
