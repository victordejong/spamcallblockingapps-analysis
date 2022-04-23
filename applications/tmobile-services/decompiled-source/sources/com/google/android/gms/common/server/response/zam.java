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
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/zam.class */
public final class zam extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zam> CREATOR = new zan();
    @SafeParcelable.VersionField

    /* renamed from: f */
    private final int f7615f;
    @SafeParcelable.Field

    /* renamed from: g */
    final String f7616g;
    @SafeParcelable.Field

    /* renamed from: h */
    final ArrayList<zal> f7617h;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zam(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) ArrayList<zal> arrayList) {
        this.f7615f = i;
        this.f7616g = str;
        this.f7617h = arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zam(String str, Map<String, FastJsonResponse.Field<?, ?>> map) {
        ArrayList<zal> arrayList;
        this.f7615f = 1;
        this.f7616g = str;
        if (map != null) {
            ArrayList<zal> arrayList2 = new ArrayList<>();
            Iterator<String> it = map.keySet().iterator();
            while (true) {
                arrayList = arrayList2;
                if (!it.hasNext()) {
                    break;
                }
                String next = it.next();
                arrayList2.add(new zal(next, map.get(next)));
            }
        } else {
            arrayList = null;
        }
        this.f7617h = arrayList;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m14463a(parcel);
        SafeParcelWriter.m14453k(parcel, 1, this.f7615f);
        SafeParcelWriter.m14447q(parcel, 2, this.f7616g, false);
        SafeParcelWriter.m14443u(parcel, 3, this.f7617h, false);
        SafeParcelWriter.m14462b(parcel, a);
    }
}
