package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.HttpURLConnection;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzawa.class */
public final class zzawa implements zzawf {
    private static final Pattern zzb = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");
    private static final AtomicReference<byte[]> zzc = new AtomicReference<>();
    private final int zzd;
    private final int zze;
    private final String zzf;
    private final zzawe zzg = new zzawe();
    private final zzawl<? super zzawa> zzh;
    private zzavy zzi;
    private HttpURLConnection zzj;
    private InputStream zzk;
    private boolean zzl;
    private long zzm;
    private long zzn;
    private long zzo;
    private long zzp;

    public zzawa(String str, zzaww<String> zzawwVar, zzawl<? super zzawa> zzawlVar, int i, int i2, boolean z, zzawe zzaweVar) {
        zzawm.zzb(str);
        this.zzf = str;
        this.zzh = zzawlVar;
        this.zzd = i;
        this.zze = i2;
    }

    private final void zzf() {
        HttpURLConnection httpURLConnection = this.zzj;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e) {
            }
            this.zzj = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavw
    public final int zza(byte[] bArr, int i, int i2) throws zzawc {
        int i3;
        try {
            if (this.zzo != this.zzm) {
                byte[] andSet = zzc.getAndSet(null);
                byte[] bArr2 = andSet;
                if (andSet == null) {
                    bArr2 = new byte[4096];
                }
                while (true) {
                    long j = this.zzo;
                    long j2 = this.zzm;
                    if (j == j2) {
                        zzc.set(bArr2);
                        break;
                    }
                    int read = this.zzk.read(bArr2, 0, (int) Math.min(j2 - j, bArr2.length));
                    if (Thread.interrupted()) {
                        throw new InterruptedIOException();
                    }
                    if (read == -1) {
                        throw new EOFException();
                    }
                    this.zzo += read;
                    zzawl<? super zzawa> zzawlVar = this.zzh;
                    if (zzawlVar != null) {
                        zzawlVar.zzj(this, read);
                    }
                }
            }
            if (i2 == 0) {
                i3 = 0;
            } else {
                long j3 = this.zzn;
                int i4 = i2;
                if (j3 != -1) {
                    long j4 = j3 - this.zzp;
                    if (j4 != 0) {
                        i4 = (int) Math.min(i2, j4);
                    }
                    i3 = -1;
                }
                int read2 = this.zzk.read(bArr, i, i4);
                if (read2 != -1) {
                    this.zzp += read2;
                    zzawl<? super zzawa> zzawlVar2 = this.zzh;
                    i3 = read2;
                    if (zzawlVar2 != null) {
                        zzawlVar2.zzj(this, read2);
                        i3 = read2;
                    }
                } else if (this.zzn != -1) {
                    throw new EOFException();
                } else {
                    i3 = -1;
                }
            }
            return i3;
        } catch (IOException e) {
            throw new zzawc(e, this.zzi, 2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x01b5, code lost:
        if (r10 != 0) goto L47;
     */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0224  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x02f1  */
    /* JADX WARN: Type inference failed for: r0v140, types: [long] */
    /* JADX WARN: Type inference failed for: r0v151, types: [long] */
    /* JADX WARN: Type inference failed for: r0v163, types: [long] */
    /* JADX WARN: Type inference failed for: r0v190, types: [long] */
    /* JADX WARN: Type inference failed for: r0v196, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzavw
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long zzb(com.google.android.gms.internal.ads.zzavy r8) throws com.google.android.gms.internal.ads.zzawc {
        /*
            Method dump skipped, instructions count: 1156
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzawa.zzb(com.google.android.gms.internal.ads.zzavy):long");
    }

    @Override // com.google.android.gms.internal.ads.zzavw
    public final Uri zzc() {
        HttpURLConnection httpURLConnection = this.zzj;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0056, code lost:
        if (r7 <= 2048) goto L28;
     */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v50, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzavw
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzd() throws com.google.android.gms.internal.ads.zzawc {
        /*
            Method dump skipped, instructions count: 239
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzawa.zzd():void");
    }

    @Override // com.google.android.gms.internal.ads.zzawf
    public final Map<String, List<String>> zze() {
        HttpURLConnection httpURLConnection = this.zzj;
        if (httpURLConnection == null) {
            return null;
        }
        return httpURLConnection.getHeaderFields();
    }
}
