package com.google.android.gms.auth.api.identity;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;
import java.util.Objects;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/identity/SavePasswordResult.class */
public class SavePasswordResult extends AbstractSafeParcelable {
    @RecentlyNonNull
    public static final Parcelable.Creator<SavePasswordResult> CREATOR = new zbj();
    @SafeParcelable.Field

    /* renamed from: a */
    public final PendingIntent f5479a;

    @SafeParcelable.Constructor
    public SavePasswordResult(@RecentlyNonNull @SafeParcelable.Param(id = 1) PendingIntent pendingIntent) {
        Objects.requireNonNull(pendingIntent, "null reference");
        this.f5479a = pendingIntent;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof SavePasswordResult)) {
            return false;
        }
        return com.google.android.gms.common.internal.Objects.m38910a(this.f5479a, ((SavePasswordResult) obj).f5479a);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f5479a});
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        SafeParcelWriter.m38847p(parcel, 1, this.f5479a, i, false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
