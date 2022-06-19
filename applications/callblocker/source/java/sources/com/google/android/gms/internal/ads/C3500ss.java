package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.ss */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ss.class */
public final class C3500ss extends AbstractC2663a {
    public static final Parcelable.Creator<C3500ss> CREATOR = new C3499sr();

    /* renamed from: a */
    public final String f17341a;

    /* renamed from: b */
    public final String f17342b;

    /* renamed from: c */
    public final boolean f17343c;

    /* renamed from: d */
    public final boolean f17344d;

    /* renamed from: e */
    public final List<String> f17345e;

    /* renamed from: f */
    public final boolean f17346f;

    /* renamed from: g */
    public final boolean f17347g;

    /* renamed from: h */
    public final List<String> f17348h;

    public C3500ss(String str, String str2, boolean z, boolean z2, List<String> list, boolean z3, boolean z4, List<String> list2) {
        this.f17341a = str;
        this.f17342b = str2;
        this.f17343c = z;
        this.f17344d = z2;
        this.f17345e = list;
        this.f17346f = z3;
        this.f17347g = z4;
        this.f17348h = list2 == null ? new ArrayList() : list2;
    }

    /* renamed from: a */
    public static C3500ss m7183a(JSONObject jSONObject) {
        C3500ss c3500ss;
        if (jSONObject == null) {
            c3500ss = null;
        } else {
            c3500ss = new C3500ss(jSONObject.optString("click_string", ""), jSONObject.optString("report_url", ""), jSONObject.optBoolean("rendered_ad_enabled", false), jSONObject.optBoolean("non_malicious_reporting_enabled", false), C3614wy.m6854a(jSONObject.optJSONArray("allowed_headers"), (List<String>) null), jSONObject.optBoolean("protection_enabled", false), jSONObject.optBoolean("malicious_reporting_enabled", false), C3614wy.m6854a(jSONObject.optJSONArray("webview_permissions"), (List<String>) null));
        }
        return c3500ss;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13932a(parcel, 2, this.f17341a, false);
        C2664b.m13932a(parcel, 3, this.f17342b, false);
        C2664b.m13930a(parcel, 4, this.f17343c);
        C2664b.m13930a(parcel, 5, this.f17344d);
        C2664b.m13923b(parcel, 6, this.f17345e, false);
        C2664b.m13930a(parcel, 7, this.f17346f);
        C2664b.m13930a(parcel, 8, this.f17347g);
        C2664b.m13923b(parcel, 9, this.f17348h, false);
        C2664b.m13943a(parcel, m13944a);
    }
}
