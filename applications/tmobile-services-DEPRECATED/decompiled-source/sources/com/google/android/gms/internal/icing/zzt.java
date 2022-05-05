package com.google.android.gms.internal.icing;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;
import javax.annotation.Nullable;
@ShowFirstParty
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzt.class */
public final class zzt extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzt> CREATOR = new zzv();
    @SafeParcelable.Field

    /* renamed from: f */
    private final String f8149f;
    @SafeParcelable.Field

    /* renamed from: g */
    private final String f8150g;
    @SafeParcelable.Field

    /* renamed from: h */
    private final boolean f8151h;
    @SafeParcelable.Field

    /* renamed from: i */
    private final int f8152i;
    @SafeParcelable.Field

    /* renamed from: j */
    private final boolean f8153j;
    @SafeParcelable.Field

    /* renamed from: k */
    private final String f8154k;
    @Nullable
    @SafeParcelable.Field

    /* renamed from: l */
    private final zzm[] f8155l;
    @SafeParcelable.Field

    /* renamed from: m */
    private final String f8156m;
    @SafeParcelable.Field

    /* renamed from: n */
    private final zzu f8157n;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzt(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) String str2, @SafeParcelable.Param(id = 3) boolean z, @SafeParcelable.Param(id = 4) int i, @SafeParcelable.Param(id = 5) boolean z2, @SafeParcelable.Param(id = 6) String str3, @SafeParcelable.Param(id = 7) zzm[] zzmVarArr, @SafeParcelable.Param(id = 11) String str4, @SafeParcelable.Param(id = 12) zzu zzuVar) {
        this.f8149f = str;
        this.f8150g = str2;
        this.f8151h = z;
        this.f8152i = i;
        this.f8153j = z2;
        this.f8154k = str3;
        this.f8155l = zzmVarArr;
        this.f8156m = str4;
        this.f8157n = zzuVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzt)) {
            return false;
        }
        zzt zztVar = (zzt) obj;
        return this.f8151h == zztVar.f8151h && this.f8152i == zztVar.f8152i && this.f8153j == zztVar.f8153j && Objects.m14537a(this.f8149f, zztVar.f8149f) && Objects.m14537a(this.f8150g, zztVar.f8150g) && Objects.m14537a(this.f8154k, zztVar.f8154k) && Objects.m14537a(this.f8156m, zztVar.f8156m) && Objects.m14537a(this.f8157n, zztVar.f8157n) && Arrays.equals(this.f8155l, zztVar.f8155l);
    }

    public final int hashCode() {
        return Objects.m14536b(this.f8149f, this.f8150g, Boolean.valueOf(this.f8151h), Integer.valueOf(this.f8152i), Boolean.valueOf(this.f8153j), this.f8154k, Integer.valueOf(Arrays.hashCode(this.f8155l)), this.f8156m, this.f8157n);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m14463a(parcel);
        SafeParcelWriter.m14447q(parcel, 1, this.f8149f, false);
        SafeParcelWriter.m14447q(parcel, 2, this.f8150g, false);
        SafeParcelWriter.m14461c(parcel, 3, this.f8151h);
        SafeParcelWriter.m14453k(parcel, 4, this.f8152i);
        SafeParcelWriter.m14461c(parcel, 5, this.f8153j);
        SafeParcelWriter.m14447q(parcel, 6, this.f8154k, false);
        SafeParcelWriter.m14444t(parcel, 7, this.f8155l, i, false);
        SafeParcelWriter.m14447q(parcel, 11, this.f8156m, false);
        SafeParcelWriter.m14448p(parcel, 12, this.f8157n, i, false);
        SafeParcelWriter.m14462b(parcel, a);
    }
}
