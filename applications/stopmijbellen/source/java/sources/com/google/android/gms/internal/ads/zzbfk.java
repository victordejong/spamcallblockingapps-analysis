package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.applovin.sdk.AppLovinEventParameters;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONException;
import org.json.JSONObject;
@ParametersAreNonnullByDefault
@SafeParcelable.Class(creator = "AdValueParcelCreator")
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbfk.class */
public final class zzbfk extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbfk> CREATOR = new zzbfl();
    @SafeParcelable.Field(m4805id = 1)
    public final int zza;
    @SafeParcelable.Field(m4805id = 2)
    public final int zzb;
    @SafeParcelable.Field(m4805id = 3)
    public final String zzc;
    @SafeParcelable.Field(m4805id = 4)
    public final long zzd;

    @SafeParcelable.Constructor
    public zzbfk(@SafeParcelable.Param(m4804id = 1) int i, @SafeParcelable.Param(m4804id = 2) int i2, @SafeParcelable.Param(m4804id = 3) String str, @SafeParcelable.Param(m4804id = 4) long j) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = str;
        this.zzd = j;
    }

    public static zzbfk zza(JSONObject jSONObject) throws JSONException {
        return new zzbfk(jSONObject.getInt("type_num"), jSONObject.getInt("precision_num"), jSONObject.getString(AppLovinEventParameters.REVENUE_CURRENCY), jSONObject.getLong(AppMeasurementSdk.ConditionalUserProperty.VALUE));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zza);
        SafeParcelWriter.writeInt(parcel, 2, this.zzb);
        SafeParcelWriter.writeString(parcel, 3, this.zzc, false);
        SafeParcelWriter.writeLong(parcel, 4, this.zzd);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
