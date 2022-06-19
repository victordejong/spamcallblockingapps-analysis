package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.google.android.gms.internal.ads.zzbmf;
import com.google.android.gms.internal.ads.zzbmh;
import com.google.android.gms.internal.ads.zzgqf;
import java.util.Objects;
import p000a.AbstractC0000a;
import p066d0.C2134a;
import p195p.C3980e;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzl.class */
public final class zzl implements zzbmf {
    public final /* synthetic */ zzbmh zza;
    public final /* synthetic */ Context zzb;
    public final /* synthetic */ Uri zzc;

    public zzl(zzt zztVar, zzbmh zzbmhVar, Context context, Uri uri) {
        this.zza = zzbmhVar;
        this.zzb = context;
        this.zzc = uri;
    }

    @Override // com.google.android.gms.internal.ads.zzbmf
    public final void zza() {
        AbstractC0000a.AbstractBinderC0001a abstractBinderC0001a;
        C3980e zza = this.zza.zza();
        Intent intent = new Intent("android.intent.action.VIEW");
        if (zza != null) {
            intent.setPackage(zza.f12504c.getPackageName());
        }
        Bundle bundle = new Bundle();
        if (zza == null) {
            abstractBinderC0001a = null;
        } else {
            abstractBinderC0001a = (AbstractC0000a.AbstractBinderC0001a) zza.f12503b;
            Objects.requireNonNull(abstractBinderC0001a);
        }
        bundle.putBinder("android.support.customtabs.extra.SESSION", abstractBinderC0001a);
        intent.putExtras(bundle);
        intent.putExtra("android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS", true);
        intent.setPackage(zzgqf.zza(this.zzb));
        Context context = this.zzb;
        intent.setData(this.zzc);
        Object obj = C2134a.f7832a;
        C2134a.C2135a.m3843b(context, intent, null);
        this.zza.zzf((Activity) this.zzb);
    }
}
