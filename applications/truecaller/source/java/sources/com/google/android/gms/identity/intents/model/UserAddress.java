package com.google.android.gms.identity.intents.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/identity/intents/model/UserAddress.class */
public final class UserAddress extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<UserAddress> CREATOR = new zzb();
    @SafeParcelable.Field

    /* renamed from: a */
    public String f6206a;
    @SafeParcelable.Field

    /* renamed from: b */
    public String f6207b;
    @SafeParcelable.Field

    /* renamed from: c */
    public String f6208c;
    @SafeParcelable.Field

    /* renamed from: d */
    public String f6209d;
    @SafeParcelable.Field

    /* renamed from: e */
    public String f6210e;
    @SafeParcelable.Field

    /* renamed from: f */
    public String f6211f;
    @SafeParcelable.Field

    /* renamed from: g */
    public String f6212g;
    @SafeParcelable.Field

    /* renamed from: h */
    public String f6213h;
    @SafeParcelable.Field

    /* renamed from: i */
    public String f6214i;
    @SafeParcelable.Field

    /* renamed from: j */
    public String f6215j;
    @SafeParcelable.Field

    /* renamed from: k */
    public String f6216k;
    @SafeParcelable.Field

    /* renamed from: l */
    public String f6217l;
    @SafeParcelable.Field

    /* renamed from: m */
    public boolean f6218m;
    @SafeParcelable.Field

    /* renamed from: n */
    public String f6219n;
    @SafeParcelable.Field

    /* renamed from: o */
    public String f6220o;

    public UserAddress() {
    }

    @SafeParcelable.Constructor
    public UserAddress(@SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) String str2, @SafeParcelable.Param(id = 4) String str3, @SafeParcelable.Param(id = 5) String str4, @SafeParcelable.Param(id = 6) String str5, @SafeParcelable.Param(id = 7) String str6, @SafeParcelable.Param(id = 8) String str7, @SafeParcelable.Param(id = 9) String str8, @SafeParcelable.Param(id = 10) String str9, @SafeParcelable.Param(id = 11) String str10, @SafeParcelable.Param(id = 12) String str11, @SafeParcelable.Param(id = 13) String str12, @SafeParcelable.Param(id = 14) boolean z, @SafeParcelable.Param(id = 15) String str13, @SafeParcelable.Param(id = 16) String str14) {
        this.f6206a = str;
        this.f6207b = str2;
        this.f6208c = str3;
        this.f6209d = str4;
        this.f6210e = str5;
        this.f6211f = str6;
        this.f6212g = str7;
        this.f6213h = str8;
        this.f6214i = str9;
        this.f6215j = str10;
        this.f6216k = str11;
        this.f6217l = str12;
        this.f6218m = z;
        this.f6219n = str13;
        this.f6220o = str14;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        SafeParcelWriter.m38846q(parcel, 2, this.f6206a, false);
        SafeParcelWriter.m38846q(parcel, 3, this.f6207b, false);
        SafeParcelWriter.m38846q(parcel, 4, this.f6208c, false);
        SafeParcelWriter.m38846q(parcel, 5, this.f6209d, false);
        SafeParcelWriter.m38846q(parcel, 6, this.f6210e, false);
        SafeParcelWriter.m38846q(parcel, 7, this.f6211f, false);
        SafeParcelWriter.m38846q(parcel, 8, this.f6212g, false);
        SafeParcelWriter.m38846q(parcel, 9, this.f6213h, false);
        SafeParcelWriter.m38846q(parcel, 10, this.f6214i, false);
        SafeParcelWriter.m38846q(parcel, 11, this.f6215j, false);
        SafeParcelWriter.m38846q(parcel, 12, this.f6216k, false);
        SafeParcelWriter.m38846q(parcel, 13, this.f6217l, false);
        boolean z = this.f6218m;
        parcel.writeInt(262158);
        parcel.writeInt(z ? 1 : 0);
        SafeParcelWriter.m38846q(parcel, 15, this.f6219n, false);
        SafeParcelWriter.m38846q(parcel, 16, this.f6220o, false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
