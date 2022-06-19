package com.google.android.gms.auth.api.accounttransfer;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.internal.auth.zzaz;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import p1727n3.p1788g.C26177c;
import p193e.p1432d.p1439c.p1440a.C22128a;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/accounttransfer/zzt.class */
public class zzt extends zzaz {
    public static final Parcelable.Creator<zzt> CREATOR = new zzu();

    /* renamed from: h */
    public static final HashMap<String, FastJsonResponse.Field<?, ?>> f5392h;
    @SafeParcelable.Indicator

    /* renamed from: a */
    public final Set<Integer> f5393a;
    @SafeParcelable.VersionField

    /* renamed from: b */
    public final int f5394b;
    @SafeParcelable.Field

    /* renamed from: c */
    public String f5395c;
    @SafeParcelable.Field

    /* renamed from: d */
    public int f5396d;
    @SafeParcelable.Field

    /* renamed from: e */
    public byte[] f5397e;
    @SafeParcelable.Field

    /* renamed from: f */
    public PendingIntent f5398f;
    @SafeParcelable.Field

    /* renamed from: g */
    public DeviceMetaData f5399g;

    static {
        HashMap<String, FastJsonResponse.Field<?, ?>> hashMap = new HashMap<>();
        f5392h = hashMap;
        hashMap.put("accountType", FastJsonResponse.Field.m38815p2("accountType", 2));
        hashMap.put(UpdateKey.STATUS, new FastJsonResponse.Field<>(0, false, 0, false, UpdateKey.STATUS, 3, null, null));
        hashMap.put("transferBytes", new FastJsonResponse.Field<>(8, false, 8, false, "transferBytes", 4, null, null));
    }

    public zzt() {
        this.f5393a = new C26177c(3);
        this.f5394b = 1;
    }

    @SafeParcelable.Constructor
    public zzt(@SafeParcelable.Indicator Set<Integer> set, @SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) int i2, @SafeParcelable.Param(id = 4) byte[] bArr, @SafeParcelable.Param(id = 5) PendingIntent pendingIntent, @SafeParcelable.Param(id = 6) DeviceMetaData deviceMetaData) {
        this.f5393a = set;
        this.f5394b = i;
        this.f5395c = str;
        this.f5396d = i2;
        this.f5397e = bArr;
        this.f5398f = pendingIntent;
        this.f5399g = deviceMetaData;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public /* synthetic */ Map getFieldMappings() {
        return f5392h;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public Object getFieldValue(FastJsonResponse.Field field) {
        int i = field.f6091g;
        if (i != 1) {
            if (i == 2) {
                return this.f5395c;
            }
            if (i == 3) {
                return Integer.valueOf(this.f5396d);
            }
            if (i != 4) {
                throw new IllegalStateException(C22128a.m8690L1(37, "Unknown SafeParcelable id=", field.f6091g));
            }
            return this.f5397e;
        }
        return Integer.valueOf(this.f5394b);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public boolean isFieldSet(FastJsonResponse.Field field) {
        return this.f5393a.contains(Integer.valueOf(field.f6091g));
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public void setDecodedBytesInternal(FastJsonResponse.Field<?, ?> field, String str, byte[] bArr) {
        int i = field.f6091g;
        if (i == 4) {
            this.f5397e = bArr;
            this.f5393a.add(Integer.valueOf(i));
            return;
        }
        throw new IllegalArgumentException(C22128a.m8686M1(59, "Field with id=", i, " is not known to be an byte array."));
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public void setIntegerInternal(FastJsonResponse.Field<?, ?> field, String str, int i) {
        int i2 = field.f6091g;
        if (i2 == 3) {
            this.f5396d = i;
            this.f5393a.add(Integer.valueOf(i2));
            return;
        }
        throw new IllegalArgumentException(C22128a.m8686M1(52, "Field with id=", i2, " is not known to be an int."));
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public void setStringInternal(FastJsonResponse.Field<?, ?> field, String str, String str2) {
        int i = field.f6091g;
        if (i == 2) {
            this.f5395c = str2;
            this.f5393a.add(Integer.valueOf(i));
            return;
        }
        throw new IllegalArgumentException(String.format("Field with id=%d is not known to be a string.", Integer.valueOf(i)));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        Set<Integer> set = this.f5393a;
        if (set.contains(1)) {
            int i2 = this.f5394b;
            parcel.writeInt(262145);
            parcel.writeInt(i2);
        }
        if (set.contains(2)) {
            SafeParcelWriter.m38846q(parcel, 2, this.f5395c, true);
        }
        if (set.contains(3)) {
            int i3 = this.f5396d;
            parcel.writeInt(262147);
            parcel.writeInt(i3);
        }
        if (set.contains(4)) {
            SafeParcelWriter.m38859d(parcel, 4, this.f5397e, true);
        }
        if (set.contains(5)) {
            SafeParcelWriter.m38847p(parcel, 5, this.f5398f, i, true);
        }
        if (set.contains(6)) {
            SafeParcelWriter.m38847p(parcel, 6, this.f5399g, i, true);
        }
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
