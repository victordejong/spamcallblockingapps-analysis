package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.pubmatic.sdk.openwrap.core.POBConstants;
import java.util.ArrayList;
import javax.annotation.Nullable;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdfp.class */
public final class zzdfp implements zzdfj<Bundle> {
    private final boolean zzdyl;
    private final boolean zzdym;
    private final String zzdyn;
    private final boolean zzdyo;
    private final boolean zzdyp;
    private final boolean zzdyq;
    private final String zzdyr;
    private final String zzdys;
    private final String zzdyt;
    private final boolean zzdyu;
    private final ArrayList<String> zzhdp;
    private final String zzhdq;
    private final String zzhdr;
    private final long zzhds;

    public zzdfp(boolean z, boolean z2, String str, boolean z3, boolean z4, boolean z5, String str2, ArrayList<String> arrayList, @Nullable String str3, @Nullable String str4, String str5, boolean z6, String str6, long j) {
        this.zzdyl = z;
        this.zzdym = z2;
        this.zzdyn = str;
        this.zzdyo = z3;
        this.zzdyp = z4;
        this.zzdyq = z5;
        this.zzdyr = str2;
        this.zzhdp = arrayList;
        this.zzdys = str3;
        this.zzdyt = str4;
        this.zzhdq = str5;
        this.zzdyu = z6;
        this.zzhdr = str6;
        this.zzhds = j;
    }

    @Override // com.google.android.gms.internal.ads.zzdfj
    public final /* synthetic */ void zzr(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putBoolean("cog", this.zzdyl);
        bundle2.putBoolean("coh", this.zzdym);
        bundle2.putString("gl", this.zzdyn);
        bundle2.putBoolean("simulator", this.zzdyo);
        bundle2.putBoolean("is_latchsky", this.zzdyp);
        bundle2.putBoolean("is_sidewinder", this.zzdyq);
        bundle2.putString("hl", this.zzdyr);
        if (!this.zzhdp.isEmpty()) {
            bundle2.putStringArrayList("hl_list", this.zzhdp);
        }
        bundle2.putString("mv", this.zzdys);
        bundle2.putString("submodel", this.zzhdr);
        Bundle zza = zzdnz.zza(bundle2, POBConstants.KEY_DEVICE);
        bundle2.putBundle(POBConstants.KEY_DEVICE, zza);
        zza.putString("build", this.zzhdq);
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcss)).booleanValue()) {
            zza.putLong("remaining_data_partition_space", this.zzhds);
        }
        Bundle zza2 = zzdnz.zza(zza, "browser");
        zza.putBundle("browser", zza2);
        zza2.putBoolean("is_browser_custom_tabs_capable", this.zzdyu);
        if (!TextUtils.isEmpty(this.zzdyt)) {
            Bundle zza3 = zzdnz.zza(zza, "play_store");
            zza.putBundle("play_store", zza3);
            zza3.putString("package_version", this.zzdyt);
        }
    }
}
