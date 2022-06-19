package com.google.android.gms.internal.firebase_remote_config;

import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzao.class */
public final class zzao implements zzap {
    private final Proxy zzcs;

    public zzao() {
        this(null);
    }

    public zzao(Proxy proxy) {
        this.zzcs = proxy;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzap
    public final HttpURLConnection zza(URL url) {
        Proxy proxy = this.zzcs;
        return (HttpURLConnection) (proxy == null ? url.openConnection() : url.openConnection(proxy));
    }
}
