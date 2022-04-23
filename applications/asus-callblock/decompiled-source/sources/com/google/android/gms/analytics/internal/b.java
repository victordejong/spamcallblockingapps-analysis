package com.google.android.gms.analytics.internal;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/internal/b.class */
public final class b extends zzd {
    private static final byte[] c = "\n".getBytes();

    /* renamed from: a  reason: collision with root package name */
    private final String f3798a = String.format("%s/%s (Linux; U; Android %s; %s; %s Build/%s)", "GoogleAnalytics", zze.VERSION, Build.VERSION.RELEASE, zzao.zza(Locale.getDefault()), Build.MODEL, Build.ID);

    /* renamed from: b  reason: collision with root package name */
    private final c f3799b;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/internal/b$a.class */
    public final class a {

        /* renamed from: a  reason: collision with root package name */
        int f3800a;

        /* renamed from: b  reason: collision with root package name */
        ByteArrayOutputStream f3801b = new ByteArrayOutputStream();

        public a() {
        }

        public final boolean a(zzab zzabVar) {
            boolean z;
            com.google.android.gms.common.internal.b.a(zzabVar);
            if (this.f3800a + 1 > b.this.zzlS().zzni()) {
                z = false;
            } else {
                String a2 = b.this.a(zzabVar, false);
                if (a2 == null) {
                    b.this.zzlR().zza(zzabVar, "Error formatting hit");
                    z = true;
                } else {
                    byte[] bytes = a2.getBytes();
                    int length = bytes.length;
                    if (length > b.this.zzlS().zzna()) {
                        b.this.zzlR().zza(zzabVar, "Hit size exceeds the maximum size limit");
                        z = true;
                    } else {
                        int i = length;
                        if (this.f3801b.size() > 0) {
                            i = length + 1;
                        }
                        if (i + this.f3801b.size() > b.this.zzlS().zznc()) {
                            z = false;
                        } else {
                            try {
                                if (this.f3801b.size() > 0) {
                                    this.f3801b.write(b.c);
                                }
                                this.f3801b.write(bytes);
                                this.f3800a++;
                                z = true;
                            } catch (IOException e) {
                                b.this.zze("Failed to write payload when batching hits", e);
                                z = true;
                            }
                        }
                    }
                }
            }
            return z;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(zzf zzfVar) {
        super(zzfVar);
        this.f3799b = new c(zzfVar.zzlQ());
    }

    /* JADX WARN: Finally extract failed */
    private int a(URL url) {
        int i;
        com.google.android.gms.common.internal.b.a(url);
        zzb("GET request", url);
        HttpURLConnection httpURLConnection = null;
        HttpURLConnection httpURLConnection2 = null;
        try {
            try {
                HttpURLConnection b2 = b(url);
                b2.connect();
                a(b2);
                int responseCode = b2.getResponseCode();
                if (responseCode == 200) {
                    zzkw().b();
                }
                httpURLConnection2 = b2;
                httpURLConnection = b2;
                zzb("GET status", Integer.valueOf(responseCode));
                i = responseCode;
                if (b2 != null) {
                    b2.disconnect();
                    i = responseCode;
                }
            } catch (IOException e) {
                httpURLConnection = httpURLConnection2;
                zzd("Network GET connection error", e);
                if (httpURLConnection2 != null) {
                    httpURLConnection2.disconnect();
                }
                i = 0;
            }
            return i;
        } catch (Throwable th) {
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            throw th;
        }
    }

    /* JADX WARN: Not initialized variable reg: 11, insn: 0x011f: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r11 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:58:0x011f */
    private int a(URL url, byte[] bArr) {
        OutputStream outputStream;
        HttpURLConnection httpURLConnection;
        IOException e;
        OutputStream outputStream2;
        int i;
        com.google.android.gms.common.internal.b.a(url);
        com.google.android.gms.common.internal.b.a(bArr);
        zzb("POST bytes, url", Integer.valueOf(bArr.length), url);
        if (zziW()) {
            zza("Post payload\n", new String(bArr));
        }
        try {
            try {
                getContext().getPackageName();
                httpURLConnection = b(url);
            } catch (Throwable th) {
                th = th;
            }
        } catch (IOException e2) {
            e = e2;
            outputStream2 = null;
            httpURLConnection = null;
        } catch (Throwable th2) {
            th = th2;
            outputStream = null;
            httpURLConnection = null;
        }
        try {
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setFixedLengthStreamingMode(bArr.length);
            httpURLConnection.connect();
            OutputStream outputStream3 = httpURLConnection.getOutputStream();
            try {
                outputStream3.write(bArr);
                a(httpURLConnection);
                int responseCode = httpURLConnection.getResponseCode();
                if (responseCode == 200) {
                    zzkw().b();
                }
                zzb("POST status", Integer.valueOf(responseCode));
                if (outputStream3 != null) {
                    try {
                        outputStream3.close();
                    } catch (IOException e3) {
                        zze("Error closing http post connection output stream", e3);
                    }
                }
                i = responseCode;
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                    i = responseCode;
                }
            } catch (IOException e4) {
                e = e4;
                outputStream2 = outputStream3;
                zzd("Network POST connection error", e);
                if (outputStream2 != null) {
                    try {
                        outputStream2.close();
                    } catch (IOException e5) {
                        zze("Error closing http post connection output stream", e5);
                    }
                }
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                i = 0;
                return i;
            }
        } catch (IOException e6) {
            e = e6;
            outputStream2 = null;
        } catch (Throwable th3) {
            th = th3;
            outputStream = null;
            if (outputStream != null) {
                try {
                    outputStream.close();
                } catch (IOException e7) {
                    zze("Error closing http post connection output stream", e7);
                }
            }
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            throw th;
        }
        return i;
    }

