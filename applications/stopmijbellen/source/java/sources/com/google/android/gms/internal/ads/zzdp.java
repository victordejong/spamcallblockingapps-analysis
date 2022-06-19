package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.support.p012v4.media.C0082b;
import com.facebook.ads.AdError;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdp.class */
public final class zzdp extends zzdf implements zzdv {
    private final boolean zzb;
    private final int zzc;
    private final int zzd;
    private final String zze;
    private final zzdu zzf;
    private final zzdu zzg;
    private zzdm zzh;
    private HttpURLConnection zzi;
    private InputStream zzj;
    private boolean zzk;
    private int zzl;
    private long zzm;
    private long zzn;

    @Deprecated
    public zzdp() {
        this(null, 8000, 8000, false, null, null, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public zzdp(String str, int i, int i2, boolean z, zzdu zzduVar, zzfqh<String> zzfqhVar, boolean z2) {
        super(true);
        this.zze = str;
        this.zzc = i;
        this.zzd = i2;
        this.zzb = z;
        this.zzf = zzduVar;
        this.zzg = new zzdu();
    }

    private final HttpURLConnection zzk(URL url, int i, byte[] bArr, long j, long j2, boolean z, boolean z2, Map<String, String> map) throws IOException {
        String str;
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setConnectTimeout(this.zzc);
        httpURLConnection.setReadTimeout(this.zzd);
        HashMap hashMap = new HashMap();
        hashMap.putAll(this.zzf.zza());
        hashMap.putAll(this.zzg.zza());
        hashMap.putAll(map);
        for (Map.Entry entry : hashMap.entrySet()) {
            httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
        }
        if (j == 0 && j2 == -1) {
            str = null;
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append("bytes=");
            sb.append(j);
            sb.append("-");
            if (j2 != -1) {
                sb.append((j + j2) - 1);
            }
            str = sb.toString();
        }
        if (str != null) {
            httpURLConnection.setRequestProperty("Range", str);
        }
        String str2 = this.zze;
        if (str2 != null) {
            httpURLConnection.setRequestProperty("User-Agent", str2);
        }
        httpURLConnection.setRequestProperty("Accept-Encoding", true != z ? "identity" : "gzip");
        httpURLConnection.setInstanceFollowRedirects(z2);
        httpURLConnection.setDoOutput(false);
        httpURLConnection.setRequestMethod(zzdm.zza(1));
        httpURLConnection.connect();
        return httpURLConnection;
    }

    private final URL zzl(URL url, String str, zzdm zzdmVar) throws zzds {
        if (str != null) {
            try {
                URL url2 = new URL(url, str);
                String protocol = url2.getProtocol();
                if (!"https".equals(protocol) && !"http".equals(protocol)) {
                    String valueOf = String.valueOf(protocol);
                    throw new zzds(valueOf.length() != 0 ? "Unsupported protocol redirect: ".concat(valueOf) : new String("Unsupported protocol redirect: "), zzdmVar, (int) AdError.INTERNAL_ERROR_CODE, 1);
                } else if (this.zzb || protocol.equals(url.getProtocol())) {
                    return url2;
                } else {
                    String protocol2 = url.getProtocol();
                    StringBuilder sb = new StringBuilder(String.valueOf(protocol2).length() + 41 + protocol.length());
                    C0082b.m8749m(sb, "Disallowed cross-protocol redirect (", protocol2, " to ", protocol);
                    sb.append(")");
                    throw new zzds(sb.toString(), zzdmVar, (int) AdError.INTERNAL_ERROR_CODE, 1);
                }
            } catch (MalformedURLException e) {
                throw new zzds(e, zzdmVar, (int) AdError.INTERNAL_ERROR_CODE, 1);
            }
        }
        throw new zzds("Null location redirect", zzdmVar, (int) AdError.INTERNAL_ERROR_CODE, 1);
    }

    private final void zzm() {
        HttpURLConnection httpURLConnection = this.zzi;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e) {
                zzep.zza("DefaultHttpDataSource", "Unexpected error while disconnecting", e);
            }
            this.zzi = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdf, com.google.android.gms.internal.ads.zzdi, com.google.android.gms.internal.ads.zzdv
    public final Map<String, List<String>> zza() {
        HttpURLConnection httpURLConnection = this.zzi;
        return httpURLConnection == null ? Collections.emptyMap() : httpURLConnection.getHeaderFields();
    }

    @Override // com.google.android.gms.internal.ads.zzdg
    public final int zzg(byte[] bArr, int i, int i2) throws zzds {
        int read;
        if (i2 == 0) {
            read = 0;
        } else {
            try {
                long j = this.zzm;
                int i3 = i2;
                if (j != -1) {
                    long j2 = j - this.zzn;
                    if (j2 == 0) {
                        read = -1;
                    } else {
                        i3 = (int) Math.min(i2, j2);
                    }
                }
                InputStream inputStream = this.zzj;
                int i4 = zzfn.zza;
                read = inputStream.read(bArr, i, i3);
                if (read == -1) {
                    read = -1;
                } else {
                    this.zzn += read;
                    zzc(read);
                }
            } catch (IOException e) {
                zzdm zzdmVar = this.zzh;
                int i5 = zzfn.zza;
                throw zzds.zza(e, zzdmVar, 2);
            }
        }
        return read;
    }

    /* JADX WARN: Code restructure failed: missing block: B:102:0x02ed, code lost:
        r0 = new java.lang.StringBuilder(31);
        r0.append("Too many redirects: ");
        r0.append(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x0329, code lost:
        throw new com.google.android.gms.internal.ads.zzds(new java.net.NoRouteToHostException(r0.toString()), r13, (int) com.facebook.ads.AdError.INTERNAL_ERROR_CODE, 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0103, code lost:
        if (r15 != 0) goto L33;
     */
    /* JADX WARN: Type inference failed for: r0v102, types: [long] */
    /* JADX WARN: Type inference failed for: r0v121, types: [long] */
    /* JADX WARN: Type inference failed for: r0v125, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzdi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long zzh(com.google.android.gms.internal.ads.zzdm r13) throws com.google.android.gms.internal.ads.zzds {
        /*
            Method dump skipped, instructions count: 826
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdp.zzh(com.google.android.gms.internal.ads.zzdm):long");
    }

    @Override // com.google.android.gms.internal.ads.zzdi
    public final Uri zzi() {
        HttpURLConnection httpURLConnection = this.zzi;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0065, code lost:
        if (r8 <= 2048) goto L33;
     */
    /* JADX WARN: Type inference failed for: r0v59, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzdi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzj() throws com.google.android.gms.internal.ads.zzds {
        /*
            Method dump skipped, instructions count: 285
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdp.zzj():void");
    }
}
