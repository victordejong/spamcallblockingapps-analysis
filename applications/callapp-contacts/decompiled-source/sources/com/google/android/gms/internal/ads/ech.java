package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.util.Log;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ech.class */
public final class ech implements ecg {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f27621a = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");

    /* renamed from: b  reason: collision with root package name */
    private static final AtomicReference<byte[]> f27622b = new AtomicReference<>();
    private final int e;
    private final int f;
    private final String g;
    private final ecp<? super ech> k;
    private ecf l;
    private HttpURLConnection m;
    private InputStream n;
    private boolean o;
    private long p;
    private long q;
    private long r;
    private long s;
    private final eda<String> h = null;
    private final ecj j = new ecj();

    /* renamed from: d  reason: collision with root package name */
    private final boolean f27623d = true;
    private final ecj i = null;

    public ech(String str, eda<String> edaVar, ecp<? super ech> ecpVar, int i, int i2, boolean z, ecj ecjVar) {
        this.g = ecr.a(str);
        this.k = ecpVar;
        this.e = i;
        this.f = i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0062  */
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
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static long a(java.net.HttpURLConnection r5) {
        /*
            Method dump skipped, instructions count: 315
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ech.a(java.net.HttpURLConnection):long");
    }

    private final HttpURLConnection a(URL url, byte[] bArr, long j, long j2, boolean z, boolean z2) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setConnectTimeout(this.e);
        httpURLConnection.setReadTimeout(this.f);
        for (Map.Entry<String, String> entry : this.j.a().entrySet()) {
            httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
        }
        if (!(j == 0 && j2 == -1)) {
            StringBuilder sb = new StringBuilder(27);
            sb.append("bytes=");
            sb.append(j);
            sb.append(VerificationLanguage.REGION_PREFIX);
            String sb2 = sb.toString();
            String str = sb2;
            if (j2 != -1) {
                String valueOf = String.valueOf(sb2);
                StringBuilder sb3 = new StringBuilder(String.valueOf(valueOf).length() + 20);
                sb3.append(valueOf);
                sb3.append((j + j2) - 1);
                str = sb3.toString();
            }
            httpURLConnection.setRequestProperty("Range", str);
        }
        httpURLConnection.setRequestProperty("User-Agent", this.g);
        if (!z) {
            httpURLConnection.setRequestProperty("Accept-Encoding", "identity");
        }
        httpURLConnection.setInstanceFollowRedirects(z2);
        httpURLConnection.setDoOutput(bArr != null);
        if (bArr != null) {
            httpURLConnection.setRequestMethod("POST");
            if (bArr.length != 0) {
                httpURLConnection.setFixedLengthStreamingMode(bArr.length);
                httpURLConnection.connect();
                OutputStream outputStream = httpURLConnection.getOutputStream();
                outputStream.write(bArr);
                outputStream.close();
                return httpURLConnection;
            }
        }
        httpURLConnection.connect();
        return httpURLConnection;
    }

    private final void d() {
        HttpURLConnection httpURLConnection = this.m;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e) {
                Log.e("DefaultHttpDataSource", "Unexpected error while disconnecting", e);
            }
            this.m = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.ecb
    public final int a(byte[] bArr, int i, int i2) throws zzov {
        try {
            if (this.r != this.p) {
                byte[] andSet = f27622b.getAndSet(null);
                byte[] bArr2 = andSet;
                if (andSet == null) {
                    bArr2 = new byte[4096];
                }
                while (true) {
                    long j = this.r;
                    long j2 = this.p;
                    if (j == j2) {
                        f27622b.set(bArr2);
                        break;
                    }
                    int read = this.n.read(bArr2, 0, (int) Math.min(j2 - j, bArr2.length));
                    if (Thread.interrupted()) {
                        throw new InterruptedIOException();
                    } else if (read != -1) {
                        this.r += read;
                        ecp<? super ech> ecpVar = this.k;
                        if (ecpVar != null) {
                            ecpVar.c(read);
                        }
                    } else {
                        throw new EOFException();
                    }
                }
            }
            if (i2 == 0) {
                return 0;
            }
            long j3 = this.q;
            int i3 = i2;
            if (j3 != -1) {
                long j4 = j3 - this.s;
                if (j4 == 0) {
                    return -1;
                }
                i3 = (int) Math.min(i2, j4);
            }
            int read2 = this.n.read(bArr, i, i3);
            if (read2 != -1) {
                this.s += read2;
                ecp<? super ech> ecpVar2 = this.k;
                if (ecpVar2 != null) {
                    ecpVar2.c(read2);
                }
                return read2;
            } else if (this.q == -1) {
                return -1;
            } else {
                throw new EOFException();
            }
        } catch (IOException e) {
            throw new zzov(e, this.l, 2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00b5, code lost:
        r14 = r0;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2, types: [long] */
    /* JADX WARN: Type inference failed for: r16v6 */
    /* JADX WARN: Type inference failed for: r16v8 */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // com.google.android.gms.internal.ads.ecb
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long a(com.google.android.gms.internal.ads.ecf r11) throws com.google.android.gms.internal.ads.zzov {
        /*
            Method dump skipped, instructions count: 767
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ech.a(com.google.android.gms.internal.ads.ecf):long");
    }

    @Override // com.google.android.gms.internal.ads.ecb
    public final Uri a() {
        HttpURLConnection httpURLConnection = this.m;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    @Override // com.google.android.gms.internal.ads.ecg
    public final Map<String, List<String>> b() {
        HttpURLConnection httpURLConnection = this.m;
        if (httpURLConnection == null) {
            return null;
        }
        return httpURLConnection.getHeaderFields();
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0054, code lost:
        if (r7 > android.support.v4.media.session.PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH) goto L_0x0057;
     */
    @Override // com.google.android.gms.internal.ads.ecb
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c() throws com.google.android.gms.internal.ads.zzov {
        /*
            Method dump skipped, instructions count: 241
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ech.c():void");
    }
}
