package com.google.android.gms.auth.api.identity;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/identity/SaveAccountLinkingTokenResult.class */
public class SaveAccountLinkingTokenResult extends AbstractSafeParcelable {
    @RecentlyNonNull
    public static final Parcelable.Creator<SaveAccountLinkingTokenResult> CREATOR = new zbh();
    @SafeParcelable.Field

    /* renamed from: a */
    public final PendingIntent f5474a;

    @SafeParcelable.Constructor
    public SaveAccountLinkingTokenResult(@SafeParcelable.Param(id = 1) PendingIntent pendingIntent) {
        this.f5474a = pendingIntent;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof SaveAccountLinkingTokenResult)) {
            return false;
        }
        return Objects.m38910a(this.f5474a, ((SaveAccountLinkingTokenResult) obj).f5474a);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f5474a});
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        SafeParcelWriter.m38847p(parcel, 1, this.f5474a, i, false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
