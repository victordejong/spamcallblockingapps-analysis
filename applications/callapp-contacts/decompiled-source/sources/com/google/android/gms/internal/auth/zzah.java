package com.google.android.gms.internal.auth;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/auth/zzah.class */
public final class zzah extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzah> CREATOR = new e();
    private final String accountType;
    private final PendingIntent zzbx;
    private final int zzv;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzah(int i, String str, PendingIntent pendingIntent) {
        this.zzv = 1;
        this.accountType = (String) o.a(str);
        this.zzbx = (PendingIntent) o.a(pendingIntent);
    }

    public zzah(String str, PendingIntent pendingIntent) {
        this(1, str, pendingIntent);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, this.zzv);
        a.a(parcel, 2, this.accountType, false);
        a.a(parcel, 3, this.zzbx, i, false);
        a.b(parcel, a2);
    }
}
