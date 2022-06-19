package com.google.android.gms.identity.intents.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/identity/intents/model/CountrySpecification.class */
public class CountrySpecification extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<CountrySpecification> CREATOR = new zza();
    @SafeParcelable.Field

    /* renamed from: a */
    public String f6205a;

    @SafeParcelable.Constructor
    public CountrySpecification(@SafeParcelable.Param(id = 2) String str) {
        this.f6205a = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        SafeParcelWriter.m38846q(parcel, 2, this.f6205a, false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
