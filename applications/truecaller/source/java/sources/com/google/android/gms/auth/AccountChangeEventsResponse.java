package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;
import java.util.Objects;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/AccountChangeEventsResponse.class */
public class AccountChangeEventsResponse extends AbstractSafeParcelable {
    public static final Parcelable.Creator<AccountChangeEventsResponse> CREATOR = new zzc();
    @SafeParcelable.VersionField

    /* renamed from: a */
    public final int f5333a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final List<AccountChangeEvent> f5334b;

    @SafeParcelable.Constructor
    public AccountChangeEventsResponse(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) List<AccountChangeEvent> list) {
        this.f5333a = i;
        Objects.requireNonNull(list, "null reference");
        this.f5334b = list;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        int i2 = this.f5333a;
        parcel.writeInt(262145);
        parcel.writeInt(i2);
        SafeParcelWriter.m38842u(parcel, 2, this.f5334b, false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
