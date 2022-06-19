package com.google.android.gms.phenotype;

import android.net.Uri;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.internal.phenotype.zzd;
import com.google.android.gms.internal.phenotype.zze;
import e.m.a.f.m.a;
@KeepForSdk
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/phenotype/Phenotype.class */
public final class Phenotype {

    /* renamed from: a */
    public static final Api.ClientKey<zze> f6456a;

    /* renamed from: b */
    public static final Api.AbstractClientBuilder<zze, Api.ApiOptions.NoOptions> f6457b;

    static {
        Api.ClientKey<zze> clientKey = new Api.ClientKey<>();
        f6456a = clientKey;
        a aVar = new a();
        f6457b = aVar;
        new Api("Phenotype.API", aVar, clientKey);
        new zzd();
    }

    private Phenotype() {
    }

    @KeepForSdk
    /* renamed from: a */
    public static Uri m38551a(String str) {
        String valueOf = String.valueOf(Uri.encode(str));
        return Uri.parse(valueOf.length() != 0 ? "content://com.google.android.gms.phenotype/".concat(valueOf) : new String("content://com.google.android.gms.phenotype/"));
    }
}
