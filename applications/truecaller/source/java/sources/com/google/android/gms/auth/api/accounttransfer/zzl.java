package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.internal.auth.zzaz;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import p193e.p1432d.p1439c.p1440a.C22128a;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/accounttransfer/zzl.class */
public final class zzl extends zzaz {
    public static final Parcelable.Creator<zzl> CREATOR = new zzm();

    /* renamed from: f */
    public static final HashMap<String, FastJsonResponse.Field<?, ?>> f5372f;
    @SafeParcelable.Indicator

    /* renamed from: a */
    public final Set<Integer> f5373a;
    @SafeParcelable.VersionField

    /* renamed from: b */
    public final int f5374b;
    @SafeParcelable.Field

    /* renamed from: c */
    public ArrayList<zzr> f5375c;
    @SafeParcelable.Field

    /* renamed from: d */
    public int f5376d;
    @SafeParcelable.Field

    /* renamed from: e */
    public zzo f5377e;

    static {
        HashMap<String, FastJsonResponse.Field<?, ?>> hashMap = new HashMap<>();
        f5372f = hashMap;
        hashMap.put("authenticatorData", new FastJsonResponse.Field<>(11, true, 11, true, "authenticatorData", 2, zzr.class, null));
        hashMap.put("progress", FastJsonResponse.Field.m38816o2("progress", 4, zzo.class));
    }

    public zzl() {
        this.f5373a = new HashSet(1);
        this.f5374b = 1;
    }

    @SafeParcelable.Constructor
    public zzl(@SafeParcelable.Indicator Set<Integer> set, @SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) ArrayList<zzr> arrayList, @SafeParcelable.Param(id = 3) int i2, @SafeParcelable.Param(id = 4) zzo zzoVar) {
        this.f5373a = set;
        this.f5374b = i;
        this.f5375c = arrayList;
        this.f5376d = i2;
        this.f5377e = zzoVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final <T extends FastJsonResponse> void addConcreteTypeArrayInternal(FastJsonResponse.Field<?, ?> field, String str, ArrayList<T> arrayList) {
        int i = field.f6091g;
        if (i == 2) {
            this.f5375c = arrayList;
            this.f5373a.add(Integer.valueOf(i));
            return;
        }
        throw new IllegalArgumentException(String.format("Field with id=%d is not a known ConcreteTypeArray type. Found %s", Integer.valueOf(i), arrayList.getClass().getCanonicalName()));
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final <T extends FastJsonResponse> void addConcreteTypeInternal(FastJsonResponse.Field<?, ?> field, String str, T t) {
        int i = field.f6091g;
        if (i == 4) {
            this.f5377e = (zzo) t;
            this.f5373a.add(Integer.valueOf(i));
            return;
        }
        throw new IllegalArgumentException(String.format("Field with id=%d is not a known custom type. Found %s", Integer.valueOf(i), t.getClass().getCanonicalName()));
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final /* synthetic */ Map getFieldMappings() {
        return f5372f;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final Object getFieldValue(FastJsonResponse.Field field) {
        int i = field.f6091g;
        if (i != 1) {
            if (i == 2) {
                return this.f5375c;
            }
            if (i != 4) {
                throw new IllegalStateException(C22128a.m8690L1(37, "Unknown SafeParcelable id=", field.f6091g));
            }
            return this.f5377e;
        }
        return Integer.valueOf(this.f5374b);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final boolean isFieldSet(FastJsonResponse.Field field) {
        return this.f5373a.contains(Integer.valueOf(field.f6091g));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        Set<Integer> set = this.f5373a;
        if (set.contains(1)) {
            int i2 = this.f5374b;
            parcel.writeInt(262145);
            parcel.writeInt(i2);
        }
        if (set.contains(2)) {
            SafeParcelWriter.m38842u(parcel, 2, this.f5375c, true);
        }
        if (set.contains(3)) {
            int i3 = this.f5376d;
            parcel.writeInt(262147);
            parcel.writeInt(i3);
        }
        if (set.contains(4)) {
            SafeParcelWriter.m38847p(parcel, 4, this.f5377e, i, true);
        }
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
