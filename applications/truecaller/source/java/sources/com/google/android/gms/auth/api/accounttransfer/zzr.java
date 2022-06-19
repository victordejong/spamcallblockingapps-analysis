package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.internal.auth.zzaz;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import p193e.p1432d.p1439c.p1440a.C22128a;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/accounttransfer/zzr.class */
public class zzr extends zzaz {
    public static final Parcelable.Creator<zzr> CREATOR = new zzs();

    /* renamed from: g */
    public static final HashMap<String, FastJsonResponse.Field<?, ?>> f5385g;
    @SafeParcelable.Indicator

    /* renamed from: a */
    public final Set<Integer> f5386a;
    @SafeParcelable.VersionField

    /* renamed from: b */
    public final int f5387b;
    @SafeParcelable.Field

    /* renamed from: c */
    public zzt f5388c;
    @SafeParcelable.Field

    /* renamed from: d */
    public String f5389d;
    @SafeParcelable.Field

    /* renamed from: e */
    public String f5390e;
    @SafeParcelable.Field

    /* renamed from: f */
    public String f5391f;

    static {
        HashMap<String, FastJsonResponse.Field<?, ?>> hashMap = new HashMap<>();
        f5385g = hashMap;
        hashMap.put("authenticatorInfo", FastJsonResponse.Field.m38816o2("authenticatorInfo", 2, zzt.class));
        hashMap.put("signature", FastJsonResponse.Field.m38815p2("signature", 3));
        hashMap.put("package", FastJsonResponse.Field.m38815p2("package", 4));
    }

    public zzr() {
        this.f5386a = new HashSet(3);
        this.f5387b = 1;
    }

    @SafeParcelable.Constructor
    public zzr(@SafeParcelable.Indicator Set<Integer> set, @SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) zzt zztVar, @SafeParcelable.Param(id = 3) String str, @SafeParcelable.Param(id = 4) String str2, @SafeParcelable.Param(id = 5) String str3) {
        this.f5386a = set;
        this.f5387b = i;
        this.f5388c = zztVar;
        this.f5389d = str;
        this.f5390e = str2;
        this.f5391f = str3;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public <T extends FastJsonResponse> void addConcreteTypeInternal(FastJsonResponse.Field<?, ?> field, String str, T t) {
        int i = field.f6091g;
        if (i == 2) {
            this.f5388c = (zzt) t;
            this.f5386a.add(Integer.valueOf(i));
            return;
        }
        throw new IllegalArgumentException(String.format("Field with id=%d is not a known custom type. Found %s", Integer.valueOf(i), t.getClass().getCanonicalName()));
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public /* synthetic */ Map getFieldMappings() {
        return f5385g;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public Object getFieldValue(FastJsonResponse.Field field) {
        int i = field.f6091g;
        if (i != 1) {
            if (i == 2) {
                return this.f5388c;
            }
            if (i == 3) {
                return this.f5389d;
            }
            if (i != 4) {
                throw new IllegalStateException(C22128a.m8690L1(37, "Unknown SafeParcelable id=", field.f6091g));
            }
            return this.f5390e;
        }
        return Integer.valueOf(this.f5387b);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public boolean isFieldSet(FastJsonResponse.Field field) {
        return this.f5386a.contains(Integer.valueOf(field.f6091g));
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public void setStringInternal(FastJsonResponse.Field<?, ?> field, String str, String str2) {
        int i = field.f6091g;
        if (i == 3) {
            this.f5389d = str2;
        } else if (i != 4) {
            throw new IllegalArgumentException(String.format("Field with id=%d is not known to be a string.", Integer.valueOf(i)));
        } else {
            this.f5390e = str2;
        }
        this.f5386a.add(Integer.valueOf(i));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        Set<Integer> set = this.f5386a;
        if (set.contains(1)) {
            int i2 = this.f5387b;
            parcel.writeInt(262145);
            parcel.writeInt(i2);
        }
        if (set.contains(2)) {
            SafeParcelWriter.m38847p(parcel, 2, this.f5388c, i, true);
        }
        if (set.contains(3)) {
            SafeParcelWriter.m38846q(parcel, 3, this.f5389d, true);
        }
        if (set.contains(4)) {
            SafeParcelWriter.m38846q(parcel, 4, this.f5390e, true);
        }
        if (set.contains(5)) {
            SafeParcelWriter.m38846q(parcel, 5, this.f5391f, true);
        }
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
