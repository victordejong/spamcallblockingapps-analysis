package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.facebook.ads.AdError;
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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcnq.class */
final class zzcnq extends zzdf implements zzdv {
    private static final Pattern zzb = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");
    private static final AtomicReference<byte[]> zzc = new AtomicReference<>();
    private final int zze;
    private final int zzf;
    private final String zzg;
    private zzdm zzi;
    private HttpURLConnection zzj;
    private InputStream zzk;
    private boolean zzl;
    private int zzm;
    private long zzn;
    private long zzo;
    private long zzp;
    private long zzq;
    private int zzr;
    private final SSLSocketFactory zzd = new zzcnp(this);
    private final Set<Socket> zzs = new HashSet();
    private final zzdu zzh = new zzdu();

    public zzcnq(String str, zzdx zzdxVar, int i, int i2, int i3) {
        super(true);
        zzdy.zzc(str);
        this.zzg = str;
        this.zze = i;
        this.zzf = i2;
        this.zzr = i3;
        if (zzdxVar != null) {
            zzb(zzdxVar);
        }
    }

    private final void zzn() {
        HttpURLConnection httpURLConnection = this.zzj;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e) {
                zzciz.zzh("Unexpected error while disconnecting", e);
            }
            this.zzj = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdf, com.google.android.gms.internal.ads.zzdi, com.google.android.gms.internal.ads.zzdv
    public final Map<String, List<String>> zza() {
        HttpURLConnection httpURLConnection = this.zzj;
        if (httpURLConnection == null) {
            return null;
        }
        return httpURLConnection.getHeaderFields();
    }

    @Override // com.google.android.gms.internal.ads.zzdg
    public final int zzg(byte[] bArr, int i, int i2) throws zzds {
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
                    int read = this.zzk.read(bArr2, 0, (int) Math.min(j2 - j, bArr2.length));
                    if (Thread.interrupted()) {
                        throw new InterruptedIOException();
                    }
                    if (read == -1) {
                        throw new EOFException();
                    }
                    this.zzp += read;
                    zzc(read);
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
                i3 = this.zzk.read(bArr, i, i4);
                if (i3 != -1) {
                    this.zzq += i3;
                    zzc(i3);
                } else if (this.zzo != -1) {
                    throw new EOFException();
                } else {
                    i3 = -1;
                }
            }
            return i3;
        } catch (IOException e) {
            throw new zzds(e, this.zzi, (int) AdError.SERVER_ERROR_CODE, 2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x01db, code lost:
        if (r14 != 0) goto L55;
     */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0277  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x035d  */
    /* JADX WARN: Type inference failed for: r0v151, types: [long] */
    /* JADX WARN: Type inference failed for: r0v162, types: [long] */
    /* JADX WARN: Type inference failed for: r0v182, types: [long] */
    /* JADX WARN: Type inference failed for: r0v209, types: [long] */
    /* JADX WARN: Type inference failed for: r0v215, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzdi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long zzh(com.google.android.gms.internal.ads.zzdm r10) throws com.google.android.gms.internal.ads.zzds {
        /*
            Method dump skipped, instructions count: 1276
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcnq.zzh(com.google.android.gms.internal.ads.zzdm):long");
    }

    @Override // com.google.android.gms.internal.ads.zzdi
    public final Uri zzi() {
        HttpURLConnection httpURLConnection = this.zzj;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0056, code lost:
        if (r8 <= 2048) goto L28;
     */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v56, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzdi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzj() throws com.google.android.gms.internal.ads.zzds {
        /*
            Method dump skipped, instructions count: 268
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcnq.zzj():void");
    }

    public final void zzm(int i) {
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
