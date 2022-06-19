package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C6147m;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
import org.json.JSONArray;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzccl.class */
public final class zzccl extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzccl> CREATOR = new zd0();

    /* renamed from: d */
    public final String f33838d;

    /* renamed from: e */
    public final int f33839e;

    public zzccl(String str, int i) {
        this.f33838d = str;
        this.f33839e = i;
    }

    /* renamed from: k0 */
    public static zzccl m8068k0(JSONArray jSONArray) {
        if (jSONArray == null || jSONArray.length() == 0) {
            return null;
        }
        return new zzccl(jSONArray.getJSONObject(0).optString("rb_type"), jSONArray.getJSONObject(0).optInt("rb_amount"));
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof zzccl)) {
            return false;
        }
        zzccl zzcclVar = (zzccl) obj;
        return C6147m.m17044a(this.f33838d, zzcclVar.f33838d) && C6147m.m17044a(Integer.valueOf(this.f33839e), Integer.valueOf(zzcclVar.f33839e));
    }

    public final int hashCode() {
        return C6147m.m17043b(this.f33838d, Integer.valueOf(this.f33839e));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16930r(parcel, 2, this.f33838d, false);
        C6170a.m16937k(parcel, 3, this.f33839e);
        C6170a.m16946b(parcel, m16947a);
    }
}
