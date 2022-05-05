package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzar.class */
public final class zzar extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzar> CREATOR = new zzaq();
    @SafeParcelable.Field

    /* renamed from: f */
    public final String f8882f;
    @SafeParcelable.Field

    /* renamed from: g */
    public final zzam f8883g;
    @SafeParcelable.Field

    /* renamed from: h */
    public final String f8884h;
    @SafeParcelable.Field

    /* renamed from: i */
    public final long f8885i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzar(zzar zzarVar, long j) {
        Preconditions.m14523k(zzarVar);
        this.f8882f = zzarVar.f8882f;
        this.f8883g = zzarVar.f8883g;
        this.f8884h = zzarVar.f8884h;
        this.f8885i = j;
    }

    @SafeParcelable.Constructor
    public zzar(@SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) zzam zzamVar, @SafeParcelable.Param(id = 4) String str2, @SafeParcelable.Param(id = 5) long j) {
        this.f8882f = str;
        this.f8883g = zzamVar;
        this.f8884h = str2;
        this.f8885i = j;
    }

    public final String toString() {
        String str = this.f8884h;
        String str2 = this.f8882f;
        String valueOf = String.valueOf(this.f8883g);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 21 + String.valueOf(str2).length() + String.valueOf(valueOf).length());
        sb.append("origin=");
        sb.append(str);
        sb.append(",name=");
        sb.append(str2);
        sb.append(",params=");
        sb.append(valueOf);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m14463a(parcel);
        SafeParcelWriter.m14447q(parcel, 2, this.f8882f, false);
        SafeParcelWriter.m14448p(parcel, 3, this.f8883g, i, false);
        SafeParcelWriter.m14447q(parcel, 4, this.f8884h, false);
        SafeParcelWriter.m14451m(parcel, 5, this.f8885i);
        SafeParcelWriter.m14462b(parcel, a);
    }
}
