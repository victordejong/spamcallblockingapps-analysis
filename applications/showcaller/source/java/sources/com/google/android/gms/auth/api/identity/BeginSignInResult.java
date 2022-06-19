package com.google.android.gms.auth.api.identity;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/identity/BeginSignInResult.class */
public final class BeginSignInResult extends AbstractSafeParcelable {
    public static final Parcelable.Creator<BeginSignInResult> CREATOR = new C5889b();

    /* renamed from: d */
    private final PendingIntent f18933d;

    public BeginSignInResult(PendingIntent pendingIntent) {
        this.f18933d = (PendingIntent) C6155o.m17018j(pendingIntent);
    }

    /* renamed from: k0 */
    public final PendingIntent m17678k0() {
        return this.f18933d;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16931q(parcel, 1, m17678k0(), i, false);
        C6170a.m16946b(parcel, m16947a);
    }
}
