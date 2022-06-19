package com.google.android.gms.internal.firebase_remote_config;

import com.google.firebase.perf.FirebasePerformance;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.URL;
import java.util.Arrays;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzas.class */
public final class zzas extends zzag {
    private static final String[] zzca;
    private final HostnameVerifier hostnameVerifier;
    private final zzap zzcw;
    private final SSLSocketFactory zzcx;

    static {
        String[] strArr = {FirebasePerformance.HttpMethod.DELETE, FirebasePerformance.HttpMethod.GET, FirebasePerformance.HttpMethod.HEAD, FirebasePerformance.HttpMethod.OPTIONS, FirebasePerformance.HttpMethod.POST, FirebasePerformance.HttpMethod.PUT, FirebasePerformance.HttpMethod.TRACE};
        zzca = strArr;
        Arrays.sort(strArr);
    }

    public zzas() {
        this(null, null, null);
    }

    private zzas(zzap zzapVar, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier) {
        this.zzcw = System.getProperty("com.google.api.client.should_use_proxy") != null ? new zzao(new Proxy(Proxy.Type.HTTP, new InetSocketAddress(System.getProperty("https.proxyHost"), Integer.parseInt(System.getProperty("https.proxyPort"))))) : new zzao();
        this.zzcx = null;
        this.hostnameVerifier = null;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzag
    public final /* synthetic */ zzaj zzc(String str, String str2) {
        if (zzz(str)) {
            HttpURLConnection zza = this.zzcw.zza(new URL(str2));
            zza.setRequestMethod(str);
            boolean z = zza instanceof HttpsURLConnection;
            return new zzar(zza);
        }
        throw new IllegalArgumentException(zzdy.zza("HTTP method %s not supported", str));
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzag
    public final boolean zzz(String str) {
        return Arrays.binarySearch(zzca, str) >= 0;
    }
}
