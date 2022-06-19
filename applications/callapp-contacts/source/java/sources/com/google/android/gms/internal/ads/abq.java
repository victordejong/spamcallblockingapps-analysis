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

    /* renamed from: d */
    private static final Pattern f39817d = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");

    /* renamed from: e */
    private static final AtomicReference<byte[]> f39818e = new AtomicReference<>();

    /* renamed from: a */
    int f39819a;

    /* renamed from: g */
    private final int f39822g;

    /* renamed from: h */
    private final int f39823h;

    /* renamed from: i */
    private final String f39824i;

    /* renamed from: k */
    private final ecp<? super abq> f39826k;

    /* renamed from: l */
    private ecf f39827l;

    /* renamed from: m */
    private HttpURLConnection f39828m;

    /* renamed from: n */
    private InputStream f39829n;

    /* renamed from: o */
    private boolean f39830o;

    /* renamed from: p */
    private long f39831p;

    /* renamed from: q */
    private long f39832q;

    /* renamed from: r */
    private long f39833r;

    /* renamed from: s */
    private long f39834s;

    /* renamed from: f */
    private SSLSocketFactory f39821f = new C12167abt(this);

    /* renamed from: b */
    Set<Socket> f39820b = new HashSet();

    /* renamed from: j */
    private final ecj f39825j = new ecj();

    public abq(String str, ecp<? super abq> ecpVar, int i, int i2, int i3) {
        this.f39824i = ecr.m15250a(str);
        this.f39826k = ecpVar;
        this.f39822g = i;
        this.f39823h = i2;
        this.f39819a = i3;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x005f  */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    /* JADX WARN: Type inference failed for: r0v67, types: [long] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static long m18905a(java.net.HttpURLConnection r5) {
        /*
            Method dump skipped, instructions count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.abq.m18905a(java.net.HttpURLConnection):long");
    }

    /* renamed from: d */
    private final void m18904d() {
        HttpURLConnection httpURLConnection = this.f39828m;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e) {
                zzd.zzc("Unexpected error while disconnecting", e);
            }
            this.f39828m = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.ecb
    /* renamed from: a */
    public final int mo15278a(byte[] bArr, int i, int i2) throws zzov {
        try {
            if (this.f39833r != this.f39831p) {
                byte[] andSet = f39818e.getAndSet(null);
                byte[] bArr2 = andSet;
                if (andSet == null) {
                    bArr2 = new byte[4096];
                }
                while (true) {
                    long j = this.f39833r;
                    long j2 = this.f39831p;
                    if (j == j2) {
                        f39818e.set(bArr2);
                        break;
                    }
                    int read = this.f39829n.read(bArr2, 0, (int) Math.min(j2 - j, bArr2.length));
                    if (Thread.interrupted()) {
                        throw new InterruptedIOException();
                    }
                    if (read == -1) {
                        throw new EOFException();
                    }
                    this.f39833r += read;
                    ecp<? super abq> ecpVar = this.f39826k;
                    if (ecpVar != null) {
                        ecpVar.mo15257c(read);
                    }
                }
            }
            if (i2 == 0) {
                return 0;
            }
            long j3 = this.f39832q;
            int i3 = i2;
            if (j3 != -1) {
                long j4 = j3 - this.f39834s;
                if (j4 == 0) {
                    return -1;
                }
                i3 = (int) Math.min(i2, j4);
            }
            int read2 = this.f39829n.read(bArr, i, i3);
            if (read2 == -1) {
                if (this.f39832q != -1) {
                    throw new EOFException();
                }
                return -1;
            }
            this.f39834s += read2;
            ecp<? super abq> ecpVar2 = this.f39826k;
            if (ecpVar2 != null) {
                ecpVar2.mo15257c(read2);
            }
            return read2;
        } catch (IOException e) {
            throw new zzov(e, this.f39827l, 2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x033e A[Catch: IOException -> 0x03d2, TRY_ENTER, TryCatch #2 {IOException -> 0x03d2, blocks: (B:3:0x000f, B:7:0x0045, B:9:0x0056, B:11:0x0064, B:13:0x0089, B:15:0x0091, B:20:0x00cf, B:23:0x0105, B:24:0x0144, B:26:0x0150, B:28:0x015f, B:30:0x016c, B:34:0x017d, B:36:0x0188, B:38:0x0195, B:39:0x01b6, B:41:0x01bd, B:56:0x01f9, B:101:0x032a, B:103:0x033e, B:105:0x0358, B:107:0x0362, B:109:0x0372, B:110:0x037d, B:112:0x0389, B:113:0x038e, B:116:0x039e, B:117:0x03aa, B:118:0x03ab, B:118:0x03ab, B:119:0x03ae, B:120:0x03d1), top: B:132:0x000f }] */
    /* JADX WARN: Removed duplicated region for block: B:133:0x039e A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v145, types: [long] */
    /* JADX WARN: Type inference failed for: r0v152, types: [long] */
    @Override // com.google.android.gms.internal.ads.ecb
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo15281a(com.google.android.gms.internal.ads.ecf r8) throws com.google.android.gms.internal.ads.zzov {
        /*
            Method dump skipped, instructions count: 1031
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.abq.mo15281a(com.google.android.gms.internal.ads.ecf):long");
    }

    @Override // com.google.android.gms.internal.ads.ecb
    /* renamed from: a */
    public final Uri mo15282a() {
        HttpURLConnection httpURLConnection = this.f39828m;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    @Override // com.google.android.gms.internal.ads.ecg
    /* renamed from: b */
    public final Map<String, List<String>> mo15277b() {
        HttpURLConnection httpURLConnection = this.f39828m;
        if (httpURLConnection == null) {
            return null;
        }
        return httpURLConnection.getHeaderFields();
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0054, code lost:
        if (r7 > android.support.p008v4.media.session.PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH) goto L22;
     */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r0v54, types: [long] */
    @Override // com.google.android.gms.internal.ads.ecb
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo15276c() throws com.google.android.gms.internal.ads.zzov {
        /*
            Method dump skipped, instructions count: 251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.abq.mo15276c():void");
    }
}
