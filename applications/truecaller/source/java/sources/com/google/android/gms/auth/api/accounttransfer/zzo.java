package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.internal.auth.zzaz;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import p1727n3.p1788g.C26174a;
import p193e.p1432d.p1439c.p1440a.C22128a;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/accounttransfer/zzo.class */
public class zzo extends zzaz {
    public static final Parcelable.Creator<zzo> CREATOR = new zzp();

    /* renamed from: g */
    public static final C26174a<String, FastJsonResponse.Field<?, ?>> f5378g;
    @SafeParcelable.VersionField

    /* renamed from: a */
    public final int f5379a;
    @SafeParcelable.Field

    /* renamed from: b */
    public List<String> f5380b;
    @SafeParcelable.Field

    /* renamed from: c */
    public List<String> f5381c;
    @SafeParcelable.Field

    /* renamed from: d */
    public List<String> f5382d;
    @SafeParcelable.Field

    /* renamed from: e */
    public List<String> f5383e;
    @SafeParcelable.Field

    /* renamed from: f */
    public List<String> f5384f;

    static {
        C26174a<String, FastJsonResponse.Field<?, ?>> c26174a = new C26174a<>();
        f5378g = c26174a;
        c26174a.put("registered", FastJsonResponse.Field.m38814q2("registered", 2));
        c26174a.put("in_progress", FastJsonResponse.Field.m38814q2("in_progress", 3));
        c26174a.put(AnalyticsConstants.SUCCESS, FastJsonResponse.Field.m38814q2(AnalyticsConstants.SUCCESS, 4));
        c26174a.put("failed", FastJsonResponse.Field.m38814q2("failed", 5));
        c26174a.put("escrowed", FastJsonResponse.Field.m38814q2("escrowed", 6));
    }

    public zzo() {
        this.f5379a = 1;
    }

    @SafeParcelable.Constructor
    public zzo(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) List<String> list, @SafeParcelable.Param(id = 3) List<String> list2, @SafeParcelable.Param(id = 4) List<String> list3, @SafeParcelable.Param(id = 5) List<String> list4, @SafeParcelable.Param(id = 6) List<String> list5) {
        this.f5379a = i;
        this.f5380b = list;
        this.f5381c = list2;
        this.f5382d = list3;
        this.f5383e = list4;
        this.f5384f = list5;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public Map<String, FastJsonResponse.Field<?, ?>> getFieldMappings() {
        return f5378g;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public Object getFieldValue(FastJsonResponse.Field field) {
        switch (field.f6091g) {
            case 1:
                return Integer.valueOf(this.f5379a);
            case 2:
                return this.f5380b;
            case 3:
                return this.f5381c;
            case 4:
                return this.f5382d;
            case 5:
                return this.f5383e;
            case 6:
                return this.f5384f;
            default:
                throw new IllegalStateException(C22128a.m8690L1(37, "Unknown SafeParcelable id=", field.f6091g));
        }
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public boolean isFieldSet(FastJsonResponse.Field field) {
        return true;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public void setStringsInternal(FastJsonResponse.Field<?, ?> field, String str, ArrayList<String> arrayList) {
        int i = field.f6091g;
        if (i == 2) {
            this.f5380b = arrayList;
        } else if (i == 3) {
            this.f5381c = arrayList;
        } else if (i == 4) {
            this.f5382d = arrayList;
        } else if (i == 5) {
            this.f5383e = arrayList;
        } else if (i != 6) {
            throw new IllegalArgumentException(String.format("Field with id=%d is not known to be a string list.", Integer.valueOf(i)));
        } else {
            this.f5384f = arrayList;
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        int i2 = this.f5379a;
        parcel.writeInt(262145);
        parcel.writeInt(i2);
        SafeParcelWriter.m38844s(parcel, 2, this.f5380b, false);
        SafeParcelWriter.m38844s(parcel, 3, this.f5381c, false);
        SafeParcelWriter.m38844s(parcel, 4, this.f5382d, false);
        SafeParcelWriter.m38844s(parcel, 5, this.f5383e, false);
        SafeParcelWriter.m38844s(parcel, 6, this.f5384f, false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
