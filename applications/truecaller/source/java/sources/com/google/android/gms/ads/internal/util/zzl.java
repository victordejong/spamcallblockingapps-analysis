package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.google.android.gms.internal.ads.zzbkh;
import com.google.android.gms.internal.ads.zzbkj;
import com.google.android.gms.internal.ads.zzglo;
import java.util.Objects;
import p1719m3.p1720a.p1721a.AbstractC25352a;
import p1727n3.p1755d.p1756a.C25691a;
import p1727n3.p1755d.p1756a.C25696f;
import p1727n3.p1755d.p1756a.C25699h;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/internal/util/zzl.class */
public final class zzl implements zzbkh {
    public final /* synthetic */ zzbkj zza;
    public final /* synthetic */ Context zzb;
    public final /* synthetic */ Uri zzc;

    public zzl(zzs zzsVar, zzbkj zzbkjVar, Context context, Uri uri) {
        this.zza = zzbkjVar;
        this.zzb = context;
        this.zzc = uri;
    }

    @Override // com.google.android.gms.internal.ads.zzbkh
    public final void zza() {
        C25699h zzc = this.zza.zzc();
        Intent intent = new Intent("android.intent.action.VIEW");
        C25691a.C25692a c25692a = new C25691a.C25692a();
        if (zzc != null) {
            intent.setPackage(zzc.f71986c.getPackageName());
            AbstractC25352a.AbstractBinderC25353a abstractBinderC25353a = (AbstractC25352a.AbstractBinderC25353a) zzc.f71985b;
            Objects.requireNonNull(abstractBinderC25353a);
            PendingIntent pendingIntent = zzc.f71987d;
            Bundle bundle = new Bundle();
            bundle.putBinder("android.support.customtabs.extra.SESSION", abstractBinderC25353a);
            if (pendingIntent != null) {
                bundle.putParcelable("android.support.customtabs.extra.SESSION_ID", pendingIntent);
            }
            intent.putExtras(bundle);
        }
        if (!intent.hasExtra("android.support.customtabs.extra.SESSION")) {
            Bundle bundle2 = new Bundle();
            bundle2.putBinder("android.support.customtabs.extra.SESSION", null);
            intent.putExtras(bundle2);
        }
        intent.putExtra("android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS", true);
        intent.putExtras(c25692a.m3052a().m3053a());
        intent.putExtra("androidx.browser.customtabs.extra.SHARE_STATE", 0);
        C25696f c25696f = new C25696f(intent, null);
        c25696f.f71983a.setPackage(zzglo.zza(this.zzb));
        c25696f.m3048a(this.zzb, this.zzc);
        this.zza.zzb((Activity) this.zzb);
    }
}
