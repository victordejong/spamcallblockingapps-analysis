package com.google.android.gms.common;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/ConnectionResult.class */
public final class ConnectionResult extends AbstractSafeParcelable {
    @SafeParcelable.VersionField

    /* renamed from: f */
    private final int f6966f;
    @SafeParcelable.Field

    /* renamed from: g */
    private final int f6967g;
    @SafeParcelable.Field

    /* renamed from: h */
    private final PendingIntent f6968h;
    @SafeParcelable.Field

    /* renamed from: i */
    private final String f6969i;
    @KeepForSdk

    /* renamed from: j */
    public static final ConnectionResult f6965j = new ConnectionResult(0);
    public static final Parcelable.Creator<ConnectionResult> CREATOR = new zza();

    public ConnectionResult(int i) {
        this(i, null, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public ConnectionResult(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) int i2, @SafeParcelable.Param(id = 3) PendingIntent pendingIntent, @SafeParcelable.Param(id = 4) String str) {
        this.f6966f = i;
        this.f6967g = i2;
        this.f6968h = pendingIntent;
        this.f6969i = str;
    }

    public ConnectionResult(int i, PendingIntent pendingIntent) {
        this(i, pendingIntent, null);
    }

    public ConnectionResult(int i, PendingIntent pendingIntent, String str) {
        this(1, i, pendingIntent, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j0 */
    public static String m15089j0(int i) {
        if (i == 99) {
            return "UNFINISHED";
        }
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
                    default:
                        StringBuilder sb = new StringBuilder(31);
                        sb.append("UNKNOWN_ERROR_CODE(");
                        sb.append(i);
                        sb.append(")");
                        return sb.toString();
                }
        }
    }

    /* renamed from: B */
    public final int m15094B() {
        return this.f6967g;
    }

    @Nullable
    /* renamed from: I */
    public final String m15093I() {
        return this.f6969i;
    }

    @Nullable
    /* renamed from: W */
    public final PendingIntent m15092W() {
        return this.f6968h;
    }

    /* renamed from: Y */
    public final boolean m15091Y() {
        return (this.f6967g == 0 || this.f6968h == null) ? false : true;
    }

    /* renamed from: d0 */
    public final boolean m15090d0() {
        return this.f6967g == 0;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ConnectionResult)) {
            return false;
        }
        ConnectionResult connectionResult = (ConnectionResult) obj;
        return this.f6967g == connectionResult.f6967g && Objects.m14537a(this.f6968h, connectionResult.f6968h) && Objects.m14537a(this.f6969i, connectionResult.f6969i);
    }

    public final int hashCode() {
        return Objects.m14536b(Integer.valueOf(this.f6967g), this.f6968h, this.f6969i);
    }

    public final String toString() {
        Objects.ToStringHelper c = Objects.m14535c(this);
        c.m14534a("statusCode", m15089j0(this.f6967g));
        c.m14534a("resolution", this.f6968h);
        c.m14534a("message", this.f6969i);
        return c.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m14463a(parcel);
        SafeParcelWriter.m14453k(parcel, 1, this.f6966f);
        SafeParcelWriter.m14453k(parcel, 2, m15094B());
        SafeParcelWriter.m14448p(parcel, 3, m15092W(), i, false);
        SafeParcelWriter.m14447q(parcel, 4, m15093I(), false);
        SafeParcelWriter.m14462b(parcel, a);
    }
}
