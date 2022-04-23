package com.google.android.gms.common;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.appsflyer.internal.referrer.Payload;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.C7098u;
import p081h.p203i.p204a.p224e.p235d.p240n.C7018s;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/ConnectionResult.class */
public final class ConnectionResult extends AbstractSafeParcelable {

    /* renamed from: a */
    public final int f6496a;

    /* renamed from: b */
    public final int f6497b;

    /* renamed from: c */
    public final PendingIntent f6498c;

    /* renamed from: d */
    public final String f6499d;

    /* renamed from: e */
    public static final ConnectionResult f6495e = new ConnectionResult(0);
    public static final Parcelable.Creator<ConnectionResult> CREATOR = new C7098u();

    public ConnectionResult(int i) {
        this(i, null, null);
    }

    public ConnectionResult(int i, int i2, PendingIntent pendingIntent, String str) {
        this.f6496a = i;
        this.f6497b = i2;
        this.f6498c = pendingIntent;
        this.f6499d = str;
    }

    public ConnectionResult(int i, @Nullable PendingIntent pendingIntent) {
        this(i, pendingIntent, null);
    }

    public ConnectionResult(int i, @Nullable PendingIntent pendingIntent, String str) {
        this(1, i, pendingIntent, str);
    }

    @NonNull
    /* renamed from: g */
    public static String m31999g(int i) {
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
                return Payload.RESPONSE_DEVELOPER_ERROR;
            case 11:
                return "LICENSE_CHECK_FAILED";
            default:
                switch (i) {
                    case 13:
                        return "CANCELED";
                    case 14:
                        return Payload.RESPONSE_TIMEOUT;
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

    @Nullable
    /* renamed from: H */
    public final String m32004H() {
        return this.f6499d;
    }

    @Nullable
    /* renamed from: I */
    public final PendingIntent m32003I() {
        return this.f6498c;
    }

    /* renamed from: J */
    public final boolean m32002J() {
        return (this.f6497b == 0 || this.f6498c == null) ? false : true;
    }

    /* renamed from: K */
    public final boolean m32001K() {
        return this.f6497b == 0;
    }

    /* renamed from: c */
    public final int m32000c() {
        return this.f6497b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ConnectionResult)) {
            return false;
        }
        ConnectionResult connectionResult = (ConnectionResult) obj;
        return this.f6497b == connectionResult.f6497b && C7018s.m21297a(this.f6498c, connectionResult.f6498c) && C7018s.m21297a(this.f6499d, connectionResult.f6499d);
    }

    public final int hashCode() {
        return C7018s.m21296a(Integer.valueOf(this.f6497b), this.f6498c, this.f6499d);
    }

    public final String toString() {
        C7018s.C7019a a = C7018s.m21298a(this);
        a.m21295a("statusCode", m31999g(this.f6497b));
        a.m21295a("resolution", this.f6498c);
        a.m21295a("message", this.f6499d);
        return a.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21225a(parcel, 1, this.f6496a);
        C7031b.m21225a(parcel, 2, m32000c());
        C7031b.m21220a(parcel, 3, (Parcelable) m32003I(), i, false);
        C7031b.m21215a(parcel, 4, m32004H(), false);
        C7031b.m21229a(parcel, a);
    }
}
