package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.util.Log;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.HttpURLConnection;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;
/* renamed from: com.google.android.gms.internal.ads.th */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/th.class */
public final class C6997th implements AbstractC7108wh {

    /* renamed from: b */
    private static final Pattern f29970b = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");

    /* renamed from: c */
    private static final AtomicReference<byte[]> f29971c = new AtomicReference<>();

    /* renamed from: d */
    private final int f29972d;

    /* renamed from: e */
    private final int f29973e;

    /* renamed from: f */
    private final String f29974f;

    /* renamed from: g */
    private final C7071vh f29975g = new C7071vh();

    /* renamed from: h */
    private final AbstractC6330bi<? super C6997th> f29976h;

    /* renamed from: i */
    private C6923rh f29977i;

    /* renamed from: j */
    private HttpURLConnection f29978j;

    /* renamed from: k */
    private InputStream f29979k;

    /* renamed from: l */
    private boolean f29980l;

    /* renamed from: m */
    private long f29981m;

    /* renamed from: n */
    private long f29982n;

    /* renamed from: o */
    private long f29983o;

    /* renamed from: p */
    private long f29984p;

    public C6997th(String str, AbstractC6739mi<String> abstractC6739mi, AbstractC6330bi<? super C6997th> abstractC6330bi, int i, int i2, boolean z, C7071vh c7071vh) {
        C6367ci.m16037f(str);
        this.f29974f = str;
        this.f29976h = abstractC6330bi;
        this.f29972d = i;
        this.f29973e = i2;
    }

    /* renamed from: f */
    private final void m10687f() {
        HttpURLConnection httpURLConnection = this.f29978j;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e) {
                Log.e("DefaultHttpDataSource", "Unexpected error while disconnecting", e);
            }
            this.f29978j = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7108wh
    /* renamed from: a */
    public final Map<String, List<String>> mo9584a() {
        HttpURLConnection httpURLConnection = this.f29978j;
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
            if (this.f29983o != this.f29981m) {
                byte[] andSet = f29971c.getAndSet(null);
                byte[] bArr2 = andSet;
                if (andSet == null) {
                    bArr2 = new byte[4096];
                }
                while (true) {
                    long j = this.f29983o;
                    long j2 = this.f29981m;
                    if (j == j2) {
                        f29971c.set(bArr2);
                        break;
                    }
                    int read = this.f29979k.read(bArr2, 0, (int) Math.min(j2 - j, bArr2.length));
                    if (Thread.interrupted()) {
                        throw new InterruptedIOException();
                    }
                    if (read == -1) {
                        throw new EOFException();
                    }
                    this.f29983o += read;
                    AbstractC6330bi<? super C6997th> abstractC6330bi = this.f29976h;
                    if (abstractC6330bi != null) {
                        abstractC6330bi.mo11386w(this, read);
                    }
                }
            }
            if (i2 == 0) {
                i3 = 0;
            } else {
                long j3 = this.f29982n;
                int i4 = i2;
                if (j3 != -1) {
                    long j4 = j3 - this.f29984p;
                    if (j4 != 0) {
                        i4 = (int) Math.min(i2, j4);
                    }
                    i3 = -1;
                }
                int read2 = this.f29979k.read(bArr, i, i4);
                if (read2 != -1) {
                    this.f29984p += read2;
                    AbstractC6330bi<? super C6997th> abstractC6330bi2 = this.f29976h;
                    i3 = read2;
                    if (abstractC6330bi2 != null) {
                        abstractC6330bi2.mo11386w(this, read2);
                        i3 = read2;
                    }
                } else if (this.f29982n != -1) {
                    throw new EOFException();
                } else {
                    i3 = -1;
                }
            }
            return i3;
        } catch (IOException e) {
            throw new zzauf(e, this.f29977i, 2);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6886qh
    /* renamed from: c */
    public final Uri mo10690c() {
        HttpURLConnection httpURLConnection = this.f29978j;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x01bc, code lost:
        if (r12 != 0) goto L47;
     */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0253  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x033f  */
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
            Method dump skipped, instructions count: 1231
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C6997th.mo10689d(com.google.android.gms.internal.ads.rh):long");
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0056, code lost:
        if (r7 <= 2048) goto L28;
     */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v50, types: [long] */
    @Override // com.google.android.gms.internal.ads.AbstractC6886qh
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo10688e() {
        /*
            Method dump skipped, instructions count: 238
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C6997th.mo10688e():void");
    }
}
