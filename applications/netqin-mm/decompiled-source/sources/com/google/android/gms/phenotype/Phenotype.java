package com.google.android.gms.phenotype;

import android.net.Uri;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.internal.phenotype.zzd;
import com.google.android.gms.internal.phenotype.zze;
import p131c.p161d.p170b.p224d.p262j.C4882f;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/phenotype/Phenotype.class */
public final class Phenotype {

    /* renamed from: a */
    public static final Api.ClientKey<zze> f30202a = new Api.ClientKey<>();

    /* renamed from: b */
    public static final Api.AbstractClientBuilder<zze, Api.ApiOptions.NoOptions> f30203b;

    static {
        C4882f fVar = new C4882f();
        f30203b = fVar;
        new Api("Phenotype.API", fVar, f30202a);
        new zzd();
    }

    @KeepForSdk
    /* renamed from: a */
    public static Uri m8661a(String str) {
        String valueOf = String.valueOf(Uri.encode(str));
        return Uri.parse(valueOf.length() != 0 ? "content://com.google.android.gms.phenotype/".concat(valueOf) : new String("content://com.google.android.gms.phenotype/"));
    }
}
