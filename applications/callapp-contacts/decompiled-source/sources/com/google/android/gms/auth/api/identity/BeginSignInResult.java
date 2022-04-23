package com.google.android.gms.auth.api.identity;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/identity/BeginSignInResult.class */
public final class BeginSignInResult extends AbstractSafeParcelable {
    public static final Parcelable.Creator<BeginSignInResult> CREATOR = new b();
    private final PendingIntent zzbc;

    public BeginSignInResult(PendingIntent pendingIntent) {
        this.zzbc = (PendingIntent) o.a(pendingIntent);
    }

    public final PendingIntent getPendingIntent() {
        return this.zzbc;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, getPendingIntent(), i, false);
        a.b(parcel, a2);
    }
}
