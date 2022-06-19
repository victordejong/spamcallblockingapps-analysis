package com.google.android.gms.internal.consent_sdk;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import java.util.List;
import java.util.Objects;
import p231s4.C4286a;
import p231s4.C4293d;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzn.class */
public final class zzn {
    private final Application zza;
    private final zzb zzb;
    private final zzam zzc;

    public zzn(Application application, zzb zzbVar, zzam zzamVar) {
        this.zza = application;
        this.zzb = zzbVar;
        this.zzc = zzamVar;
    }

    public final zzbu zzd(Activity activity, C4293d c4293d) throws zzj {
        Objects.requireNonNull(c4293d);
        C4286a.C4287a c4287a = new C4286a.C4287a(this.zza);
        Context context = c4287a.f13456b;
        List<String> list = c4287a.f13455a;
        boolean z = true;
        if (!zzbx.zzb()) {
            z = list.contains(zzbx.zza(context));
        }
        return zzo.zza(new zzo(this, activity, new C4286a(z, c4287a), c4293d, null));
    }
}
