package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.util.zzbh;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzaxn.class */
public final class zzaxn extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaxn> CREATOR = new vx();
    public final String zzebw;
    public final String zzebx;
    public final boolean zzeby;
    public final boolean zzebz;
    public final List<String> zzeca;
    public final boolean zzecb;
    public final boolean zzecc;
    private final List<String> zzecd;

    public zzaxn(String str, String str2, boolean z, boolean z2, List<String> list, boolean z3, boolean z4, List<String> list2) {
        this.zzebw = str;
        this.zzebx = str2;
        this.zzeby = z;
        this.zzebz = z2;
        this.zzeca = list;
        this.zzecb = z3;
        this.zzecc = z4;
        this.zzecd = list2 == null ? new ArrayList<>() : list2;
    }

    public static zzaxn zzg(JSONObject jSONObject) throws JSONException {
        if (jSONObject == null) {
            return null;
        }
        return new zzaxn(jSONObject.optString("click_string", ""), jSONObject.optString("report_url", ""), jSONObject.optBoolean("rendered_ad_enabled", false), jSONObject.optBoolean("non_malicious_reporting_enabled", false), zzbh.zza(jSONObject.optJSONArray("allowed_headers"), (List<String>) null), jSONObject.optBoolean("protection_enabled", false), jSONObject.optBoolean("malicious_reporting_enabled", false), zzbh.zza(jSONObject.optJSONArray("webview_permissions"), (List<String>) null));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 2, this.zzebw, false);
        a.a(parcel, 3, this.zzebx, false);
        a.a(parcel, 4, this.zzeby);
        a.a(parcel, 5, this.zzebz);
        a.a(parcel, 6, this.zzeca);
        a.a(parcel, 7, this.zzecb);
        a.a(parcel, 8, this.zzecc);
        a.a(parcel, 9, this.zzecd);
        a.b(parcel, a2);
    }
}
