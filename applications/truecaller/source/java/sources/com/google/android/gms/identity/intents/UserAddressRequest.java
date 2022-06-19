package com.google.android.gms.identity.intents;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.identity.intents.model.CountrySpecification;
import java.util.List;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/identity/intents/UserAddressRequest.class */
public final class UserAddressRequest extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<UserAddressRequest> CREATOR = new zzd();
    @SafeParcelable.Field

    /* renamed from: a */
    public List<CountrySpecification> f6204a;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/identity/intents/UserAddressRequest$Builder.class */
    public final class Builder {
    }

    public UserAddressRequest() {
    }

    @SafeParcelable.Constructor
    public UserAddressRequest(@SafeParcelable.Param(id = 2) List<CountrySpecification> list) {
        this.f6204a = list;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        SafeParcelWriter.m38842u(parcel, 2, this.f6204a, false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
