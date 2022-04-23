package com.google.android.gms.internal.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/auth/zzab.class */
public final class zzab extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzab> CREATOR = new b();
    private final String accountType;
    private final int zzbw;
    private final int zzv;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzab(int i, String str, int i2) {
        this.zzv = 1;
        this.accountType = (String) o.a(str);
        this.zzbw = i2;
    }

    public zzab(String str, int i) {
        this(1, str, i);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, this.zzv);
        a.a(parcel, 2, this.accountType, false);
        a.a(parcel, 3, this.zzbw);
        a.b(parcel, a2);
    }
}
