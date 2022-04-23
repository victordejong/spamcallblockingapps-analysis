package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.google.android.gms.ads.internal.util.zzd;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.HttpURLConnection;
import java.net.Socket;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/abq.class */
final class abq implements ecg {

    /* renamed from: d  reason: collision with root package name */
    private static final Pattern f23063d = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");
    private static final AtomicReference<byte[]> e = new AtomicReference<>();

    /* renamed from: a  reason: collision with root package name */
    int f23064a;
    private final int g;
    private final int h;
    private final String i;
    private final ecp<? super abq> k;
    private ecf l;
    private HttpURLConnection m;
    private InputStream n;
    private boolean o;
    private long p;
    private long q;
    private long r;
    private long s;
    private SSLSocketFactory f = new abt(this);

    /* renamed from: b  reason: collision with root package name */
    Set<Socket> f23065b = new HashSet();
    private final ecj j = new ecj();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abq(String str, ecp<? super abq> ecpVar, int i, int i2, int i3) {
        this.i = ecr.a(str);
        this.k = ecpVar;
        this.g = i;
        this.h = i2;
        this.f23064a = i3;
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
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static long a(java.net.HttpURLConnection r5) {
        /*
            Method dump skipped, instructions count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.abq.a(java.net.HttpURLConnection):long");
    }

    private final void d() {
        HttpURLConnection httpURLConnection = this.m;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e2) {
                zzd.zzc("Unexpected error while disconnecting", e2);
            }
            this.m = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.ecb
    public final int a(byte[] bArr, int i, int i2) throws zzov {
        try {
            if (this.r != this.p) {
                byte[] andSet = e.getAndSet(null);
                byte[] bArr2 = andSet;
                if (andSet == null) {
                    bArr2 = new byte[4096];
                }
                while (true) {
                    long j = this.r;
                    long j2 = this.p;
                    if (j == j2) {
                        e.set(bArr2);
                        break;
                    }
                    int read = this.n.read(bArr2, 0, (int) Math.min(j2 - j, bArr2.length));
                    if (Thread.interrupted()) {
                        throw new InterruptedIOException();
                    } else if (read != -1) {
                        this.r += read;
                        ecp<? super abq> ecpVar = this.k;
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
                ecp<? super abq> ecpVar2 = this.k;
                if (ecpVar2 != null) {
                    ecpVar2.c(read2);
                }
                return read2;
            } else if (this.q == -1) {
                return -1;
            } else {
                throw new EOFException();
            }
        } catch (IOException e2) {
            throw new zzov(e2, this.l, 2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x033e A[Catch: IOException -> 0x03d2, TRY_ENTER, TryCatch #2 {IOException -> 0x03d2, blocks: (B:3:0x000f, B:7:0x0045, B:9:0x0056, B:11:0x0064, B:13:0x0089, B:15:0x0091, B:20:0x00cf, B:23:0x0105, B:24:0x0144, B:26:0x0150, B:28:0x015f, B:30:0x016c, B:34:0x017d, B:36:0x0188, B:38:0x0195, B:39:0x01b6, B:41:0x01bd, B:56:0x01f9, B:101:0x032a, B:103:0x033e, B:105:0x0358, B:107:0x0362, B:109:0x0372, B:110:0x037d, B:112:0x0389, B:113:0x038e, B:116:0x039e, B:117:0x03aa, B:118:0x03ab, B:118:0x03ab, B:119:0x03ae, B:120:0x03d1), top: B:132:0x000f }] */
    /* JADX WARN: Removed duplicated region for block: B:133:0x039e A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.ecb
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long a(com.google.android.gms.internal.ads.ecf r8) throws com.google.android.gms.internal.ads.zzov {
        /*
            Method dump skipped, instructions count: 1031
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.abq.a(com.google.android.gms.internal.ads.ecf):long");
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
            Method dump skipped, instructions count: 251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.abq.c():void");
    }
}
