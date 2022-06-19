package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
import com.google.android.gms.common.server.response.FastJsonResponse;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/zal.class */
public final class zal extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zal> CREATOR = new C6215d();

    /* renamed from: d */
    final int f19677d;

    /* renamed from: e */
    final String f19678e;

    /* renamed from: f */
    final ArrayList<zam> f19679f;

    public zal(int i, String str, ArrayList<zam> arrayList) {
        this.f19677d = i;
        this.f19678e = str;
        this.f19679f = arrayList;
    }

    public zal(String str, Map<String, FastJsonResponse.Field<?, ?>> map) {
        ArrayList<zam> arrayList;
        this.f19677d = 1;
        this.f19678e = str;
        if (map != null) {
            ArrayList<zam> arrayList2 = new ArrayList<>();
            Iterator<String> it = map.keySet().iterator();
            while (true) {
                arrayList = arrayList2;
                if (!it.hasNext()) {
                    break;
                }
                String next = it.next();
                arrayList2.add(new zam(next, map.get(next)));
            }
        } else {
            arrayList = null;
        }
        this.f19679f = arrayList;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16937k(parcel, 1, this.f19677d);
        C6170a.m16930r(parcel, 2, this.f19678e, false);
        C6170a.m16926v(parcel, 3, this.f19679f, false);
        C6170a.m16946b(parcel, m16947a);
    }
}
