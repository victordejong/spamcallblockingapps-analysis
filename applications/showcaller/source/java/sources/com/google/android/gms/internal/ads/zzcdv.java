package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.util.C5748x0;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcdv.class */
public final class zzcdv extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzcdv> CREATOR = new ff0();

    /* renamed from: d */
    public final String f33842d;

    /* renamed from: e */
    public final String f33843e;

    /* renamed from: f */
    public final boolean f33844f;

    /* renamed from: g */
    public final boolean f33845g;

    /* renamed from: h */
    public final List<String> f33846h;

    /* renamed from: i */
    public final boolean f33847i;

    /* renamed from: j */
    public final boolean f33848j;

    /* renamed from: k */
    public final List<String> f33849k;

    public zzcdv(String str, String str2, boolean z, boolean z2, List<String> list, boolean z3, boolean z4, List<String> list2) {
        this.f33842d = str;
        this.f33843e = str2;
        this.f33844f = z;
        this.f33845g = z2;
        this.f33846h = list;
        this.f33847i = z3;
        this.f33848j = z4;
        this.f33849k = list2 == null ? new ArrayList() : list2;
    }

    /* renamed from: k0 */
    public static zzcdv m8067k0(JSONObject jSONObject) {
        return new zzcdv(jSONObject.optString("click_string", ""), jSONObject.optString("report_url", ""), jSONObject.optBoolean("rendered_ad_enabled", false), jSONObject.optBoolean("non_malicious_reporting_enabled", false), C5748x0.m17924a(jSONObject.optJSONArray("allowed_headers"), null), jSONObject.optBoolean("protection_enabled", false), jSONObject.optBoolean("malicious_reporting_enabled", false), C5748x0.m17924a(jSONObject.optJSONArray("webview_permissions"), null));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16930r(parcel, 2, this.f33842d, false);
        C6170a.m16930r(parcel, 3, this.f33843e, false);
        C6170a.m16945c(parcel, 4, this.f33844f);
        C6170a.m16945c(parcel, 5, this.f33845g);
        C6170a.m16928t(parcel, 6, this.f33846h, false);
        C6170a.m16945c(parcel, 7, this.f33847i);
        C6170a.m16945c(parcel, 8, this.f33848j);
        C6170a.m16928t(parcel, 9, this.f33849k, false);
        C6170a.m16946b(parcel, m16947a);
    }
}
