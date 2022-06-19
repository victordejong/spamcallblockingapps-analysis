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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcma.class */
public final class zzcma implements zzawf {
    private static final Pattern zzb = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");
    private static final AtomicReference<byte[]> zzc = new AtomicReference<>();
    private final int zze;
    private final int zzf;
    private final String zzg;
    private final zzawl<? super zzcma> zzi;
    private zzavy zzj;
    private HttpURLConnection zzk;
    private InputStream zzl;
    private boolean zzm;
    private long zzn;
    private long zzo;
    private long zzp;
    private long zzq;
    private int zzr;
    private final SSLSocketFactory zzd = new zzclz(this);
    private final Set<Socket> zzs = new HashSet();
    private final zzawe zzh = new zzawe();

    public zzcma(String str, zzawl<? super zzcma> zzawlVar, int i, int i2, int i3) {
        zzawm.zzb(str);
        this.zzg = str;
        this.zzi = zzawlVar;
        this.zze = i;
        this.zzf = i2;
        this.zzr = i3;
    }

    private final void zzi() {
        HttpURLConnection httpURLConnection = this.zzk;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e) {
                zzciz.zzh("Unexpected error while disconnecting", e);
            }
            this.zzk = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavw
    public final int zza(byte[] bArr, int i, int i2) throws zzawc {
        int i3;
        try {
            if (this.zzp != this.zzn) {
                byte[] andSet = zzc.getAndSet(null);
                byte[] bArr2 = andSet;
                if (andSet == null) {
                    bArr2 = new byte[4096];
                }
                while (true) {
                    long j = this.zzp;
                    long j2 = this.zzn;
                    if (j == j2) {
                        zzc.set(bArr2);
                        break;
                    }
                    int read = this.zzl.read(bArr2, 0, (int) Math.min(j2 - j, bArr2.length));
                    if (Thread.interrupted()) {
                        throw new InterruptedIOException();
                    }
                    if (read == -1) {
                        throw new EOFException();
                    }
                    this.zzp += read;
                    zzawl<? super zzcma> zzawlVar = this.zzi;
                    if (zzawlVar != null) {
                        ((zzcmn) zzawlVar).zzW(this, read);
                    }
                }
            }
            if (i2 == 0) {
                i3 = 0;
            } else {
                long j3 = this.zzo;
                int i4 = i2;
                if (j3 != -1) {
                    long j4 = j3 - this.zzq;
                    if (j4 != 0) {
                        i4 = (int) Math.min(i2, j4);
                    }
                    i3 = -1;
                }
                int read2 = this.zzl.read(bArr, i, i4);
                if (read2 != -1) {
                    this.zzq += read2;
                    zzawl<? super zzcma> zzawlVar2 = this.zzi;
                    i3 = read2;
                    if (zzawlVar2 != null) {
                        ((zzcmn) zzawlVar2).zzW(this, read2);
                        i3 = read2;
                    }
                } else if (this.zzo != -1) {
                    throw new EOFException();
                } else {
                    i3 = -1;
                }
            }
            return i3;
        } catch (IOException e) {
            throw new zzawc(e, this.zzj, 2);
        }
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
    @Override // com.google.android.gms.internal.ads.zzavw
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long zzb(com.google.android.gms.internal.ads.zzavy r8) throws com.google.android.gms.internal.ads.zzawc {
        /*
            Method dump skipped, instructions count: 1238
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcma.zzb(com.google.android.gms.internal.ads.zzavy):long");
    }

    @Override // com.google.android.gms.internal.ads.zzavw
    public final Uri zzc() {
        HttpURLConnection httpURLConnection = this.zzk;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0056, code lost:
        if (r7 <= 2048) goto L28;
     */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r0v54, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzavw
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzd() throws com.google.android.gms.internal.ads.zzawc {
        /*
            Method dump skipped, instructions count: 256
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcma.zzd():void");
    }

    @Override // com.google.android.gms.internal.ads.zzawf
    public final Map<String, List<String>> zze() {
        HttpURLConnection httpURLConnection = this.zzk;
        if (httpURLConnection == null) {
            return null;
        }
        return httpURLConnection.getHeaderFields();
    }

    public final void zzh(int i) {
        this.zzr = i;
        for (Socket socket : this.zzs) {
            if (!socket.isClosed()) {
                try {
                    socket.setReceiveBufferSize(this.zzr);
                } catch (SocketException e) {
                    zzciz.zzk("Failed to update receive buffer size.", e);
                }
            }
        }
    }
}
