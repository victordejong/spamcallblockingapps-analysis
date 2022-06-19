package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import com.applovin.sdk.AppLovinEventTypes;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zzn.class */
public final class zzn {
    private static final Uri zza = new Uri.Builder().scheme(AppLovinEventTypes.USER_VIEWED_CONTENT).authority("com.google.android.gms.chimera").build();
    private final String zzb;
    private final String zzc;
    private final ComponentName zzd;
    private final int zze;
    private final boolean zzf;

    public zzn(ComponentName componentName, int i) {
        this.zzb = null;
        this.zzc = null;
        Preconditions.checkNotNull(componentName);
        this.zzd = componentName;
        this.zze = i;
        this.zzf = false;
    }

    public zzn(String str, int i, boolean z) {
        this(str, "com.google.android.gms", i, false);
    }

    public zzn(String str, String str2, int i, boolean z) {
        Preconditions.checkNotEmpty(str);
        this.zzb = str;
        Preconditions.checkNotEmpty(str2);
        this.zzc = str2;
        this.zzd = null;
        this.zze = i;
        this.zzf = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzn)) {
            return false;
        }
        zzn zznVar = (zzn) obj;
        return Objects.equal(this.zzb, zznVar.zzb) && Objects.equal(this.zzc, zznVar.zzc) && Objects.equal(this.zzd, zznVar.zzd) && this.zze == zznVar.zze && this.zzf == zznVar.zzf;
    }

    public final int hashCode() {
        return Objects.hashCode(this.zzb, this.zzc, this.zzd, Integer.valueOf(this.zze), Boolean.valueOf(this.zzf));
    }

    public final String toString() {
        String str = this.zzb;
        String str2 = str;
        if (str == null) {
            Preconditions.checkNotNull(this.zzd);
            str2 = this.zzd.flattenToString();
        }
        return str2;
    }

    public final int zza() {
        return this.zze;
    }

    public final ComponentName zzb() {
        return this.zzd;
    }

    public final Intent zzc(Context context) {
        Intent intent;
        Bundle bundle;
        if (this.zzb != null) {
            intent = null;
            if (this.zzf) {
                Bundle bundle2 = new Bundle();
                bundle2.putString("serviceActionBundleKey", this.zzb);
                try {
                    bundle = context.getContentResolver().call(zza, "serviceIntentCall", (String) null, bundle2);
                } catch (IllegalArgumentException e) {
                    Log.w("ConnectionStatusConfig", "Dynamic intent resolution failed: ".concat(e.toString()));
                    bundle = null;
                }
                Intent intent2 = bundle == null ? null : (Intent) bundle.getParcelable("serviceResponseIntentKey");
                intent = intent2;
                if (intent2 == null) {
                    String valueOf = String.valueOf(this.zzb);
                    Log.w("ConnectionStatusConfig", valueOf.length() != 0 ? "Dynamic lookup for intent failed for action: ".concat(valueOf) : new String("Dynamic lookup for intent failed for action: "));
                    intent = intent2;
                }
            }
            if (intent == null) {
                return new Intent(this.zzb).setPackage(this.zzc);
            }
        } else {
            intent = new Intent().setComponent(this.zzd);
        }
        return intent;
    }

    public final String zzd() {
        return this.zzc;
    }
}
