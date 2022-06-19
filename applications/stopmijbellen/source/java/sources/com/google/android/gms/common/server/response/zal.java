package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
@ShowFirstParty
@SafeParcelable.Class(creator = "FieldMappingDictionaryEntryCreator")
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/zal.class */
public final class zal extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zal> CREATOR = new zap();
    @SafeParcelable.VersionField(m4803id = 1)
    public final int zaa;
    @SafeParcelable.Field(m4805id = 2)
    public final String zab;
    @SafeParcelable.Field(m4805id = 3)
    public final ArrayList<zam> zac;

    @SafeParcelable.Constructor
    public zal(@SafeParcelable.Param(m4804id = 1) int i, @SafeParcelable.Param(m4804id = 2) String str, @SafeParcelable.Param(m4804id = 3) ArrayList<zam> arrayList) {
        this.zaa = i;
        this.zab = str;
        this.zac = arrayList;
    }

    public zal(String str, Map<String, FastJsonResponse.Field<?, ?>> map) {
        ArrayList<zam> arrayList;
        this.zaa = 1;
        this.zab = str;
        if (map != null) {
            ArrayList<zam> arrayList2 = new ArrayList<>();
            Iterator<String> it2 = map.keySet().iterator();
            while (true) {
                arrayList = arrayList2;
                if (!it2.hasNext()) {
                    break;
                }
                String next = it2.next();
                arrayList2.add(new zam(next, map.get(next)));
            }
        } else {
            arrayList = null;
        }
        this.zac = arrayList;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zaa);
        SafeParcelWriter.writeString(parcel, 2, this.zab, false);
        SafeParcelWriter.writeTypedList(parcel, 3, this.zac, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
