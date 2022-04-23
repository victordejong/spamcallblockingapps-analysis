package com.google.android.gms.internal.icing;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;
@ShowFirstParty
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzh.class */
public final class zzh extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzh> CREATOR = new zzj();
    @SafeParcelable.Field

    /* renamed from: f */
    private final zzk[] f8116f;
    @SafeParcelable.Field

    /* renamed from: g */
    private final String f8117g;
    @SafeParcelable.Field

    /* renamed from: h */
    private final boolean f8118h;
    @SafeParcelable.Field

    /* renamed from: i */
    private final Account f8119i;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzh(@SafeParcelable.Param(id = 1) zzk[] zzkVarArr, @SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) boolean z, @SafeParcelable.Param(id = 4) Account account) {
        this.f8116f = zzkVarArr;
        this.f8117g = str;
        this.f8118h = z;
        this.f8119i = account;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzh)) {
            return false;
        }
        zzh zzhVar = (zzh) obj;
        return Objects.m14537a(this.f8117g, zzhVar.f8117g) && Objects.m14537a(Boolean.valueOf(this.f8118h), Boolean.valueOf(zzhVar.f8118h)) && Objects.m14537a(this.f8119i, zzhVar.f8119i) && Arrays.equals(this.f8116f, zzhVar.f8116f);
    }

    public final int hashCode() {
        return Objects.m14536b(this.f8117g, Boolean.valueOf(this.f8118h), this.f8119i, Integer.valueOf(Arrays.hashCode(this.f8116f)));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m14463a(parcel);
        SafeParcelWriter.m14444t(parcel, 1, this.f8116f, i, false);
        SafeParcelWriter.m14447q(parcel, 2, this.f8117g, false);
        SafeParcelWriter.m14461c(parcel, 3, this.f8118h);
        SafeParcelWriter.m14448p(parcel, 4, this.f8119i, i, false);
        SafeParcelWriter.m14462b(parcel, a);
    }
}
