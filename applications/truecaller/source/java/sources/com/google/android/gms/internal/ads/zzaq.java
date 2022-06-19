package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.facebook.ads.AdError;
import com.huawei.hms.support.api.entity.core.JosStatusCodes;
import com.tenor.android.core.constant.StringConstant;
import com.tenor.android.core.network.constant.Protocols;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaq.class */
public final class zzaq extends zzag implements zzaw {
    private final boolean zzb;
    private final int zzc;
    private final int zzd;
    private final String zze;
    private final zzav zzf;
    private final zzav zzg;
    private zzan zzh;
    private HttpURLConnection zzi;
    private InputStream zzj;
    private boolean zzk;
    private int zzl;
    private long zzm;
    private long zzn;

    @Deprecated
    public zzaq() {
        this(null, JosStatusCodes.RTN_CODE_COMMON_ERROR, JosStatusCodes.RTN_CODE_COMMON_ERROR, false, null, null, false);
    }

    private zzaq(String str, int i, int i2, boolean z, zzav zzavVar, zzfly<String> zzflyVar, boolean z2) {
        super(true);
        this.zze = str;
        this.zzc = i;
        this.zzd = i2;
        this.zzb = z;
        this.zzf = zzavVar;
        this.zzg = new zzav();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ zzaq(String str, String str2, int i, int i2, boolean z, zzav zzavVar, zzfly<String> zzflyVar, boolean z2) {
        this(str, str2, i, i2, z, null, false);
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
            StringBuilder m8712G = C22128a.m8712G("bytes=", j, StringConstant.DASH);
            if (j2 != -1) {
                m8712G.append((j + j2) - 1);
            }
            str = m8712G.toString();
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
        httpURLConnection.setRequestMethod(zzan.zza(1));
        httpURLConnection.connect();
        return httpURLConnection;
    }

    private final URL zzl(URL url, String str, zzan zzanVar) throws zzat {
        if (str != null) {
            try {
                URL url2 = new URL(url, str);
                String protocol = url2.getProtocol();
                if (!"https".equals(protocol) && !Protocols.HTTP.equals(protocol)) {
                    String valueOf = String.valueOf(protocol);
                    throw new zzat(valueOf.length() != 0 ? "Unsupported protocol redirect: ".concat(valueOf) : new String("Unsupported protocol redirect: "), zzanVar, (int) AdError.INTERNAL_ERROR_CODE, 1);
                } else if (this.zzb || protocol.equals(url.getProtocol())) {
                    return url2;
                } else {
                    String protocol2 = url.getProtocol();
                    StringBuilder sb = new StringBuilder(String.valueOf(protocol2).length() + 41 + protocol.length());
                    C22128a.m8666T0(sb, "Disallowed cross-protocol redirect (", protocol2, " to ", protocol);
                    sb.append(")");
                    throw new zzat(sb.toString(), zzanVar, (int) AdError.INTERNAL_ERROR_CODE, 1);
                }
            } catch (MalformedURLException e) {
                throw new zzat(e, zzanVar, (int) AdError.INTERNAL_ERROR_CODE, 1);
            }
        }
        throw new zzat("Null location redirect", zzanVar, (int) AdError.INTERNAL_ERROR_CODE, 1);
    }

    private final void zzm() {
        HttpURLConnection httpURLConnection = this.zzi;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e) {
                zzaln.zzb("DefaultHttpDataSource", "Unexpected error while disconnecting", e);
            }
            this.zzi = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzag, com.google.android.gms.internal.ads.zzaj
    public final Map<String, List<String>> zzf() {
        HttpURLConnection httpURLConnection = this.zzi;
        return httpURLConnection == null ? Collections.emptyMap() : httpURLConnection.getHeaderFields();
    }

    @Override // com.google.android.gms.internal.ads.zzah
    public final int zzg(byte[] bArr, int i, int i2) throws zzat {
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
                int i4 = zzamq.zza;
                read = inputStream.read(bArr, i, i3);
                if (read == -1) {
                    read = -1;
                } else {
                    this.zzn += read;
                    zzd(read);
                }
            } catch (IOException e) {
                zzan zzanVar = this.zzh;
                int i5 = zzamq.zza;
                throw zzat.zza(e, zzanVar, 2);
            }
        }
        return read;
    }

    /* JADX WARN: Code restructure failed: missing block: B:105:0x02f5, code lost:
        r0 = new java.lang.StringBuilder(31);
        r0.append("Too many redirects: ");
        r0.append(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x032f, code lost:
        throw new com.google.android.gms.internal.ads.zzat(new java.net.NoRouteToHostException(r0.toString()), r13, (int) com.facebook.ads.AdError.INTERNAL_ERROR_CODE, 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x010b, code lost:
        if (r15 != 0) goto L36;
     */
    /* JADX WARN: Type inference failed for: r0v102, types: [long] */
    /* JADX WARN: Type inference failed for: r0v121, types: [long] */
    /* JADX WARN: Type inference failed for: r0v125, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzaj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long zzh(com.google.android.gms.internal.ads.zzan r13) throws com.google.android.gms.internal.ads.zzat {
        /*
            Method dump skipped, instructions count: 832
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaq.zzh(com.google.android.gms.internal.ads.zzan):long");
    }

    @Override // com.google.android.gms.internal.ads.zzaj
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
    @Override // com.google.android.gms.internal.ads.zzaj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzj() throws com.google.android.gms.internal.ads.zzat {
        /*
            Method dump skipped, instructions count: 285
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaq.zzj():void");
    }
}