    private URL a(zzab zzabVar) {
        String str;
        URL url;
        if (zzabVar.zznV()) {
            String valueOf = String.valueOf(zzlS().zznk());
            String valueOf2 = String.valueOf(zzlS().zznm());
            str = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
        } else {
            String valueOf3 = String.valueOf(zzlS().zznl());
            String valueOf4 = String.valueOf(zzlS().zznm());
            str = valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3);
        }
        try {
            url = new URL(str);
        } catch (MalformedURLException e) {
            zze("Error trying to parse the hardcoded host url", e);
            url = null;
        }
        return url;
    }

    private URL a(zzab zzabVar, String str) {
        String str2;
        URL url;
        if (zzabVar.zznV()) {
            String valueOf = String.valueOf(zzlS().zznk());
            String valueOf2 = String.valueOf(zzlS().zznm());
            str2 = new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(valueOf2).length() + String.valueOf(str).length()).append(valueOf).append(valueOf2).append("?").append(str).toString();
        } else {
            String valueOf3 = String.valueOf(zzlS().zznl());
            String valueOf4 = String.valueOf(zzlS().zznm());
            str2 = new StringBuilder(String.valueOf(valueOf3).length() + 1 + String.valueOf(valueOf4).length() + String.valueOf(str).length()).append(valueOf3).append(valueOf4).append("?").append(str).toString();
        }
        try {
            url = new URL(str2);
        } catch (MalformedURLException e) {
            zze("Error trying to parse the hardcoded host url", e);
            url = null;
        }
        return url;
    }

    private static void a(StringBuilder sb, String str, String str2) {
        if (sb.length() != 0) {
            sb.append('&');
        }
        sb.append(URLEncoder.encode(str, "UTF-8"));
        sb.append('=');
        sb.append(URLEncoder.encode(str2, "UTF-8"));
    }

    private void a(HttpURLConnection httpURLConnection) {
        InputStream inputStream = null;
        try {
            InputStream inputStream2 = httpURLConnection.getInputStream();
            do {
                inputStream = inputStream2;
            } while (inputStream2.read(new byte[1024]) > 0);
            if (inputStream2 != null) {
                try {
                    inputStream2.close();
                } catch (IOException e) {
                    zze("Error closing http connection input stream", e);
                }
            }
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e2) {
                    zze("Error closing http connection input stream", e2);
                }
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x015b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int b(java.net.URL r9, byte[] r10) {
        /*
            Method dump skipped, instructions count: 399
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.analytics.internal.b.b(java.net.URL, byte[]):int");
    }

    private HttpURLConnection b(URL url) {
        URLConnection openConnection = url.openConnection();
        if (!(openConnection instanceof HttpURLConnection)) {
            throw new IOException("Failed to obtain http connection");
        }
        HttpURLConnection httpURLConnection = (HttpURLConnection) openConnection;
        httpURLConnection.setDefaultUseCaches(false);
        httpURLConnection.setConnectTimeout(zzlS().zznz());
        httpURLConnection.setReadTimeout(zzlS().zznA());
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setRequestProperty("User-Agent", this.f3798a);
        httpURLConnection.setDoInput(true);
        return httpURLConnection;
    }

    private List<Long> b(List<zzab> list) {
        boolean z;
        ArrayList arrayList = new ArrayList(list.size());
        for (zzab zzabVar : list) {
            com.google.android.gms.common.internal.b.a(zzabVar);
            String a2 = a(zzabVar, !zzabVar.zznV());
            if (a2 == null) {
                zzlR().zza(zzabVar, "Error formatting hit for upload");
                z = true;
            } else if (a2.length() <= zzlS().zzmZ()) {
                URL a3 = a(zzabVar, a2);
                if (a3 == null) {
                    zzbK("Failed to build collect GET endpoint url");
                    z = false;
                } else {
                    z = a(a3) == 200;
                }
            } else {
                String a4 = a(zzabVar, false);
                if (a4 == null) {
                    zzlR().zza(zzabVar, "Error formatting hit for POST upload");
                    z = true;
                } else {
                    byte[] bytes = a4.getBytes();
                    if (bytes.length > zzlS().zznb()) {
                        zzlR().zza(zzabVar, "Hit payload exceeds size limit");
                        z = true;
                    } else {
                        URL a5 = a(zzabVar);
                        if (a5 == null) {
                            zzbK("Failed to build collect POST endpoint url");
                        } else if (a(a5, bytes) == 200) {
                            z = true;
                        }
                        z = false;
                    }
                }
            }
            if (!z) {
                break;
            }
            arrayList.add(Long.valueOf(zzabVar.zznS()));
            if (arrayList.size() >= zzlS().zznh()) {
                break;
            }
        }
        return arrayList;
    }

    private URL c() {
        URL url;
        String valueOf = String.valueOf(zzlS().zznk());
        String valueOf2 = String.valueOf(zzlS().zznn());
        try {
            url = new URL(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
        } catch (MalformedURLException e) {
            zze("Error trying to parse the hardcoded host url", e);
            url = null;
        }
        return url;
    }

    final String a(zzab zzabVar, boolean z) {
        String str;
        com.google.android.gms.common.internal.b.a(zzabVar);
        StringBuilder sb = new StringBuilder();
        try {
            for (Map.Entry<String, String> entry : zzabVar.zzm().entrySet()) {
                String key = entry.getKey();
                if (!"ht".equals(key) && !"qt".equals(key) && !"AppUID".equals(key) && !"z".equals(key) && !"_gmsv".equals(key)) {
                    a(sb, key, entry.getValue());
                }
            }
            a(sb, "ht", String.valueOf(zzabVar.zznT()));
            a(sb, "qt", String.valueOf(zzlQ().a() - zzabVar.zznT()));
            if (zzlS().zzmW()) {
                a(sb, "_gmsv", zze.VERSION);
            }
            if (z) {
                long zznW = zzabVar.zznW();
                a(sb, "z", zznW != 0 ? String.valueOf(zznW) : String.valueOf(zzabVar.zznS()));
            }
            str = sb.toString();
        } catch (UnsupportedEncodingException e) {
            zze("Failed to encode name or value", e);
            str = null;
        }
        return str;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0176  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<java.lang.Long> a(java.util.List<com.google.android.gms.analytics.internal.zzab> r7) {
        /*
            Method dump skipped, instructions count: 383
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.analytics.internal.b.a(java.util.List):java.util.List");
    }

    public final boolean a() {
        NetworkInfo networkInfo;
        boolean z;
        zzkN();
        zzma();
        try {
            networkInfo = ((ConnectivityManager) getContext().getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (SecurityException e) {
            networkInfo = null;
        }
        if (networkInfo == null || !networkInfo.isConnected()) {
            zzbG("No network connectivity");
            z = false;
        } else {
            z = true;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.analytics.internal.zzd
    public final void zzkO() {
        zza("Network initialized. User agent", this.f3798a);
    }
}
