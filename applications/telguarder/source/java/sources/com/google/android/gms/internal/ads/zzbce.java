package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.google.android.gms.ads.internal.util.zzd;
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
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbce.class */
final class zzbce implements zzot {
    private static final Pattern zzbio = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");
    private static final AtomicReference<byte[]> zzbip = new AtomicReference<>();
    private final int zzbir;
    private final int zzbis;
    private final String zzbit;
    private final zzpd<? super zzbce> zzbix;
    private zzos zzbiy;
    private HttpURLConnection zzbiz;
    private InputStream zzbja;
    private boolean zzbjb;
    private long zzbjc;
    private long zzbjd;
    private long zzbje;
    private long zzcp;
    private int zzens;
    private SSLSocketFactory zzenr = new zzbcd(this);
    private Set<Socket> zzent = new HashSet();
    private final zzox zzbiw = new zzox();

    public zzbce(String str, zzpd<? super zzbce> zzpdVar, int i, int i2, int i3) {
        this.zzbit = zzpg.checkNotEmpty(str);
        this.zzbix = zzpdVar;
        this.zzbir = i;
        this.zzbis = i2;
        this.zzens = i3;
    }

    public final void zzb(Socket socket) {
        this.zzent.add(socket);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x005f  */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    /* JADX WARN: Type inference failed for: r0v67, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static long zzc(java.net.HttpURLConnection r5) {
        /*
            Method dump skipped, instructions count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbce.zzc(java.net.HttpURLConnection):long");
    }

    private final void zzir() {
        HttpURLConnection httpURLConnection = this.zzbiz;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e) {
                zzd.zzc("Unexpected error while disconnecting", e);
            }
            this.zzbiz = null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0054, code lost:
        if (r7 > android.support.p001v4.media.session.PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH) goto L22;
     */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* JADX WARN: Type inference failed for: r0v62, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzon
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void close() throws com.google.android.gms.internal.ads.zzov {
        /*
            Method dump skipped, instructions count: 284
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbce.close():void");
    }

    @Override // com.google.android.gms.internal.ads.zzot
    public final Map<String, List<String>> getResponseHeaders() {
        HttpURLConnection httpURLConnection = this.zzbiz;
        if (httpURLConnection == null) {
            return null;
        }
        return httpURLConnection.getHeaderFields();
    }

    @Override // com.google.android.gms.internal.ads.zzon
    public final Uri getUri() {
        HttpURLConnection httpURLConnection = this.zzbiz;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    @Override // com.google.android.gms.internal.ads.zzon
    public final int read(byte[] bArr, int i, int i2) throws zzov {
        try {
            if (this.zzbje != this.zzbjc) {
                byte[] andSet = zzbip.getAndSet(null);
                byte[] bArr2 = andSet;
                if (andSet == null) {
                    bArr2 = new byte[4096];
                }
                while (true) {
                    long j = this.zzbje;
                    long j2 = this.zzbjc;
                    if (j == j2) {
                        zzbip.set(bArr2);
                        break;
                    }
                    int read = this.zzbja.read(bArr2, 0, (int) Math.min(j2 - j, bArr2.length));
                    if (Thread.interrupted()) {
                        throw new InterruptedIOException();
                    }
                    if (read == -1) {
                        throw new EOFException();
                    }
                    this.zzbje += read;
                    zzpd<? super zzbce> zzpdVar = this.zzbix;
                    if (zzpdVar != null) {
                        zzpdVar.zzc(this, read);
                    }
                }
            }
            if (i2 == 0) {
                return 0;
            }
            long j3 = this.zzbjd;
            int i3 = i2;
            if (j3 != -1) {
                long j4 = j3 - this.zzcp;
                if (j4 == 0) {
                    return -1;
                }
                i3 = (int) Math.min(i2, j4);
            }
            int read2 = this.zzbja.read(bArr, i, i3);
            if (read2 == -1) {
                if (this.zzbjd != -1) {
                    throw new EOFException();
                }
                return -1;
            }
            this.zzcp += read2;
            zzpd<? super zzbce> zzpdVar2 = this.zzbix;
            if (zzpdVar2 != null) {
                zzpdVar2.zzc(this, read2);
            }
            return read2;
        } catch (IOException e) {
            throw new zzov(e, this.zzbiy, 2);
        }
    }

    public final void setReceiveBufferSize(int i) {
        this.zzens = i;
        for (Socket socket : this.zzent) {
            if (!socket.isClosed()) {
                try {
                    socket.setReceiveBufferSize(this.zzens);
                } catch (SocketException e) {
                    zzd.zzd("Failed to update receive buffer size.", e);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x0341 A[Catch: IOException -> 0x03d5, TRY_ENTER, TryCatch #1 {IOException -> 0x03d5, blocks: (B:3:0x000f, B:7:0x0046, B:9:0x0057, B:11:0x0065, B:13:0x008a, B:15:0x0092, B:20:0x00d0, B:23:0x0106, B:24:0x0145, B:26:0x0151, B:28:0x0160, B:30:0x016d, B:34:0x017e, B:36:0x0189, B:38:0x0196, B:39:0x01b7, B:41:0x01be, B:56:0x01fa, B:101:0x032d, B:103:0x0341, B:105:0x035b, B:107:0x0365, B:109:0x0375, B:110:0x0380, B:112:0x038c, B:113:0x0391, B:116:0x03a1, B:117:0x03ad, B:118:0x03ae, B:118:0x03ae, B:119:0x03b1, B:120:0x03d4), top: B:130:0x000f }] */
    /* JADX WARN: Removed duplicated region for block: B:133:0x03a1 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v145, types: [long] */
    /* JADX WARN: Type inference failed for: r0v152, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzon
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long zza(com.google.android.gms.internal.ads.zzos r8) throws com.google.android.gms.internal.ads.zzov {
        /*
            Method dump skipped, instructions count: 1034
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbce.zza(com.google.android.gms.internal.ads.zzos):long");
    }
}
