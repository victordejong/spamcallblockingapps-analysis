package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
import com.google.android.gms.common.server.response.FastJsonResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/zan.class */
public final class zan extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zan> CREATOR = new C6214c();

    /* renamed from: d */
    final int f19683d;

    /* renamed from: e */
    private final HashMap<String, Map<String, FastJsonResponse.Field<?, ?>>> f19684e;

    /* renamed from: f */
    private final String f19685f;

    public zan(int i, ArrayList<zal> arrayList, String str) {
        this.f19683d = i;
        HashMap<String, Map<String, FastJsonResponse.Field<?, ?>>> hashMap = new HashMap<>();
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            zal zalVar = arrayList.get(i2);
            String str2 = zalVar.f19678e;
            HashMap hashMap2 = new HashMap();
            int size2 = ((ArrayList) C6155o.m17018j(zalVar.f19679f)).size();
            for (int i3 = 0; i3 < size2; i3++) {
                zam zamVar = zalVar.f19679f.get(i3);
                hashMap2.put(zamVar.f19681e, zamVar.f19682f);
            }
            hashMap.put(str2, hashMap2);
        }
        this.f19684e = hashMap;
        this.f19685f = (String) C6155o.m17018j(str);
        m16854k0();
    }

    /* renamed from: k0 */
    public final void m16854k0() {
        for (String str : this.f19684e.keySet()) {
            Map<String, FastJsonResponse.Field<?, ?>> map = this.f19684e.get(str);
            for (String str2 : map.keySet()) {
                map.get(str2).m16867t0(this);
            }
        }
    }

    /* renamed from: l0 */
    public final Map<String, FastJsonResponse.Field<?, ?>> m16853l0(String str) {
        return this.f19684e.get(str);
    }

    /* renamed from: m0 */
    public final String m16852m0() {
        return this.f19685f;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        for (String str : this.f19684e.keySet()) {
            sb.append(str);
            sb.append(":\n");
            Map<String, FastJsonResponse.Field<?, ?>> map = this.f19684e.get(str);
            for (String str2 : map.keySet()) {
                sb.append("  ");
                sb.append(str2);
                sb.append(": ");
                sb.append(map.get(str2));
            }
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16937k(parcel, 1, this.f19683d);
        ArrayList arrayList = new ArrayList();
        for (String str : this.f19684e.keySet()) {
            arrayList.add(new zal(str, this.f19684e.get(str)));
        }
        C6170a.m16926v(parcel, 2, arrayList, false);
        C6170a.m16930r(parcel, 3, this.f19685f, false);
        C6170a.m16946b(parcel, m16947a);
    }
}
