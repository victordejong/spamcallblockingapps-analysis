package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.p023b.C0428a;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.internal.auth.zzaz;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/accounttransfer/zzo.class */
public class zzo extends zzaz {
    public static final Parcelable.Creator<zzo> CREATOR = new C11686b();
    private static final C0428a<String, FastJsonResponse.Field<?, ?>> zzbe;
    private List<String> zzbf;
    private List<String> zzbg;
    private List<String> zzbh;
    private List<String> zzbi;
    private List<String> zzbj;
    private final int zzv;

    static {
        C0428a<String, FastJsonResponse.Field<?, ?>> c0428a = new C0428a<>();
        zzbe = c0428a;
        c0428a.put("registered", FastJsonResponse.Field.forStrings("registered", 2));
        c0428a.put("in_progress", FastJsonResponse.Field.forStrings("in_progress", 3));
        c0428a.put("success", FastJsonResponse.Field.forStrings("success", 4));
        c0428a.put("failed", FastJsonResponse.Field.forStrings("failed", 5));
        c0428a.put("escrowed", FastJsonResponse.Field.forStrings("escrowed", 6));
    }

    public zzo() {
        this.zzv = 1;
    }

    public zzo(int i, List<String> list, List<String> list2, List<String> list3, List<String> list4, List<String> list5) {
        this.zzv = i;
        this.zzbf = list;
        this.zzbg = list2;
        this.zzbh = list3;
        this.zzbi = list4;
        this.zzbj = list5;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public Map<String, FastJsonResponse.Field<?, ?>> getFieldMappings() {
        return zzbe;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public Object getFieldValue(FastJsonResponse.Field field) {
        switch (field.getSafeParcelableFieldId()) {
            case 1:
                return Integer.valueOf(this.zzv);
            case 2:
                return this.zzbf;
            case 3:
                return this.zzbg;
            case 4:
                return this.zzbh;
            case 5:
                return this.zzbi;
            case 6:
                return this.zzbj;
            default:
                int safeParcelableFieldId = field.getSafeParcelableFieldId();
                StringBuilder sb = new StringBuilder(37);
                sb.append("Unknown SafeParcelable id=");
                sb.append(safeParcelableFieldId);
                throw new IllegalStateException(sb.toString());
        }
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public boolean isFieldSet(FastJsonResponse.Field field) {
        return true;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public void setStringsInternal(FastJsonResponse.Field<?, ?> field, String str, ArrayList<String> arrayList) {
        int safeParcelableFieldId = field.getSafeParcelableFieldId();
        if (safeParcelableFieldId == 2) {
            this.zzbf = arrayList;
        } else if (safeParcelableFieldId == 3) {
            this.zzbg = arrayList;
        } else if (safeParcelableFieldId == 4) {
            this.zzbh = arrayList;
        } else if (safeParcelableFieldId == 5) {
            this.zzbi = arrayList;
        } else if (safeParcelableFieldId != 6) {
            throw new IllegalArgumentException(String.format("Field with id=%d is not known to be a string list.", Integer.valueOf(safeParcelableFieldId)));
        } else {
            this.zzbj = arrayList;
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19112a(parcel, 1, this.zzv);
        C12050a.m19103a(parcel, 2, this.zzbf);
        C12050a.m19103a(parcel, 3, this.zzbg);
        C12050a.m19103a(parcel, 4, this.zzbh);
        C12050a.m19103a(parcel, 5, this.zzbi);
        C12050a.m19103a(parcel, 6, this.zzbj);
        C12050a.m19095b(parcel, m19116a);
    }
}
