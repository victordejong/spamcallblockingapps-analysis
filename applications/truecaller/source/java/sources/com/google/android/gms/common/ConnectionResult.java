package com.google.android.gms.common;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.IntentSender;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.huawei.hms.adapter.internal.CommonCode;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import java.util.Arrays;
import p193e.p1432d.p1439c.p1440a.C22128a;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/ConnectionResult.class */
public final class ConnectionResult extends AbstractSafeParcelable {
    @SafeParcelable.VersionField

    /* renamed from: a */
    public final int f5662a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final int f5663b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final PendingIntent f5664c;
    @SafeParcelable.Field

    /* renamed from: d */
    public final String f5665d;
    @ShowFirstParty
    @KeepForSdk

    /* renamed from: e */
    public static final ConnectionResult f5661e = new ConnectionResult(0);
    public static final Parcelable.Creator<ConnectionResult> CREATOR = new zzb();

    public ConnectionResult(int i) {
        this.f5662a = 1;
        this.f5663b = i;
        this.f5664c = null;
        this.f5665d = null;
    }

    @SafeParcelable.Constructor
    public ConnectionResult(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) int i2, @SafeParcelable.Param(id = 3) PendingIntent pendingIntent, @SafeParcelable.Param(id = 4) String str) {
        this.f5662a = i;
        this.f5663b = i2;
        this.f5664c = pendingIntent;
        this.f5665d = str;
    }

    public ConnectionResult(int i, PendingIntent pendingIntent) {
        this.f5662a = 1;
        this.f5663b = i;
        this.f5664c = pendingIntent;
        this.f5665d = null;
    }

    public ConnectionResult(int i, PendingIntent pendingIntent, String str) {
        this.f5662a = 1;
        this.f5663b = i;
        this.f5664c = null;
        this.f5665d = str;
    }

    /* renamed from: r2 */
    public static String m39074r2(int i) {
        if (i != 99) {
            if (i == 1500) {
                return "DRIVE_EXTERNAL_STORAGE_REQUIRED";
            }
            switch (i) {
                case -1:
                    return "UNKNOWN";
                case 0:
                    return "SUCCESS";
                case 1:
                    return "SERVICE_MISSING";
                case 2:
                    return "SERVICE_VERSION_UPDATE_REQUIRED";
                case 3:
                    return "SERVICE_DISABLED";
                case 4:
                    return "SIGN_IN_REQUIRED";
                case 5:
                    return "INVALID_ACCOUNT";
                case 6:
                    return "RESOLUTION_REQUIRED";
                case 7:
                    return "NETWORK_ERROR";
                case 8:
                    return "INTERNAL_ERROR";
                case 9:
                    return "SERVICE_INVALID";
                case 10:
                    return "DEVELOPER_ERROR";
                case 11:
                    return "LICENSE_CHECK_FAILED";
                default:
                    switch (i) {
                        case 13:
                            return "CANCELED";
                        case 14:
                            return "TIMEOUT";
                        case 15:
                            return "INTERRUPTED";
                        case 16:
                            return "API_UNAVAILABLE";
                        case 17:
                            return "SIGN_IN_FAILED";
                        case 18:
                            return "SERVICE_UPDATING";
                        case 19:
                            return "SERVICE_MISSING_PERMISSION";
                        case 20:
                            return "RESTRICTED_PROFILE";
                        case 21:
                            return "API_VERSION_UPDATE_REQUIRED";
                        case 22:
                            return "RESOLUTION_ACTIVITY_NOT_FOUND";
                        case 23:
                            return "API_DISABLED";
                        case 24:
                            return "API_DISABLED_FOR_CONNECTION";
                        default:
                            return C22128a.m8686M1(31, "UNKNOWN_ERROR_CODE(", i, ")");
                    }
            }
        }
        return "UNFINISHED";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ConnectionResult)) {
            return false;
        }
        ConnectionResult connectionResult = (ConnectionResult) obj;
        return this.f5663b == connectionResult.f5663b && Objects.m38910a(this.f5664c, connectionResult.f5664c) && Objects.m38910a(this.f5665d, connectionResult.f5665d);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f5663b), this.f5664c, this.f5665d});
    }

    /* renamed from: o2 */
    public boolean m39077o2() {
        return (this.f5663b == 0 || this.f5664c == null) ? false : true;
    }

    /* renamed from: p2 */
    public boolean m39076p2() {
        return this.f5663b == 0;
    }

    /* renamed from: q2 */
    public void m39075q2(Activity activity, int i) throws IntentSender.SendIntentException {
        if (!m39077o2()) {
            return;
        }
        PendingIntent pendingIntent = this.f5664c;
        java.util.Objects.requireNonNull(pendingIntent, "null reference");
        activity.startIntentSenderForResult(pendingIntent.getIntentSender(), i, null, 0, 0, 0);
    }

    public String toString() {
        Objects.ToStringHelper toStringHelper = new Objects.ToStringHelper(this);
        toStringHelper.m38909a(HiAnalyticsConstant.HaKey.BI_KEY_RESULT, m39074r2(this.f5663b));
        toStringHelper.m38909a(CommonCode.MapKey.HAS_RESOLUTION, this.f5664c);
        toStringHelper.m38909a("message", this.f5665d);
        return toStringHelper.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        int i2 = this.f5662a;
        parcel.writeInt(262145);
        parcel.writeInt(i2);
        int i3 = this.f5663b;
        parcel.writeInt(262146);
        parcel.writeInt(i3);
        SafeParcelWriter.m38847p(parcel, 3, this.f5664c, i, false);
        SafeParcelWriter.m38846q(parcel, 4, this.f5665d, false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
