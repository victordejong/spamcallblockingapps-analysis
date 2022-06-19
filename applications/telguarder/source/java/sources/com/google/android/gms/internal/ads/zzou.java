package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.util.Log;
import androidx.browser.trusted.sharing.ShareTarget;
import androidx.webkit.ProxyConfig;
import com.pubmatic.sdk.common.POBCommonConstants;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.NoRouteToHostException;
import java.net.ProtocolException;
import java.net.URL;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzou.class */
public final class zzou implements zzot {
    private static final Pattern zzbio = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");
    private static final AtomicReference<byte[]> zzbip = new AtomicReference<>();
    private final int zzbir;
    private final int zzbis;
    private final String zzbit;
    private final zzpd<? super zzou> zzbix;
    private zzos zzbiy;
    private HttpURLConnection zzbiz;
    private InputStream zzbja;
    private boolean zzbjb;
    private long zzbjc;
    private long zzbjd;
    private long zzbje;
    private long zzcp;
    private final zzpp<String> zzbiu = null;
    private final zzox zzbiw = new zzox();
    private final boolean zzbiq = true;
    private final zzox zzbiv = null;

    public zzou(String str, zzpp<String> zzppVar, zzpd<? super zzou> zzpdVar, int i, int i2, boolean z, zzox zzoxVar) {
        this.zzbit = zzpg.checkNotEmpty(str);
        this.zzbix = zzpdVar;
        this.zzbir = i;
        this.zzbis = i2;
    }

