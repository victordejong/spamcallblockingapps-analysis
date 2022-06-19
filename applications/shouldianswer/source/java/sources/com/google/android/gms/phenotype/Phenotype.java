package com.google.android.gms.phenotype;

import android.net.Uri;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.internal.phenotype.zzd;
import com.google.android.gms.internal.phenotype.zze;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/phenotype/Phenotype.class */
public final class Phenotype {
    private static final Api.ClientKey<zze> CLIENT_KEY = new Api.ClientKey<>();
    private static final Api.AbstractClientBuilder<zze, Api.ApiOptions.NoOptions> CLIENT_BUILDER = new zzl();
    @Deprecated
    private static final Api<Api.ApiOptions.NoOptions> API = new Api<>("Phenotype.API", CLIENT_BUILDER, CLIENT_KEY);
    @Deprecated
    private static final zzm zzaj = new zzd();

    private Phenotype() {
    }

    public static Uri getContentProviderUri(String str) {
        String valueOf = String.valueOf(Uri.encode(str));
        return Uri.parse(valueOf.length() != 0 ? "content://com.google.android.gms.phenotype/".concat(valueOf) : new String("content://com.google.android.gms.phenotype/"));
    }
}
