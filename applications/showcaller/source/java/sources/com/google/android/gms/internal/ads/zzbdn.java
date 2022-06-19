package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbdn.class */
public final class zzbdn extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbdn> CREATOR = new C7228zq();

    /* renamed from: d */
    public final int f33697d;

    /* renamed from: e */
    public final int f33698e;

    /* renamed from: f */
    public final String f33699f;

    /* renamed from: g */
    public final long f33700g;

    public zzbdn(int i, int i2, String str, long j) {
        this.f33697d = i;
        this.f33698e = i2;
        this.f33699f = str;
        this.f33700g = j;
    }

    /* renamed from: k0 */
    public static zzbdn m8077k0(JSONObject jSONObject) {
        return new zzbdn(jSONObject.getInt("type_num"), jSONObject.getInt("precision_num"), jSONObject.getString("currency"), jSONObject.getLong("value"));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16937k(parcel, 1, this.f33697d);
        C6170a.m16937k(parcel, 2, this.f33698e);
        C6170a.m16930r(parcel, 3, this.f33699f, false);
        C6170a.m16934n(parcel, 4, this.f33700g);
        C6170a.m16946b(parcel, m16947a);
    }
}
