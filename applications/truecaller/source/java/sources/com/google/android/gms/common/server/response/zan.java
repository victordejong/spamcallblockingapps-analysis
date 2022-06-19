package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
@ShowFirstParty
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/server/response/zan.class */
public final class zan extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zan> CREATOR = new zao();
    @SafeParcelable.VersionField

    /* renamed from: a */
    public final int f6109a;

    /* renamed from: b */
    public final HashMap<String, Map<String, FastJsonResponse.Field<?, ?>>> f6110b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final String f6111c;

    @SafeParcelable.Constructor
    public zan(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) ArrayList<zal> arrayList, @SafeParcelable.Param(id = 3) String str) {
        this.f6109a = i;
        HashMap<String, Map<String, FastJsonResponse.Field<?, ?>>> hashMap = new HashMap<>();
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            zal zalVar = arrayList.get(i2);
            String str2 = zalVar.f6104b;
            HashMap hashMap2 = new HashMap();
            ArrayList<zam> arrayList2 = zalVar.f6105c;
            Objects.requireNonNull(arrayList2, "null reference");
            int size2 = arrayList2.size();
            for (int i3 = 0; i3 < size2; i3++) {
                zam zamVar = zalVar.f6105c.get(i3);
                hashMap2.put(zamVar.f6107b, zamVar.f6108c);
            }
            hashMap.put(str2, hashMap2);
        }
        this.f6110b = hashMap;
        Objects.requireNonNull(str, "null reference");
        this.f6111c = str;
        for (String str3 : hashMap.keySet()) {
            Map<String, FastJsonResponse.Field<?, ?>> map = this.f6110b.get(str3);
            for (String str4 : map.keySet()) {
                map.get(str4).f6094j = this;
            }
        }
    }

    /* renamed from: o2 */
    public final Map<String, FastJsonResponse.Field<?, ?>> m38805o2(String str) {
        return this.f6110b.get(str);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        for (String str : this.f6110b.keySet()) {
            sb.append(str);
            sb.append(":\n");
            Map<String, FastJsonResponse.Field<?, ?>> map = this.f6110b.get(str);
            for (String str2 : map.keySet()) {
                C22128a.m8669S0(sb, "  ", str2, ": ");
                sb.append(map.get(str2));
            }
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        int i2 = this.f6109a;
        parcel.writeInt(262145);
        parcel.writeInt(i2);
        ArrayList arrayList = new ArrayList();
        for (String str : this.f6110b.keySet()) {
            arrayList.add(new zal(str, this.f6110b.get(str)));
        }
        SafeParcelWriter.m38842u(parcel, 2, arrayList, false);
        SafeParcelWriter.m38846q(parcel, 3, this.f6111c, false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
