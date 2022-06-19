package com.google.android.gms.auth.api.identity;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Objects;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/identity/BeginSignInResult.class */
public final class BeginSignInResult extends AbstractSafeParcelable {
    @RecentlyNonNull
    public static final Parcelable.Creator<BeginSignInResult> CREATOR = new zbb();
    @SafeParcelable.Field

    /* renamed from: a */
    public final PendingIntent f5455a;

    @SafeParcelable.Constructor
    public BeginSignInResult(@RecentlyNonNull @SafeParcelable.Param(id = 1) PendingIntent pendingIntent) {
        Objects.requireNonNull(pendingIntent, "null reference");
        this.f5455a = pendingIntent;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        SafeParcelWriter.m38847p(parcel, 1, this.f5455a, i, false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
