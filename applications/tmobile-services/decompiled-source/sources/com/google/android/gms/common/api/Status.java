package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.IntentSender;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.VisibleForTesting;
@KeepForSdk
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Status.class */
public final class Status extends AbstractSafeParcelable implements Result, ReflectedParcelable {
    @SafeParcelable.VersionField

    /* renamed from: f */
    private final int f7028f;
    @SafeParcelable.Field

    /* renamed from: g */
    private final int f7029g;
    @Nullable
    @SafeParcelable.Field

    /* renamed from: h */
    private final String f7030h;
    @Nullable
    @SafeParcelable.Field

    /* renamed from: i */
    private final PendingIntent f7031i;
    @VisibleForTesting
    @KeepForSdk

    /* renamed from: j */
    public static final Status f7023j = new Status(0);
    @KeepForSdk

    /* renamed from: k */
    public static final Status f7024k = new Status(14);
    @KeepForSdk

    /* renamed from: l */
    public static final Status f7025l = new Status(8);
    @KeepForSdk

    /* renamed from: m */
    public static final Status f7026m = new Status(15);
    @KeepForSdk

    /* renamed from: n */
    public static final Status f7027n = new Status(16);
    public static final Parcelable.Creator<Status> CREATOR = new zzb();

    static {
        new Status(17);
        new Status(18);
    }

    @KeepForSdk
    public Status(int i) {
        this(i, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    @KeepForSdk
    public Status(@SafeParcelable.Param(id = 1000) int i, @SafeParcelable.Param(id = 1) int i2, @Nullable @SafeParcelable.Param(id = 2) String str, @Nullable @SafeParcelable.Param(id = 3) PendingIntent pendingIntent) {
        this.f7028f = i;
        this.f7029g = i2;
        this.f7030h = str;
        this.f7031i = pendingIntent;
    }

    @KeepForSdk
    public Status(int i, @Nullable String str) {
        this(1, i, str, null);
    }

    @KeepForSdk
    public Status(int i, @Nullable String str, @Nullable PendingIntent pendingIntent) {
        this(1, i, str, pendingIntent);
    }

    /* renamed from: B */
    public final int m15000B() {
        return this.f7029g;
    }

    @Nullable
    /* renamed from: I */
    public final String m14999I() {
        return this.f7030h;
    }

    @VisibleForTesting
    /* renamed from: W */
    public final boolean m14998W() {
        return this.f7031i != null;
    }

    /* renamed from: Y */
    public final boolean m14997Y() {
        return this.f7029g == 16;
    }

    /* renamed from: d0 */
    public final boolean m14996d0() {
        return this.f7029g <= 0;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Status)) {
            return false;
        }
        Status status = (Status) obj;
        return this.f7028f == status.f7028f && this.f7029g == status.f7029g && Objects.m14537a(this.f7030h, status.f7030h) && Objects.m14537a(this.f7031i, status.f7031i);
    }

    public final int hashCode() {
        return Objects.m14536b(Integer.valueOf(this.f7028f), Integer.valueOf(this.f7029g), this.f7030h, this.f7031i);
    }

    /* renamed from: j0 */
    public final void m14995j0(Activity activity, int i) throws IntentSender.SendIntentException {
        if (m14998W()) {
            activity.startIntentSenderForResult(this.f7031i.getIntentSender(), i, null, 0, 0, 0);
        }
    }

    @Override // com.google.android.gms.common.api.Result
    @KeepForSdk
    /* renamed from: k */
    public final Status mo10851k() {
        return this;
    }

    public final String toString() {
        Objects.ToStringHelper c = Objects.m14535c(this);
        c.m14534a("statusCode", m14994u0());
        c.m14534a("resolution", this.f7031i);
        return c.toString();
    }

    /* renamed from: u0 */
    public final String m14994u0() {
        String str = this.f7030h;
        return str != null ? str : CommonStatusCodes.m15014a(this.f7029g);
    }

    @Override // android.os.Parcelable
    @KeepForSdk
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m14463a(parcel);
        SafeParcelWriter.m14453k(parcel, 1, m15000B());
        SafeParcelWriter.m14447q(parcel, 2, m14999I(), false);
        SafeParcelWriter.m14448p(parcel, 3, this.f7031i, i, false);
        SafeParcelWriter.m14453k(parcel, 1000, this.f7028f);
        SafeParcelWriter.m14462b(parcel, a);
    }
}
