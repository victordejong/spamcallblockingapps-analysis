package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.server.response.FastJsonResponse;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/server/response/zal.class */
public final class zal extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zal> CREATOR = new m();
    final int zaa;
    final String zab;
    final ArrayList<zam> zac;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zal(int i, String str, ArrayList<zam> arrayList) {
        this.zaa = i;
        this.zab = str;
        this.zac = arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
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
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, this.zaa);
        a.a(parcel, 2, this.zab, false);
        a.a(parcel, 3, (List) this.zac, false);
        a.b(parcel, a2);
    }
}
