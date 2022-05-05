package com.google.android.gms.internal.measurement;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import com.google.android.gms.analytics.zzk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.Locale;
import java.util.Map;
import org.apache.commons.p018io.IOUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcr.class */
public final class zzcr extends zzau {
    private static final byte[] zzabn = IOUtils.LINE_SEPARATOR_UNIX.getBytes();
    private final String zzabl = String.format("%s/%s (Linux; U; Android %s; %s; %s Build/%s)", "GoogleAnalytics", zzav.VERSION, Build.VERSION.RELEASE, zzdg.zza(Locale.getDefault()), Build.MODEL, Build.ID);
    private final zzdc zzabm;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcr(zzaw zzawVar) {
        super(zzawVar);
        this.zzabm = new zzdc(zzawVar.zzbx());
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0077  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int zza(java.net.URL r5) {
        /*
            r4 = this;
            r0 = r5
            java.lang.Object r0 = com.google.android.gms.common.internal.Preconditions.checkNotNull(r0)
            r0 = r4
            java.lang.String r1 = "GET request"
            r2 = r5
            r0.zzb(r1, r2)
            r0 = r4
            r1 = r5
            java.net.HttpURLConnection r0 = r0.zzb(r1)     // Catch: all -> 0x0055, IOException -> 0x005b
            r6 = r0
            r0 = r6
            r5 = r0
            r0 = r6
            r0.connect()     // Catch: all -> 0x004c, IOException -> 0x0050
            r0 = r6
            r5 = r0
            r0 = r4
            r1 = r6
            r0.zza(r1)     // Catch: all -> 0x004c, IOException -> 0x0050
            r0 = r6
            r5 = r0
            r0 = r6
            int r0 = r0.getResponseCode()     // Catch: all -> 0x004c, IOException -> 0x0050
            r7 = r0
            r0 = r7
            r1 = 200(0xc8, float:2.8E-43)
            if (r0 != r1) goto L_0x0036
            r0 = r6
            r5 = r0
            r0 = r4
            com.google.android.gms.internal.measurement.zzal r0 = r0.zzcc()     // Catch: all -> 0x004c, IOException -> 0x0050
            r0.zzbv()     // Catch: all -> 0x004c, IOException -> 0x0050
        L_0x0036:
            r0 = r6
            r5 = r0
            r0 = r4
            java.lang.String r1 = "GET status"
            r2 = r7
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch: all -> 0x004c, IOException -> 0x0050
            r0.zzb(r1, r2)     // Catch: all -> 0x004c, IOException -> 0x0050
            r0 = r6
            if (r0 == 0) goto L_0x004a
            r0 = r6
            r0.disconnect()
        L_0x004a:
            r0 = r7
            return r0
        L_0x004c:
            r6 = move-exception
            goto L_0x0073
        L_0x0050:
            r8 = move-exception
            goto L_0x005f
        L_0x0055:
            r6 = move-exception
            r0 = 0
            r5 = r0
            goto L_0x0073
        L_0x005b:
            r8 = move-exception
            r0 = 0
            r6 = r0
        L_0x005f:
            r0 = r6
            r5 = r0
            r0 = r4
            java.lang.String r1 = "Network GET connection error"
            r2 = r8
            r0.zzd(r1, r2)     // Catch: all -> 0x004c
            r0 = r6
            if (r0 == 0) goto L_0x0071
            r0 = r6
            r0.disconnect()
        L_0x0071:
            r0 = 0
            return r0
        L_0x0073:
            r0 = r5
            if (r0 == 0) goto L_0x007b
            r0 = r5
            r0.disconnect()
        L_0x007b:
            r0 = r6
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzcr.zza(java.net.URL):int");
    }

    /* JADX WARN: Not initialized variable reg: 12, insn: 0x0103: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r12 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:52:0x0103 */
    private final int zza(URL url, byte[] bArr) {
        Throwable th;
        HttpURLConnection httpURLConnection;
        IOException e;
        OutputStream outputStream;
        OutputStream outputStream2;
        Preconditions.checkNotNull(url);
        Preconditions.checkNotNull(bArr);
        zzb("POST bytes, url", Integer.valueOf(bArr.length), url);
        if (zzck()) {
            zza("Post payload\n", new String(bArr));
        }
        OutputStream outputStream3 = null;
        try {
            try {
                getContext().getPackageName();
                httpURLConnection = zzb(url);
                try {
                    httpURLConnection.setDoOutput(true);
                    httpURLConnection.setFixedLengthStreamingMode(bArr.length);
                    httpURLConnection.connect();
                    outputStream2 = httpURLConnection.getOutputStream();
                } catch (IOException e2) {
                    e = e2;
                    outputStream = null;
                }
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                outputStream2.write(bArr);
                zza(httpURLConnection);
                int responseCode = httpURLConnection.getResponseCode();
                if (responseCode == 200) {
                    zzcc().zzbv();
                }
                zzb("POST status", Integer.valueOf(responseCode));
                if (outputStream2 != null) {
                    try {
                        outputStream2.close();
                    } catch (IOException e3) {
                        zze("Error closing http post connection output stream", e3);
                    }
                }
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                return responseCode;
            } catch (IOException e4) {
                e = e4;
                outputStream = outputStream2;
                zzd("Network POST connection error", e);
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (IOException e5) {
                        zze("Error closing http post connection output stream", e5);
                    }
                }
                if (httpURLConnection == null) {
                    return 0;
                }
                httpURLConnection.disconnect();
                return 0;
            } catch (Throwable th3) {
                th = th3;
                outputStream3 = outputStream2;
                if (outputStream3 != null) {
                    try {
                        outputStream3.close();
                    } catch (IOException e6) {
                        zze("Error closing http post connection output stream", e6);
                    }
                }
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                throw th;
            }
        } catch (IOException e7) {
            e = e7;
            httpURLConnection = null;
            outputStream = null;
        } catch (Throwable th4) {
            th = th4;
            httpURLConnection = null;
        }
    }

    private static void zza(StringBuilder sb, String str, String str2) throws UnsupportedEncodingException {
        if (sb.length() != 0) {
            sb.append('&');
        }
        sb.append(URLEncoder.encode(str, "UTF-8"));
        sb.append('=');
        sb.append(URLEncoder.encode(str2, "UTF-8"));
    }

    private final void zza(HttpURLConnection httpURLConnection) throws IOException {
        InputStream inputStream;
        Throwable th;
        try {
            inputStream = httpURLConnection.getInputStream();
            try {
                do {
                } while (inputStream.read(new byte[1024]) > 0);
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e) {
                        zze("Error closing http connection input stream", e);
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e2) {
                        zze("Error closing http connection input stream", e2);
                    }
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            inputStream = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x0191  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x017a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int zzb(java.net.URL r9, byte[] r10) {
        /*
            Method dump skipped, instructions count: 407
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzcr.zzb(java.net.URL, byte[]):int");
    }

    @VisibleForTesting
    private final HttpURLConnection zzb(URL url) throws IOException {
        URLConnection openConnection = url.openConnection();
        if (!(openConnection instanceof HttpURLConnection)) {
            throw new IOException("Failed to obtain http connection");
        }
        HttpURLConnection httpURLConnection = (HttpURLConnection) openConnection;
        httpURLConnection.setDefaultUseCaches(false);
        httpURLConnection.setConnectTimeout(zzcf.zzzz.get().intValue());
        httpURLConnection.setReadTimeout(zzcf.zzaaa.get().intValue());
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setRequestProperty("User-Agent", this.zzabl);
        httpURLConnection.setDoInput(true);
        return httpURLConnection;
    }

    private final URL zzb(zzck zzckVar, String str) {
        String str2;
        if (zzckVar.zzet()) {
            String zzed = zzbx.zzed();
            String zzef = zzbx.zzef();
            StringBuilder sb = new StringBuilder(String.valueOf(zzed).length() + 1 + String.valueOf(zzef).length() + String.valueOf(str).length());
            sb.append(zzed);
            sb.append(zzef);
            sb.append("?");
            sb.append(str);
            str2 = sb.toString();
        } else {
            String zzee = zzbx.zzee();
            String zzef2 = zzbx.zzef();
            StringBuilder sb2 = new StringBuilder(String.valueOf(zzee).length() + 1 + String.valueOf(zzef2).length() + String.valueOf(str).length());
            sb2.append(zzee);
            sb2.append(zzef2);
            sb2.append("?");
            sb2.append(str);
            str2 = sb2.toString();
        }
        try {
            return new URL(str2);
        } catch (MalformedURLException e) {
            zze("Error trying to parse the hardcoded host url", e);
            return null;
        }
    }

    private final URL zzd(zzck zzckVar) {
        String str;
        if (zzckVar.zzet()) {
            String valueOf = String.valueOf(zzbx.zzed());
            String valueOf2 = String.valueOf(zzbx.zzef());
            str = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
        } else {
            String valueOf3 = String.valueOf(zzbx.zzee());
            String valueOf4 = String.valueOf(zzbx.zzef());
            str = valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3);
        }
        try {
            return new URL(str);
        } catch (MalformedURLException e) {
            zze("Error trying to parse the hardcoded host url", e);
            return null;
        }
    }

    private final URL zzfc() {
        String valueOf = String.valueOf(zzbx.zzed());
        String valueOf2 = String.valueOf(zzcf.zzzo.get());
        try {
            return new URL(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
        } catch (MalformedURLException e) {
            zze("Error trying to parse the hardcoded host url", e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public final String zza(zzck zzckVar, boolean z) {
        Preconditions.checkNotNull(zzckVar);
        StringBuilder sb = new StringBuilder();
        try {
            for (Map.Entry<String, String> entry : zzckVar.zzcw().entrySet()) {
                String key = entry.getKey();
                if (!"ht".equals(key) && !"qt".equals(key) && !"AppUID".equals(key) && !"z".equals(key) && !"_gmsv".equals(key)) {
                    zza(sb, key, entry.getValue());
                }
            }
            zza(sb, "ht", String.valueOf(zzckVar.zzer()));
            zza(sb, "qt", String.valueOf(zzbx().currentTimeMillis() - zzckVar.zzer()));
            if (z) {
                long zzeu = zzckVar.zzeu();
                zza(sb, "z", zzeu != 0 ? String.valueOf(zzeu) : String.valueOf(zzckVar.zzeq()));
            }
            return sb.toString();
        } catch (UnsupportedEncodingException e) {
            zze("Failed to encode name or value", e);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzau
    protected final void zzag() {
        zza("Network initialized. User agent", this.zzabl);
    }

    /* JADX WARN: Code restructure failed: missing block: B:56:0x01f2, code lost:
        if (zza(r0) == 200) goto L_0x01b7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x025f, code lost:
        if (zza(r0, r0) == 200) goto L_0x01b7;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0167  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x026b  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0288 A[EDGE_INSN: B:79:0x0288->B:73:0x0288 ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<java.lang.Long> zzb(java.util.List<com.google.android.gms.internal.measurement.zzck> r7) {
        /*
            Method dump skipped, instructions count: 651
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzcr.zzb(java.util.List):java.util.List");
    }

    public final boolean zzfb() {
        NetworkInfo networkInfo;
        zzk.zzaf();
        zzcl();
        try {
            networkInfo = ((ConnectivityManager) getContext().getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (SecurityException e) {
            networkInfo = null;
        }
        if (networkInfo != null && networkInfo.isConnected()) {
            return true;
        }
        zzq("No network connectivity");
        return false;
    }
}
