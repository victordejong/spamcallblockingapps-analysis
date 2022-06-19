package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.HttpURLConnection;
import java.net.Socket;
import java.net.SocketException;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/vm0.class */
final class vm0 extends AbstractC7169y4 implements AbstractC6740mj {

    /* renamed from: f */
    private static final Pattern f31241f = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");

    /* renamed from: g */
    private static final AtomicReference<byte[]> f31242g = new AtomicReference<>();

    /* renamed from: i */
    private final int f31244i;

    /* renamed from: j */
    private final int f31245j;

    /* renamed from: k */
    private final String f31246k;

    /* renamed from: m */
    private C6472fb f31248m;

    /* renamed from: n */
    private HttpURLConnection f31249n;

    /* renamed from: o */
    private InputStream f31250o;

    /* renamed from: p */
    private boolean f31251p;

    /* renamed from: q */
    private int f31252q;

    /* renamed from: r */
    private long f31253r;

    /* renamed from: s */
    private long f31254s;

    /* renamed from: t */
    private long f31255t;

    /* renamed from: u */
    private long f31256u;

    /* renamed from: v */
    private int f31257v;

    /* renamed from: h */
    private final SSLSocketFactory f31243h = new um0(this);

    /* renamed from: w */
    private final Set<Socket> f31258w = new HashSet();

    /* renamed from: l */
    private final C6776ni f31247l = new C6776ni();

    public vm0(String str, AbstractC6816ol abstractC6816ol, int i, int i2, int i3) {
        super(true);
        C7173y8.m8893f(str);
        this.f31246k = str;
        this.f31244i = i;
        this.f31245j = i2;
        this.f31257v = i3;
        if (abstractC6816ol != null) {
            mo8765f(abstractC6816ol);
        }
    }

    /* renamed from: w */
    private final void m9932w() {
        HttpURLConnection httpURLConnection = this.f31249n;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e) {
                ei0.m15466d("Unexpected error while disconnecting", e);
            }
            this.f31249n = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7207z5
    /* renamed from: c */
    public final int mo8335c(byte[] bArr, int i, int i2) {
        int i3;
        try {
            if (this.f31255t != this.f31253r) {
                byte[] andSet = f31242g.getAndSet(null);
                byte[] bArr2 = andSet;
                if (andSet == null) {
                    bArr2 = new byte[4096];
                }
                while (true) {
                    long j = this.f31255t;
                    long j2 = this.f31253r;
                    if (j == j2) {
                        f31242g.set(bArr2);
                        break;
                    }
                    int read = this.f31250o.read(bArr2, 0, (int) Math.min(j2 - j, bArr2.length));
                    if (Thread.interrupted()) {
                        throw new InterruptedIOException();
                    }
                    if (read == -1) {
                        throw new EOFException();
                    }
                    this.f31255t += read;
                    m8961r(read);
                }
            }
            if (i2 == 0) {
                i3 = 0;
            } else {
                long j3 = this.f31254s;
                int i4 = i2;
                if (j3 != -1) {
                    long j4 = j3 - this.f31256u;
                    if (j4 != 0) {
                        i4 = (int) Math.min(i2, j4);
                    }
                    i3 = -1;
                }
                i3 = this.f31250o.read(bArr, i, i4);
                if (i3 != -1) {
                    this.f31256u += i3;
                    m8961r(i3);
                } else if (this.f31254s != -1) {
                    throw new EOFException();
                } else {
                    i3 = -1;
                }
            }
            return i3;
        } catch (IOException e) {
            throw new zzat(e, this.f31248m, 2000, 2);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7169y4, com.google.android.gms.internal.ads.AbstractC7098w7
    /* renamed from: d */
    public final Map<String, List<String>> mo8435d() {
        HttpURLConnection httpURLConnection = this.f31249n;
        if (httpURLConnection == null) {
            return null;
        }
        return httpURLConnection.getHeaderFields();
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x01db, code lost:
        if (r14 != 0) goto L55;
     */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0279  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0360  */
    /* JADX WARN: Type inference failed for: r0v151, types: [long] */
    /* JADX WARN: Type inference failed for: r0v162, types: [long] */
    /* JADX WARN: Type inference failed for: r0v182, types: [long] */
    /* JADX WARN: Type inference failed for: r0v209, types: [long] */
    /* JADX WARN: Type inference failed for: r0v215, types: [long] */
    @Override // com.google.android.gms.internal.ads.AbstractC7098w7
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo8334e(com.google.android.gms.internal.ads.C6472fb r10) {
        /*
            Method dump skipped, instructions count: 1280
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.vm0.mo8334e(com.google.android.gms.internal.ads.fb):long");
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0056, code lost:
        if (r8 <= 2048) goto L28;
     */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v56, types: [long] */
    @Override // com.google.android.gms.internal.ads.AbstractC7098w7
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo8333g() {
        /*
            Method dump skipped, instructions count: 267
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.vm0.mo8333g():void");
    }

    /* renamed from: u */
    public final void m9934u(int i) {
        this.f31257v = i;
        for (Socket socket : this.f31258w) {
            if (!socket.isClosed()) {
                try {
                    socket.setReceiveBufferSize(this.f31257v);
                } catch (SocketException e) {
                    ei0.m15463g("Failed to update receive buffer size.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7098w7
    public final Uri zzi() {
        HttpURLConnection httpURLConnection = this.f31249n;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }
}
