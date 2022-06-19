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

    /* renamed from: a */
    private static final Pattern f48670a = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");

    /* renamed from: b */
    private static final AtomicReference<byte[]> f48671b = new AtomicReference<>();

    /* renamed from: e */
    private final int f48673e;

    /* renamed from: f */
    private final int f48674f;

    /* renamed from: g */
    private final String f48675g;

    /* renamed from: k */
    private final ecp<? super ech> f48679k;

    /* renamed from: l */
    private ecf f48680l;

    /* renamed from: m */
    private HttpURLConnection f48681m;

    /* renamed from: n */
    private InputStream f48682n;

    /* renamed from: o */
    private boolean f48683o;

    /* renamed from: p */
    private long f48684p;

    /* renamed from: q */
    private long f48685q;

    /* renamed from: r */
    private long f48686r;

    /* renamed from: s */
    private long f48687s;

    /* renamed from: h */
    private final eda<String> f48676h = null;

    /* renamed from: j */
    private final ecj f48678j = new ecj();

    /* renamed from: d */
    private final boolean f48672d = true;

    /* renamed from: i */
    private final ecj f48677i = null;

    public ech(String str, eda<String> edaVar, ecp<? super ech> ecpVar, int i, int i2, boolean z, ecj ecjVar) {
        this.f48675g = ecr.m15250a(str);
        this.f48679k = ecpVar;
        this.f48673e = i;
        this.f48674f = i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0062  */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    /* JADX WARN: Type inference failed for: r0v67, types: [long] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static long m15280a(java.net.HttpURLConnection r5) {
        /*
            Method dump skipped, instructions count: 315
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ech.m15280a(java.net.HttpURLConnection):long");
    }

    /* renamed from: a */
    private final HttpURLConnection m15279a(URL url, byte[] bArr, long j, long j2, boolean z, boolean z2) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setConnectTimeout(this.f48673e);
        httpURLConnection.setReadTimeout(this.f48674f);
        for (Map.Entry<String, String> entry : this.f48678j.m15274a().entrySet()) {
            httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
        }
        if (j != 0 || j2 != -1) {
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
        httpURLConnection.setRequestProperty("User-Agent", this.f48675g);
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

    /* renamed from: d */
    private final void m15275d() {
        HttpURLConnection httpURLConnection = this.f48681m;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e) {
                Log.e("DefaultHttpDataSource", "Unexpected error while disconnecting", e);
            }
            this.f48681m = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.ecb
    /* renamed from: a */
    public final int mo15278a(byte[] bArr, int i, int i2) throws zzov {
        try {
            if (this.f48686r != this.f48684p) {
                byte[] andSet = f48671b.getAndSet(null);
                byte[] bArr2 = andSet;
                if (andSet == null) {
                    bArr2 = new byte[4096];
                }
                while (true) {
                    long j = this.f48686r;
                    long j2 = this.f48684p;
                    if (j == j2) {
                        f48671b.set(bArr2);
                        break;
                    }
                    int read = this.f48682n.read(bArr2, 0, (int) Math.min(j2 - j, bArr2.length));
                    if (Thread.interrupted()) {
                        throw new InterruptedIOException();
                    }
                    if (read == -1) {
                        throw new EOFException();
                    }
                    this.f48686r += read;
                    ecp<? super ech> ecpVar = this.f48679k;
                    if (ecpVar != null) {
                        ecpVar.mo15257c(read);
                    }
                }
            }
            if (i2 == 0) {
                return 0;
            }
            long j3 = this.f48685q;
            int i3 = i2;
            if (j3 != -1) {
                long j4 = j3 - this.f48687s;
                if (j4 == 0) {
                    return -1;
                }
                i3 = (int) Math.min(i2, j4);
            }
            int read2 = this.f48682n.read(bArr, i, i3);
            if (read2 == -1) {
                if (this.f48685q != -1) {
                    throw new EOFException();
                }
                return -1;
            }
            this.f48687s += read2;
            ecp<? super ech> ecpVar2 = this.f48679k;
            if (ecpVar2 != null) {
                ecpVar2.mo15257c(read2);
            }
            return read2;
        } catch (IOException e) {
            throw new zzov(e, this.f48680l, 2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00b5, code lost:
        r14 = r0;
     */
    /* JADX WARN: Type inference failed for: r0v82, types: [long] */
    /* JADX WARN: Type inference failed for: r0v89, types: [long] */
    @Override // com.google.android.gms.internal.ads.ecb
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo15281a(com.google.android.gms.internal.ads.ecf r11) throws com.google.android.gms.internal.ads.zzov {
        /*
            Method dump skipped, instructions count: 767
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ech.mo15281a(com.google.android.gms.internal.ads.ecf):long");
    }

    @Override // com.google.android.gms.internal.ads.ecb
    /* renamed from: a */
    public final Uri mo15282a() {
        HttpURLConnection httpURLConnection = this.f48681m;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    @Override // com.google.android.gms.internal.ads.ecg
    /* renamed from: b */
    public final Map<String, List<String>> mo15277b() {
        HttpURLConnection httpURLConnection = this.f48681m;
        if (httpURLConnection == null) {
            return null;
        }
        return httpURLConnection.getHeaderFields();
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0054, code lost:
        if (r7 > android.support.p008v4.media.session.PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH) goto L22;
     */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v52, types: [long] */
    @Override // com.google.android.gms.internal.ads.ecb
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo15276c() throws com.google.android.gms.internal.ads.zzov {
        /*
            Method dump skipped, instructions count: 241
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ech.mo15276c():void");
    }
}