    private final HttpURLConnection zza(URL url, byte[] bArr, long j, long j2, boolean z, boolean z2) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setConnectTimeout(this.zzbir);
        httpURLConnection.setReadTimeout(this.zzbis);
        for (Map.Entry<String, String> entry : this.zzbiw.zzis().entrySet()) {
            httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
        }
        if (j != 0 || j2 != -1) {
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
        httpURLConnection.setRequestProperty(POBCommonConstants.USER_AGENT, this.zzbit);
        if (!z) {
            httpURLConnection.setRequestProperty("Accept-Encoding", "identity");
        }
        httpURLConnection.setInstanceFollowRedirects(z2);
        httpURLConnection.setDoOutput(bArr != null);
        if (bArr != null) {
            httpURLConnection.setRequestMethod(ShareTarget.METHOD_POST);
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

    /* JADX WARN: Removed duplicated region for block: B:10:0x0062  */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    /* JADX WARN: Type inference failed for: r0v67, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static long zzc(java.net.HttpURLConnection r5) {
        /*
            Method dump skipped, instructions count: 318
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzou.zzc(java.net.HttpURLConnection):long");
    }

    private final void zzir() {
        HttpURLConnection httpURLConnection = this.zzbiz;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e) {
                Log.e("DefaultHttpDataSource", "Unexpected error while disconnecting", e);
            }
            this.zzbiz = null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0054, code lost:
        if (r7 > android.support.p001v4.media.session.PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH) goto L22;
     */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r0v58, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzon
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void close() throws com.google.android.gms.internal.ads.zzov {
        /*
            Method dump skipped, instructions count: 268
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzou.close():void");
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
                    zzpd<? super zzou> zzpdVar = this.zzbix;
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
            zzpd<? super zzou> zzpdVar2 = this.zzbix;
            if (zzpdVar2 != null) {
                zzpdVar2.zzc(this, read2);
            }
            return read2;
        } catch (IOException e) {
            throw new zzov(e, this.zzbiy, 2);
        }
    }

    /* JADX WARN: Type inference failed for: r0v82, types: [long] */
    /* JADX WARN: Type inference failed for: r0v89, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzon
    public final long zza(zzos zzosVar) throws zzov {
        HttpURLConnection httpURLConnection;
        HttpURLConnection zza;
        this.zzbiy = zzosVar;
        this.zzcp = 0L;
        this.zzbje = 0L;
        try {
            URL url = new URL(zzosVar.uri.toString());
            byte[] bArr = zzosVar.zzbil;
            long j = zzosVar.position;
            long j2 = zzosVar.zzco;
            boolean isFlagSet = zzosVar.isFlagSet(1);
            if (!this.zzbiq) {
                httpURLConnection = zza(url, bArr, j, j2, isFlagSet, true);
            } else {
                int i = 0;
                while (true) {
                    int i2 = i + 1;
                    if (i > 20) {
                        StringBuilder sb = new StringBuilder(31);
                        sb.append("Too many redirects: ");
                        sb.append(i2);
                        throw new NoRouteToHostException(sb.toString());
                    }
                    zza = zza(url, bArr, j, j2, isFlagSet, false);
                    int responseCode = zza.getResponseCode();
                    if (responseCode == 300 || responseCode == 301 || responseCode == 302 || responseCode == 303 || (bArr == null && (responseCode == 307 || responseCode == 308))) {
                        bArr = null;
                        String headerField = zza.getHeaderField("Location");
                        zza.disconnect();
                        if (headerField == null) {
                            throw new ProtocolException("Null location redirect");
                        }
                        URL url2 = new URL(url, headerField);
                        String protocol = url2.getProtocol();
                        if (!ProxyConfig.MATCH_HTTPS.equals(protocol) && !ProxyConfig.MATCH_HTTP.equals(protocol)) {
                            String valueOf = String.valueOf(protocol);
                            throw new ProtocolException(valueOf.length() != 0 ? "Unsupported protocol redirect: ".concat(valueOf) : new String("Unsupported protocol redirect: "));
                        }
                        i = i2;
                        url = url2;
                    }
                }
                httpURLConnection = zza;
            }
            this.zzbiz = httpURLConnection;
            try {
                int responseCode2 = httpURLConnection.getResponseCode();
                if (responseCode2 < 200 || responseCode2 > 299) {
                    Map<String, List<String>> headerFields = this.zzbiz.getHeaderFields();
                    zzir();
                    zzoy zzoyVar = new zzoy(responseCode2, headerFields, zzosVar);
                    if (responseCode2 == 416) {
                        zzoyVar.initCause(new zzop(0));
                    }
                    throw zzoyVar;
                }
                this.zzbiz.getContentType();
                char c = 0;
                if (responseCode2 == 200) {
                    c = 0;
                    if (zzosVar.position != 0) {
                        c = zzosVar.position;
                    }
                }
                this.zzbjc = c;
                if (!zzosVar.isFlagSet(1)) {
                    char c2 = 65535;
                    if (zzosVar.zzco != -1) {
                        this.zzbjd = zzosVar.zzco;
                    } else {
                        long zzc = zzc(this.zzbiz);
                        if (zzc != -1) {
                            c2 = zzc - this.zzbjc;
                        }
                        this.zzbjd = c2;
                    }
                } else {
                    this.zzbjd = zzosVar.zzco;
                }
                try {
                    this.zzbja = this.zzbiz.getInputStream();
                    this.zzbjb = true;
                    zzpd<? super zzou> zzpdVar = this.zzbix;
                    if (zzpdVar != null) {
                        zzpdVar.zza(this, zzosVar);
                    }
                    return this.zzbjd;
                } catch (IOException e) {
                    zzir();
                    throw new zzov(e, zzosVar, 1);
                }
            } catch (IOException e2) {
                zzir();
                String valueOf2 = String.valueOf(zzosVar.uri.toString());
                throw new zzov(valueOf2.length() != 0 ? "Unable to connect to ".concat(valueOf2) : new String("Unable to connect to "), e2, zzosVar, 1);
            }
        } catch (IOException e3) {
            String valueOf3 = String.valueOf(zzosVar.uri.toString());
            throw new zzov(valueOf3.length() != 0 ? "Unable to connect to ".concat(valueOf3) : new String("Unable to connect to "), e3, zzosVar, 1);
        }
    }
}
