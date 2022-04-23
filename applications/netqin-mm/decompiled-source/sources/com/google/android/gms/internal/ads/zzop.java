package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.util.Log;
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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzop.class */
public final class zzop implements zzom {

    /* renamed from: o */
    public static final Pattern f28730o = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");

    /* renamed from: p */
    public static final AtomicReference<byte[]> f28731p = new AtomicReference<>();

    /* renamed from: b */
    public final int f28733b;

    /* renamed from: c */
    public final int f28734c;

    /* renamed from: d */
    public final String f28735d;

    /* renamed from: f */
    public final zzpa<? super zzop> f28737f;

    /* renamed from: g */
    public zzon f28738g;

    /* renamed from: h */
    public HttpURLConnection f28739h;

    /* renamed from: i */
    public InputStream f28740i;

    /* renamed from: j */
    public boolean f28741j;

    /* renamed from: k */
    public long f28742k;

    /* renamed from: l */
    public long f28743l;

    /* renamed from: m */
    public long f28744m;

    /* renamed from: n */
    public long f28745n;

    /* renamed from: e */
    public final zzou f28736e = new zzou();

    /* renamed from: a */
    public final boolean f28732a = true;

    public zzop(String str, zzpm<String> zzpmVar, zzpa<? super zzop> zzpaVar, int i, int i2, boolean z, zzou zzouVar) {
        zzoz.m11697a(str);
        this.f28735d = str;
        this.f28737f = zzpaVar;
        this.f28733b = i;
        this.f28734c = i2;
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
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long m11727a(java.net.HttpURLConnection r5) {
        /*
            Method dump skipped, instructions count: 315
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzop.m11727a(java.net.HttpURLConnection):long");
    }

    /* JADX WARN: Type inference failed for: r0v86, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // com.google.android.gms.internal.ads.zzom
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo11728a(com.google.android.gms.internal.ads.zzon r11) throws com.google.android.gms.internal.ads.zzos {
        /*
            Method dump skipped, instructions count: 777
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzop.mo11728a(com.google.android.gms.internal.ads.zzon):long");
    }

    /* renamed from: a */
    public final HttpURLConnection m11726a(URL url, byte[] bArr, long j, long j2, boolean z, boolean z2) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setConnectTimeout(this.f28733b);
        httpURLConnection.setReadTimeout(this.f28734c);
        for (Map.Entry<String, String> entry : this.f28736e.m11706a().entrySet()) {
            httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
        }
        if (!(j == 0 && j2 == -1)) {
            StringBuilder sb = new StringBuilder(27);
            sb.append("bytes=");
            sb.append(j);
            sb.append("-");
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
        httpURLConnection.setRequestProperty("User-Agent", this.f28735d);
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

    /* renamed from: a */
    public final Map<String, List<String>> m11729a() {
        HttpURLConnection httpURLConnection = this.f28739h;
        if (httpURLConnection == null) {
            return null;
        }
        return httpURLConnection.getHeaderFields();
    }

    /* renamed from: b */
    public final void m11725b() {
        HttpURLConnection httpURLConnection = this.f28739h;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e) {
                Log.e("DefaultHttpDataSource", "Unexpected error while disconnecting", e);
            }
            this.f28739h = null;
        }
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
            Method dump skipped, instructions count: 274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzop.close():void");
    }

    @Override // com.google.android.gms.internal.ads.zzom
    /* renamed from: o */
    public final Uri mo11724o() {
        HttpURLConnection httpURLConnection = this.f28739h;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    @Override // com.google.android.gms.internal.ads.zzom
    public final int read(byte[] bArr, int i, int i2) throws zzos {
        try {
            if (this.f28744m != this.f28742k) {
                byte[] andSet = f28731p.getAndSet(null);
                byte[] bArr2 = andSet;
                if (andSet == null) {
                    bArr2 = new byte[4096];
                }
                while (this.f28744m != this.f28742k) {
                    int read = this.f28740i.read(bArr2, 0, (int) Math.min(this.f28742k - this.f28744m, bArr2.length));
                    if (Thread.interrupted()) {
                        throw new InterruptedIOException();
                    } else if (read != -1) {
                        this.f28744m += read;
                        if (this.f28737f != null) {
                            this.f28737f.mo11692a((zzpa<? super zzop>) this, read);
                        }
                    } else {
                        throw new EOFException();
                    }
                }
                f28731p.set(bArr2);
            }
            if (i2 == 0) {
                return 0;
            }
            int i3 = i2;
            if (this.f28743l != -1) {
                long j = this.f28743l - this.f28745n;
                if (j == 0) {
                    return -1;
                }
                i3 = (int) Math.min(i2, j);
            }
            int read2 = this.f28740i.read(bArr, i, i3);
            if (read2 != -1) {
                this.f28745n += read2;
                if (this.f28737f != null) {
                    this.f28737f.mo11692a((zzpa<? super zzop>) this, read2);
                }
                return read2;
            } else if (this.f28743l == -1) {
                return -1;
            } else {
                throw new EOFException();
            }
        } catch (IOException e) {
            throw new zzos(e, this.f28738g, 2);
        }
    }
}
