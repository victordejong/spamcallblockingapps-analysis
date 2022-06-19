package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
@ShowFirstParty
@SafeParcelable.Class(creator = "FieldMapPairCreator")
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/zam.class */
public final class zam extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zam> CREATOR = new zak();
    @SafeParcelable.VersionField(m4803id = 1)
    public final int zaa;
    @SafeParcelable.Field(m4805id = 2)
    public final String zab;
    @SafeParcelable.Field(m4805id = 3)
    public final FastJsonResponse.Field<?, ?> zac;

    @SafeParcelable.Constructor
    public zam(@SafeParcelable.Param(m4804id = 1) int i, @SafeParcelable.Param(m4804id = 2) String str, @SafeParcelable.Param(m4804id = 3) FastJsonResponse.Field<?, ?> field) {
        this.zaa = i;
        this.zab = str;
        this.zac = field;
    }

    public zam(String str, FastJsonResponse.Field<?, ?> field) {
        this.zaa = 1;
        this.zab = str;
        this.zac = field;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zaa);
        SafeParcelWriter.writeString(parcel, 2, this.zab, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.zac, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
