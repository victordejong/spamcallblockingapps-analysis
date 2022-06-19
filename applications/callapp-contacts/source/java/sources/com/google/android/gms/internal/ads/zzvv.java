package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import com.mopub.network.ImpressionData;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzvv.class */
public final class zzvv extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzvv> CREATOR = new ejf();
    public final int type;
    public final int zzadj;
    public final String zzadk;
    public final long zzadl;

    public zzvv(int i, int i2, String str, long j) {
        this.type = i;
        this.zzadj = i2;
        this.zzadk = str;
        this.zzadl = j;
    }

    public static zzvv zza(JSONObject jSONObject) throws JSONException {
        return new zzvv(jSONObject.getInt("type_num"), jSONObject.getInt("precision_num"), jSONObject.getString(ImpressionData.CURRENCY), jSONObject.getLong("value"));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19112a(parcel, 1, this.type);
        C12050a.m19112a(parcel, 2, this.zzadj);
        C12050a.m19104a(parcel, 3, this.zzadk, false);
        C12050a.m19111a(parcel, 4, this.zzadl);
        C12050a.m19095b(parcel, m19116a);
    }
}
