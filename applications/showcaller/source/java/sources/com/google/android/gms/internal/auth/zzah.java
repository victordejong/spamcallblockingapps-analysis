package com.google.android.gms.internal.auth;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth/zzah.class */
public final class zzah extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzah> CREATOR = new C7260e();

    /* renamed from: d */
    private final int f34254d = 1;

    /* renamed from: e */
    private final String f34255e;

    /* renamed from: f */
    private final PendingIntent f34256f;

    public zzah(int i, String str, PendingIntent pendingIntent) {
        this.f34255e = (String) C6155o.m17018j(str);
        this.f34256f = (PendingIntent) C6155o.m17018j(pendingIntent);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16937k(parcel, 1, this.f34254d);
        C6170a.m16930r(parcel, 2, this.f34255e, false);
        C6170a.m16931q(parcel, 3, this.f34256f, i, false);
        C6170a.m16946b(parcel, m16947a);
    }
}
