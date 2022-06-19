package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.share.internal.MessengerShareContentUtility;
import com.google.android.gms.common.internal.Preconditions;
import com.pubmatic.sdk.openwrap.core.POBConstants;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdaz.class */
public final class zzdaz implements zzdfj<Bundle> {
    private final String zzacy;
    private final zzvs zzbpo;
    private final float zzbsd;
    private final boolean zzcii;
    private final int zzdqi;
    private final int zzdqj;
    private final String zzhap;
    private final String zzhaq;
    private final boolean zzhar;

    public zzdaz(zzvs zzvsVar, String str, boolean z, String str2, float f, int i, int i2, String str3, boolean z2) {
        Preconditions.checkNotNull(zzvsVar, "the adSize must not be null");
        this.zzbpo = zzvsVar;
        this.zzacy = str;
        this.zzcii = z;
        this.zzhap = str2;
        this.zzbsd = f;
        this.zzdqi = i;
        this.zzdqj = i2;
        this.zzhaq = str3;
        this.zzhar = z2;
    }

    @Override // com.google.android.gms.internal.ads.zzdfj
    public final /* synthetic */ void zzr(Bundle bundle) {
        String str;
        zzvs[] zzvsVarArr;
        Bundle bundle2 = bundle;
        zzdnz.zza(bundle2, "smart_w", MessengerShareContentUtility.WEBVIEW_RATIO_FULL, this.zzbpo.width == -1);
        zzdnz.zza(bundle2, "smart_h", "auto", this.zzbpo.height == -2);
        zzdnz.zza(bundle2, "ene", (Boolean) true, this.zzbpo.zzcij);
        zzdnz.zza(bundle2, "rafmt", "102", this.zzbpo.zzcim);
        zzdnz.zza(bundle2, "rafmt", "103", this.zzbpo.zzcin);
        zzdnz.zza(bundle2, "inline_adaptive_slot", (Boolean) true, this.zzhar);
        zzdnz.zza(bundle2, POBConstants.KEY_FORMAT, this.zzacy);
        zzdnz.zza(bundle2, "fluid", ViewHierarchyConstants.DIMENSION_HEIGHT_KEY, this.zzcii);
        zzdnz.zza(bundle2, "sz", this.zzhap, !TextUtils.isEmpty(str));
        bundle2.putFloat("u_sd", this.zzbsd);
        bundle2.putInt("sw", this.zzdqi);
        bundle2.putInt("sh", this.zzdqj);
        String str2 = this.zzhaq;
        zzdnz.zza(bundle2, "sc", str2, true ^ TextUtils.isEmpty(str2));
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        if (this.zzbpo.zzcih == null) {
            Bundle bundle3 = new Bundle();
            bundle3.putInt(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY, this.zzbpo.height);
            bundle3.putInt(ViewHierarchyConstants.DIMENSION_WIDTH_KEY, this.zzbpo.width);
            bundle3.putBoolean("is_fluid_height", this.zzbpo.zzcii);
            arrayList.add(bundle3);
        } else {
            for (zzvs zzvsVar : this.zzbpo.zzcih) {
                Bundle bundle4 = new Bundle();
                bundle4.putBoolean("is_fluid_height", zzvsVar.zzcii);
                bundle4.putInt(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY, zzvsVar.height);
                bundle4.putInt(ViewHierarchyConstants.DIMENSION_WIDTH_KEY, zzvsVar.width);
                arrayList.add(bundle4);
            }
        }
        bundle2.putParcelableArrayList("valid_ad_sizes", arrayList);
    }
}
