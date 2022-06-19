package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.firebase.analytics.FirebaseAnalytics;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONException;
import org.json.JSONObject;
@ParametersAreNonnullByDefault
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzvu.class */
public final class zzvu extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzvu> CREATOR = new zzvt();
    public final int type;
    public final int zzadc;
    public final String zzadd;
    public final long zzade;

    public zzvu(int i, int i2, String str, long j) {
        this.type = i;
        this.zzadc = i2;
        this.zzadd = str;
        this.zzade = j;
    }

    public static zzvu zza(JSONObject jSONObject) throws JSONException {
        return new zzvu(jSONObject.getInt("type_num"), jSONObject.getInt("precision_num"), jSONObject.getString(FirebaseAnalytics.Param.CURRENCY), jSONObject.getLong("value"));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.type);
        SafeParcelWriter.writeInt(parcel, 2, this.zzadc);
        SafeParcelWriter.writeString(parcel, 3, this.zzadd, false);
        SafeParcelWriter.writeLong(parcel, 4, this.zzade);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
