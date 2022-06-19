package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.util.zzbh;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzawu.class */
public final class zzawu extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzawu> CREATOR = new zzawx();
    public final String zzeam;
    public final String zzean;
    public final boolean zzeao;
    public final boolean zzeap;
    public final List<String> zzeaq;
    public final boolean zzear;
    public final boolean zzeas;
    private final List<String> zzeat;

    public zzawu(String str, String str2, boolean z, boolean z2, List<String> list, boolean z3, boolean z4, List<String> list2) {
        this.zzeam = str;
        this.zzean = str2;
        this.zzeao = z;
        this.zzeap = z2;
        this.zzeaq = list;
        this.zzear = z3;
        this.zzeas = z4;
        this.zzeat = list2 == null ? new ArrayList() : list2;
    }

    public static zzawu zzg(JSONObject jSONObject) throws JSONException {
        if (jSONObject == null) {
            return null;
        }
        return new zzawu(jSONObject.optString("click_string", ""), jSONObject.optString("report_url", ""), jSONObject.optBoolean("rendered_ad_enabled", false), jSONObject.optBoolean("non_malicious_reporting_enabled", false), zzbh.zza(jSONObject.optJSONArray("allowed_headers"), (List<String>) null), jSONObject.optBoolean("protection_enabled", false), jSONObject.optBoolean("malicious_reporting_enabled", false), zzbh.zza(jSONObject.optJSONArray("webview_permissions"), (List<String>) null));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.zzeam, false);
        SafeParcelWriter.writeString(parcel, 3, this.zzean, false);
        SafeParcelWriter.writeBoolean(parcel, 4, this.zzeao);
        SafeParcelWriter.writeBoolean(parcel, 5, this.zzeap);
        SafeParcelWriter.writeStringList(parcel, 6, this.zzeaq, false);
        SafeParcelWriter.writeBoolean(parcel, 7, this.zzear);
        SafeParcelWriter.writeBoolean(parcel, 8, this.zzeas);
        SafeParcelWriter.writeStringList(parcel, 9, this.zzeat, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
