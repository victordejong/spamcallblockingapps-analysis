package com.google.android.gms.common;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.integralads.avid.library.mopub.video.AvidVideoPlaybackListenerImpl;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/ConnectionResult.class */
public final class ConnectionResult extends AbstractSafeParcelable {
    @SafeParcelable.VersionField

    /* renamed from: a */
    public final int f23007a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final int f23008b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final PendingIntent f23009c;
    @SafeParcelable.Field

    /* renamed from: d */
    public final String f23010d;
    @ShowFirstParty
    @KeepForSdk

    /* renamed from: e */
    public static final ConnectionResult f23006e = new ConnectionResult(0);
    public static final Parcelable.Creator<ConnectionResult> CREATOR = new zza();

    public ConnectionResult(int i) {
        this(i, null, null);
    }

    @SafeParcelable.Constructor
    public ConnectionResult(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) int i2, @SafeParcelable.Param(id = 3) PendingIntent pendingIntent, @SafeParcelable.Param(id = 4) String str) {
        this.f23007a = i;
        this.f23008b = i2;
        this.f23009c = pendingIntent;
        this.f23010d = str;
    }

    public ConnectionResult(int i, PendingIntent pendingIntent) {
        this(i, pendingIntent, null);
    }

    public ConnectionResult(int i, PendingIntent pendingIntent, String str) {
        this(1, i, pendingIntent, str);
    }

    public static String zza(int i) {
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

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ConnectionResult)) {
            return false;
        }
        ConnectionResult connectionResult = (ConnectionResult) obj;
        return this.f23008b == connectionResult.f23008b && Objects.m17295a(this.f23009c, connectionResult.f23009c) && Objects.m17295a(this.f23010d, connectionResult.f23010d);
    }

    /* renamed from: f */
    public final int m17834f() {
        return this.f23008b;
    }

    public final int hashCode() {
        return Objects.m17294a(Integer.valueOf(this.f23008b), this.f23009c, this.f23010d);
    }

    /* renamed from: i */
    public final String m17833i() {
        return this.f23010d;
    }

    public final String toString() {
        Objects.ToStringHelper a = Objects.m17296a(this);
        a.m17293a("statusCode", zza(this.f23008b));
        a.m17293a("resolution", this.f23009c);
        a.m17293a(AvidVideoPlaybackListenerImpl.MESSAGE, this.f23010d);
        return a.toString();
    }

    /* renamed from: u */
    public final PendingIntent m17832u() {
        return this.f23009c;
    }

    /* renamed from: v */
    public final boolean m17831v() {
        return (this.f23008b == 0 || this.f23009c == null) ? false : true;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17231a(parcel, 1, this.f23007a);
        SafeParcelWriter.m17231a(parcel, 2, m17834f());
        SafeParcelWriter.m17226a(parcel, 3, (Parcelable) m17832u(), i, false);
        SafeParcelWriter.m17221a(parcel, 4, m17833i(), false);
        SafeParcelWriter.m17234a(parcel, a);
    }

    /* renamed from: y */
    public final boolean m17830y() {
        return this.f23008b == 0;
    }
}
