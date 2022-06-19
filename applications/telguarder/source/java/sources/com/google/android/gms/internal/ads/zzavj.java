package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.reward.RewardItem;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import org.json.JSONArray;
import org.json.JSONException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzavj.class */
public final class zzavj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzavj> CREATOR = new zzavi();
    public final String type;
    public final int zzdzc;

    public zzavj(RewardItem rewardItem) {
        this(rewardItem.getType(), rewardItem.getAmount());
    }

    public zzavj(String str, int i) {
        this.type = str;
        this.zzdzc = i;
    }

    public static zzavj zza(JSONArray jSONArray) throws JSONException {
        if (jSONArray == null || jSONArray.length() == 0) {
            return null;
        }
        return new zzavj(jSONArray.getJSONObject(0).optString("rb_type"), jSONArray.getJSONObject(0).optInt("rb_amount"));
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof zzavj)) {
            return false;
        }
        zzavj zzavjVar = (zzavj) obj;
        return Objects.equal(this.type, zzavjVar.type) && Objects.equal(Integer.valueOf(this.zzdzc), Integer.valueOf(zzavjVar.zzdzc));
    }

    public final int hashCode() {
        return Objects.hashCode(this.type, Integer.valueOf(this.zzdzc));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.type, false);
        SafeParcelWriter.writeInt(parcel, 3, this.zzdzc);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
