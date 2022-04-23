package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.reward.RewardItem;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzavy.class */
public final class zzavy extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzavy> CREATOR = new um();
    public final String type;
    public final int zzean;

    public zzavy(RewardItem rewardItem) {
        this(rewardItem.getType(), rewardItem.getAmount());
    }

    public zzavy(String str, int i) {
        this.type = str;
        this.zzean = i;
    }

    public static zzavy zza(JSONArray jSONArray) throws JSONException {
        if (jSONArray == null || jSONArray.length() == 0) {
            return null;
        }
        return new zzavy(jSONArray.getJSONObject(0).optString("rb_type"), jSONArray.getJSONObject(0).optInt("rb_amount"));
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof zzavy)) {
            return false;
        }
        zzavy zzavyVar = (zzavy) obj;
        return m.a(this.type, zzavyVar.type) && m.a(Integer.valueOf(this.zzean), Integer.valueOf(zzavyVar.zzean));
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.type, Integer.valueOf(this.zzean)});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 2, this.type, false);
        a.a(parcel, 3, this.zzean);
        a.b(parcel, a2);
    }
}
