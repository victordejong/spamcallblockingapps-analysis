package com.google.android.gms.common;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.internal.C6147m;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
import com.yanzhenjie.nohttp.BuildConfig;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/ConnectionResult.class */
public final class ConnectionResult extends AbstractSafeParcelable {

    /* renamed from: e */
    final int f19148e;

    /* renamed from: f */
    private final int f19149f;

    /* renamed from: g */
    private final PendingIntent f19150g;

    /* renamed from: h */
    private final String f19151h;
    @RecentlyNonNull

    /* renamed from: d */
    public static final ConnectionResult f19147d = new ConnectionResult(0);
    @RecentlyNonNull
    public static final Parcelable.Creator<ConnectionResult> CREATOR = new C6200m();

    public ConnectionResult(int i) {
        this(i, null, null);
    }

    public ConnectionResult(int i, int i2, PendingIntent pendingIntent, String str) {
        this.f19148e = i;
        this.f19149f = i2;
        this.f19150g = pendingIntent;
        this.f19151h = str;
    }

    public ConnectionResult(int i, PendingIntent pendingIntent) {
        this(i, pendingIntent, null);
    }

    public ConnectionResult(int i, PendingIntent pendingIntent, String str) {
        this(1, i, pendingIntent, str);
    }

    /* renamed from: p0 */
    public static String m17501p0(int i) {
        if (i != 99) {
            if (i == 1500) {
                return "DRIVE_EXTERNAL_STORAGE_REQUIRED";
            }
            switch (i) {
                case BuildConfig.VERSION_CODE /* -1 */:
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
                            StringBuilder sb = new StringBuilder(31);
                            sb.append("UNKNOWN_ERROR_CODE(");
                            sb.append(i);
                            sb.append(")");
                            return sb.toString();
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
        return this.f19149f == connectionResult.f19149f && C6147m.m17044a(this.f19150g, connectionResult.f19150g) && C6147m.m17044a(this.f19151h, connectionResult.f19151h);
    }

    public int hashCode() {
        return C6147m.m17043b(Integer.valueOf(this.f19149f), this.f19150g, this.f19151h);
    }

    /* renamed from: k0 */
    public int m17506k0() {
        return this.f19149f;
    }

    @RecentlyNullable
    /* renamed from: l0 */
    public String m17505l0() {
        return this.f19151h;
    }

    @RecentlyNullable
    /* renamed from: m0 */
    public PendingIntent m17504m0() {
        return this.f19150g;
    }

    /* renamed from: n0 */
    public boolean m17503n0() {
        return (this.f19149f == 0 || this.f19150g == null) ? false : true;
    }

    /* renamed from: o0 */
    public boolean m17502o0() {
        return this.f19149f == 0;
    }

    @RecentlyNonNull
    public String toString() {
        C6147m.C6148a m17042c = C6147m.m17042c(this);
        m17042c.m17041a("statusCode", m17501p0(this.f19149f));
        m17042c.m17041a("resolution", this.f19150g);
        m17042c.m17041a("message", this.f19151h);
        return m17042c.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16937k(parcel, 1, this.f19148e);
        C6170a.m16937k(parcel, 2, m17506k0());
        C6170a.m16931q(parcel, 3, m17504m0(), i, false);
        C6170a.m16930r(parcel, 4, m17505l0(), false);
        C6170a.m16946b(parcel, m16947a);
    }
}
