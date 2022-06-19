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
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/cl0.class */
public final class cl0 implements AbstractC7108wh {

    /* renamed from: b */
    private static final Pattern f21282b = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");

    /* renamed from: c */
    private static final AtomicReference<byte[]> f21283c = new AtomicReference<>();

    /* renamed from: e */
    private final int f21285e;

    /* renamed from: f */
    private final int f21286f;

    /* renamed from: g */
    private final String f21287g;

    /* renamed from: i */
    private final AbstractC6330bi<? super cl0> f21289i;

    /* renamed from: j */
    private C6923rh f21290j;

    /* renamed from: k */
    private HttpURLConnection f21291k;

    /* renamed from: l */
    private InputStream f21292l;

    /* renamed from: m */
    private boolean f21293m;

    /* renamed from: n */
    private long f21294n;

    /* renamed from: o */
    private long f21295o;

    /* renamed from: p */
    private long f21296p;

    /* renamed from: q */
    private long f21297q;

    /* renamed from: r */
    private int f21298r;

    /* renamed from: d */
    private final SSLSocketFactory f21284d = new bl0(this);

    /* renamed from: s */
    private final Set<Socket> f21299s = new HashSet();

    /* renamed from: h */
    private final C7071vh f21288h = new C7071vh();

    public cl0(String str, AbstractC6330bi<? super cl0> abstractC6330bi, int i, int i2, int i3) {
        C6367ci.m16037f(str);
        this.f21287g = str;
        this.f21289i = abstractC6330bi;
        this.f21285e = i;
        this.f21286f = i2;
        this.f21298r = i3;
    }

    /* renamed from: i */
    private final void m16026i() {
        HttpURLConnection httpURLConnection = this.f21291k;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e) {
                ei0.m15466d("Unexpected error while disconnecting", e);
            }
            this.f21291k = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7108wh
    /* renamed from: a */
    public final Map<String, List<String>> mo9584a() {
        HttpURLConnection httpURLConnection = this.f21291k;
        if (httpURLConnection == null) {
            return null;
        }
        return httpURLConnection.getHeaderFields();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6886qh
    /* renamed from: b */
    public final int mo10691b(byte[] bArr, int i, int i2) {
        int i3;
        try {
            if (this.f21296p != this.f21294n) {
                byte[] andSet = f21283c.getAndSet(null);
                byte[] bArr2 = andSet;
                if (andSet == null) {
                    bArr2 = new byte[4096];
                }
                while (true) {
                    long j = this.f21296p;
                    long j2 = this.f21294n;
                    if (j == j2) {
                        f21283c.set(bArr2);
                        break;
                    }
                    int read = this.f21292l.read(bArr2, 0, (int) Math.min(j2 - j, bArr2.length));
                    if (Thread.interrupted()) {
                        throw new InterruptedIOException();
                    }
                    if (read == -1) {
                        throw new EOFException();
                    }
                    this.f21296p += read;
                    AbstractC6330bi<? super cl0> abstractC6330bi = this.f21289i;
                    if (abstractC6330bi != null) {
                        ((rl0) abstractC6330bi).m11402d0(this, read);
                    }
                }
            }
            if (i2 == 0) {
                i3 = 0;
            } else {
                long j3 = this.f21295o;
                int i4 = i2;
                if (j3 != -1) {
                    long j4 = j3 - this.f21297q;
                    if (j4 != 0) {
                        i4 = (int) Math.min(i2, j4);
                    }
                    i3 = -1;
                }
                int read2 = this.f21292l.read(bArr, i, i4);
                if (read2 != -1) {
                    this.f21297q += read2;
                    AbstractC6330bi<? super cl0> abstractC6330bi2 = this.f21289i;
                    i3 = read2;
                    if (abstractC6330bi2 != null) {
                        ((rl0) abstractC6330bi2).m11402d0(this, read2);
                        i3 = read2;
                    }
                } else if (this.f21295o != -1) {
                    throw new EOFException();
                } else {
                    i3 = -1;
                }
            }
            return i3;
        } catch (IOException e) {
            throw new zzauf(e, this.f21290j, 2);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6886qh
    /* renamed from: c */
    public final Uri mo10690c() {
        HttpURLConnection httpURLConnection = this.f21291k;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x01cc, code lost:
        if (r10 != 0) goto L50;
     */
    /* JADX WARN: Removed duplicated region for block: B:61:0x025d  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0344  */
    /* JADX WARN: Type inference failed for: r0v148, types: [long] */
    /* JADX WARN: Type inference failed for: r0v159, types: [long] */
    /* JADX WARN: Type inference failed for: r0v179, types: [long] */
    /* JADX WARN: Type inference failed for: r0v206, types: [long] */
    /* JADX WARN: Type inference failed for: r0v212, types: [long] */
    @Override // com.google.android.gms.internal.ads.AbstractC6886qh
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo10689d(com.google.android.gms.internal.ads.C6923rh r8) {
        /*
            Method dump skipped, instructions count: 1238
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.cl0.mo10689d(com.google.android.gms.internal.ads.rh):long");
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0056, code lost:
        if (r7 <= 2048) goto L28;
     */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r0v54, types: [long] */
    @Override // com.google.android.gms.internal.ads.AbstractC6886qh
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo10688e() {
        /*
            Method dump skipped, instructions count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.cl0.mo10688e():void");
    }

    /* renamed from: g */
    public final void m16028g(int i) {
        this.f21298r = i;
        for (Socket socket : this.f21299s) {
            if (!socket.isClosed()) {
                try {
                    socket.setReceiveBufferSize(this.f21298r);
                } catch (SocketException e) {
                    ei0.m15463g("Failed to update receive buffer size.", e);
                }
            }
        }
    }
}
