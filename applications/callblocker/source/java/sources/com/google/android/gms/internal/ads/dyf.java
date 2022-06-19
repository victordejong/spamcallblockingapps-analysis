package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONObject;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dyf.class */
public final class dyf extends AbstractC2663a {
    public static final Parcelable.Creator<dyf> CREATOR = new dyi();

    /* renamed from: a */
    public final int f16105a;

    /* renamed from: b */
    public final int f16106b;

    /* renamed from: c */
    public final String f16107c;

    /* renamed from: d */
    public final long f16108d;

    public dyf(int i, int i2, String str, long j) {
        this.f16105a = i;
        this.f16106b = i2;
        this.f16107c = str;
        this.f16108d = j;
    }

    /* renamed from: a */
    public static dyf m8185a(JSONObject jSONObject) {
        return new dyf(jSONObject.getInt("type_num"), jSONObject.getInt("precision_num"), jSONObject.getString("currency"), jSONObject.getLong("value"));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13941a(parcel, 1, this.f16105a);
        C2664b.m13941a(parcel, 2, this.f16106b);
        C2664b.m13932a(parcel, 3, this.f16107c, false);
        C2664b.m13940a(parcel, 4, this.f16108d);
        C2664b.m13943a(parcel, m13944a);
    }
}
