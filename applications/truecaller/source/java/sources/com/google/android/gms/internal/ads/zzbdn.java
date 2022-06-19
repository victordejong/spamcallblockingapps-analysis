package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.mopub.network.ImpressionData;
import org.json.JSONException;
import org.json.JSONObject;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbdn.class */
public final class zzbdn extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbdn> CREATOR = new zzbdo();
    @SafeParcelable.Field
    public final int zza;
    @SafeParcelable.Field
    public final int zzb;
    @SafeParcelable.Field
    public final String zzc;
    @SafeParcelable.Field
    public final long zzd;

    @SafeParcelable.Constructor
    public zzbdn(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) int i2, @SafeParcelable.Param(id = 3) String str, @SafeParcelable.Param(id = 4) long j) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = str;
        this.zzd = j;
    }

    public static zzbdn zza(JSONObject jSONObject) throws JSONException {
        return new zzbdn(jSONObject.getInt("type_num"), jSONObject.getInt("precision_num"), jSONObject.getString(ImpressionData.CURRENCY), jSONObject.getLong("value"));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        int i2 = this.zza;
        parcel.writeInt(262145);
        parcel.writeInt(i2);
        int i3 = this.zzb;
        parcel.writeInt(262146);
        parcel.writeInt(i3);
        SafeParcelWriter.m38846q(parcel, 3, this.zzc, false);
        long j = this.zzd;
        parcel.writeInt(524292);
        parcel.writeLong(j);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
