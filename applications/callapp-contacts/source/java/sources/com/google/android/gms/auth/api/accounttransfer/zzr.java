package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.internal.auth.zzaz;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/accounttransfer/zzr.class */
public class zzr extends zzaz {
    public static final Parcelable.Creator<zzr> CREATOR = new C11687c();
    private static final HashMap<String, FastJsonResponse.Field<?, ?>> zzaz;
    private String mPackageName;
    private final Set<Integer> zzba;
    private zzt zzbk;
    private String zzbl;
    private String zzbm;
    private final int zzv;

    static {
        HashMap<String, FastJsonResponse.Field<?, ?>> hashMap = new HashMap<>();
        zzaz = hashMap;
        hashMap.put("authenticatorInfo", FastJsonResponse.Field.forConcreteType("authenticatorInfo", 2, zzt.class));
        hashMap.put("signature", FastJsonResponse.Field.forString("signature", 3));
        hashMap.put("package", FastJsonResponse.Field.forString("package", 4));
    }

    public zzr() {
        this.zzba = new HashSet(3);
        this.zzv = 1;
    }

    public zzr(Set<Integer> set, int i, zzt zztVar, String str, String str2, String str3) {
        this.zzba = set;
        this.zzv = i;
        this.zzbk = zztVar;
        this.zzbl = str;
        this.mPackageName = str2;
        this.zzbm = str3;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public <T extends FastJsonResponse> void addConcreteTypeInternal(FastJsonResponse.Field<?, ?> field, String str, T t) {
        int safeParcelableFieldId = field.getSafeParcelableFieldId();
        if (safeParcelableFieldId == 2) {
            this.zzbk = (zzt) t;
            this.zzba.add(Integer.valueOf(safeParcelableFieldId));
            return;
        }
        throw new IllegalArgumentException(String.format("Field with id=%d is not a known custom type. Found %s", Integer.valueOf(safeParcelableFieldId), t.getClass().getCanonicalName()));
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public /* synthetic */ Map getFieldMappings() {
        return zzaz;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public Object getFieldValue(FastJsonResponse.Field field) {
        int safeParcelableFieldId = field.getSafeParcelableFieldId();
        if (safeParcelableFieldId != 1) {
            if (safeParcelableFieldId == 2) {
                return this.zzbk;
            }
            if (safeParcelableFieldId == 3) {
                return this.zzbl;
            }
            if (safeParcelableFieldId == 4) {
                return this.mPackageName;
            }
            int safeParcelableFieldId2 = field.getSafeParcelableFieldId();
            StringBuilder sb = new StringBuilder(37);
            sb.append("Unknown SafeParcelable id=");
            sb.append(safeParcelableFieldId2);
            throw new IllegalStateException(sb.toString());
        }
        return Integer.valueOf(this.zzv);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public boolean isFieldSet(FastJsonResponse.Field field) {
        return this.zzba.contains(Integer.valueOf(field.getSafeParcelableFieldId()));
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public void setStringInternal(FastJsonResponse.Field<?, ?> field, String str, String str2) {
        int safeParcelableFieldId = field.getSafeParcelableFieldId();
        if (safeParcelableFieldId == 3) {
            this.zzbl = str2;
        } else if (safeParcelableFieldId != 4) {
            throw new IllegalArgumentException(String.format("Field with id=%d is not known to be a string.", Integer.valueOf(safeParcelableFieldId)));
        } else {
            this.mPackageName = str2;
        }
        this.zzba.add(Integer.valueOf(safeParcelableFieldId));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        Set<Integer> set = this.zzba;
        if (set.contains(1)) {
            C12050a.m19112a(parcel, 1, this.zzv);
        }
        if (set.contains(2)) {
            C12050a.m19107a(parcel, 2, this.zzbk, i, true);
        }
        if (set.contains(3)) {
            C12050a.m19104a(parcel, 3, this.zzbl, true);
        }
        if (set.contains(4)) {
            C12050a.m19104a(parcel, 4, this.mPackageName, true);
        }
        if (set.contains(5)) {
            C12050a.m19104a(parcel, 5, this.zzbm, true);
        }
        C12050a.m19095b(parcel, m19116a);
    }
}
