package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.IntentSender;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.VisibleForTesting;
import com.huawei.hms.adapter.internal.CommonCode;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import java.util.Arrays;
@KeepForSdk
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/Status.class */
public final class Status extends AbstractSafeParcelable implements Result, ReflectedParcelable {
    @SafeParcelable.VersionField

    /* renamed from: a */
    public final int f5727a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final int f5728b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final String f5729c;
    @SafeParcelable.Field

    /* renamed from: d */
    public final PendingIntent f5730d;
    @SafeParcelable.Field

    /* renamed from: e */
    public final ConnectionResult f5731e;
    @ShowFirstParty
    @VisibleForTesting
    @KeepForSdk

    /* renamed from: f */
    public static final Status f5722f = new Status(0, null);
    @ShowFirstParty
    @KeepForSdk

    /* renamed from: g */
    public static final Status f5723g = new Status(14, null);
    @ShowFirstParty
    @KeepForSdk

    /* renamed from: h */
    public static final Status f5724h = new Status(8, null);
    @ShowFirstParty
    @KeepForSdk

    /* renamed from: i */
    public static final Status f5725i = new Status(15, null);
    @ShowFirstParty
    @KeepForSdk

    /* renamed from: j */
    public static final Status f5726j = new Status(16, null);
    public static final Parcelable.Creator<Status> CREATOR = new zzb();

    static {
        new Status(17, null);
        new Status(18, null);
    }

    @SafeParcelable.Constructor
    @KeepForSdk
    public Status(@SafeParcelable.Param(id = 1000) int i, @SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) PendingIntent pendingIntent, @SafeParcelable.Param(id = 4) ConnectionResult connectionResult) {
        this.f5727a = i;
        this.f5728b = i2;
        this.f5729c = str;
        this.f5730d = pendingIntent;
        this.f5731e = connectionResult;
    }

    @KeepForSdk
    public Status(int i, String str) {
        this.f5727a = 1;
        this.f5728b = i;
        this.f5729c = str;
        this.f5730d = null;
        this.f5731e = null;
    }

    @KeepForSdk
    public Status(int i, String str, PendingIntent pendingIntent) {
        this.f5727a = 1;
        this.f5728b = i;
        this.f5729c = str;
        this.f5730d = pendingIntent;
        this.f5731e = null;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Status)) {
            return false;
        }
        Status status = (Status) obj;
        return this.f5727a == status.f5727a && this.f5728b == status.f5728b && Objects.m38910a(this.f5729c, status.f5729c) && Objects.m38910a(this.f5730d, status.f5730d) && Objects.m38910a(this.f5731e, status.f5731e);
    }

    @Override // com.google.android.gms.common.api.Result
    @KeepForSdk
    public Status getStatus() {
        return this;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f5727a), Integer.valueOf(this.f5728b), this.f5729c, this.f5730d, this.f5731e});
    }

    @VisibleForTesting
    /* renamed from: o2 */
    public boolean m39044o2() {
        return this.f5730d != null;
    }

    /* renamed from: p2 */
    public boolean m39043p2() {
        return this.f5728b == 16;
    }

    /* renamed from: q2 */
    public boolean m39042q2() {
        return this.f5728b <= 0;
    }

    /* renamed from: r2 */
    public void m39041r2(Activity activity, int i) throws IntentSender.SendIntentException {
        if (!m39044o2()) {
            return;
        }
        PendingIntent pendingIntent = this.f5730d;
        java.util.Objects.requireNonNull(pendingIntent, "null reference");
        activity.startIntentSenderForResult(pendingIntent.getIntentSender(), i, null, 0, 0, 0);
    }

    public String toString() {
        Objects.ToStringHelper toStringHelper = new Objects.ToStringHelper(this);
        String str = this.f5729c;
        if (str == null) {
            str = CommonStatusCodes.getStatusCodeString(this.f5728b);
        }
        toStringHelper.m38909a(HiAnalyticsConstant.HaKey.BI_KEY_RESULT, str);
        toStringHelper.m38909a(CommonCode.MapKey.HAS_RESOLUTION, this.f5730d);
        return toStringHelper.toString();
    }

    @Override // android.os.Parcelable
    @KeepForSdk
    public void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        int i2 = this.f5728b;
        parcel.writeInt(262145);
        parcel.writeInt(i2);
        SafeParcelWriter.m38846q(parcel, 2, this.f5729c, false);
        SafeParcelWriter.m38847p(parcel, 3, this.f5730d, i, false);
        SafeParcelWriter.m38847p(parcel, 4, this.f5731e, i, false);
        int i3 = this.f5727a;
        parcel.writeInt(263144);
        parcel.writeInt(i3);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
