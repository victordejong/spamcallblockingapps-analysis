package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
@ShowFirstParty
@SafeParcelable.Class(creator = "FieldMappingDictionaryCreator")
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/zak.class */
public final class zak extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zak> CREATOR = new zan();
    @SafeParcelable.VersionField(m342id = 1)
    private final int zale;
    private final HashMap<String, Map<String, FastJsonResponse.Field<?, ?>>> zaqu;
    @SafeParcelable.Field(getter = "getSerializedDictionary", m344id = 2)
    private final ArrayList<zal> zaqv;
    @SafeParcelable.Field(getter = "getRootClassName", m344id = 3)
    private final String zaqw;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zak(@SafeParcelable.Param(m343id = 1) int i, @SafeParcelable.Param(m343id = 2) ArrayList<zal> arrayList, @SafeParcelable.Param(m343id = 3) String str) {
        this.zale = i;
        this.zaqv = null;
        HashMap<String, Map<String, FastJsonResponse.Field<?, ?>>> hashMap = new HashMap<>();
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            zal zalVar = arrayList.get(i2);
            String str2 = zalVar.className;
            HashMap hashMap2 = new HashMap();
            int size2 = zalVar.zaqx.size();
            for (int i3 = 0; i3 < size2; i3++) {
                zam zamVar = zalVar.zaqx.get(i3);
                hashMap2.put(zamVar.zaqy, zamVar.zaqz);
            }
            hashMap.put(str2, hashMap2);
        }
        this.zaqu = hashMap;
        this.zaqw = (String) Preconditions.checkNotNull(str);
        zacr();
    }

    public zak(Class<? extends FastJsonResponse> cls) {
        this.zale = 1;
        this.zaqv = null;
        this.zaqu = new HashMap<>();
        this.zaqw = cls.getCanonicalName();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        for (String str : this.zaqu.keySet()) {
            sb.append(str);
            sb.append(":\n");
            Map<String, FastJsonResponse.Field<?, ?>> map = this.zaqu.get(str);
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
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zale);
        ArrayList arrayList = new ArrayList();
        for (String str : this.zaqu.keySet()) {
            arrayList.add(new zal(str, this.zaqu.get(str)));
        }
        SafeParcelWriter.writeTypedList(parcel, 2, arrayList, false);
        SafeParcelWriter.writeString(parcel, 3, this.zaqw, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final void zaa(Class<? extends FastJsonResponse> cls, Map<String, FastJsonResponse.Field<?, ?>> map) {
        this.zaqu.put(cls.getCanonicalName(), map);
    }

    public final boolean zaa(Class<? extends FastJsonResponse> cls) {
        return this.zaqu.containsKey(cls.getCanonicalName());
    }

    public final void zacr() {
        for (String str : this.zaqu.keySet()) {
            Map<String, FastJsonResponse.Field<?, ?>> map = this.zaqu.get(str);
            for (String str2 : map.keySet()) {
                map.get(str2).zaa(this);
            }
        }
    }

    public final void zacs() {
        for (String str : this.zaqu.keySet()) {
            Map<String, FastJsonResponse.Field<?, ?>> map = this.zaqu.get(str);
            HashMap hashMap = new HashMap();
            for (String str2 : map.keySet()) {
                hashMap.put(str2, map.get(str2).zacl());
            }
            this.zaqu.put(str, hashMap);
        }
    }

    public final String zact() {
        return this.zaqw;
    }

    public final Map<String, FastJsonResponse.Field<?, ?>> zai(String str) {
        return this.zaqu.get(str);
    }
}
