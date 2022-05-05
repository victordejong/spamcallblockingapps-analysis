package com.google.android.gms.common;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.view.p;
import com.android.contacts.util.AsusRedPointNotificationDualPanelHelper;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/ConnectionResult.class */
public final class ConnectionResult extends AbstractSafeParcelable {

    /* renamed from: b  reason: collision with root package name */
    final int f3923b;
    public final int c;
    public final PendingIntent d;
    final String e;

    /* renamed from: a  reason: collision with root package name */
    public static final ConnectionResult f3922a = new ConnectionResult(0);
    public static final Parcelable.Creator<ConnectionResult> CREATOR = new i();

    public ConnectionResult(int i) {
        this(i, null, (byte) 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ConnectionResult(int i, int i2, PendingIntent pendingIntent, String str) {
        this.f3923b = i;
        this.c = i2;
        this.d = pendingIntent;
        this.e = str;
    }

    public ConnectionResult(int i, PendingIntent pendingIntent) {
        this(i, pendingIntent, (byte) 0);
    }

    private ConnectionResult(int i, PendingIntent pendingIntent, byte b2) {
        this(1, i, pendingIntent, null);
    }

    public final boolean a() {
        return (this.c == 0 || this.d == null) ? false : true;
    }

    public final boolean b() {
        return this.c == 0;
    }

    public final boolean equals(Object obj) {
        boolean z = true;
        if (obj != this) {
            if (!(obj instanceof ConnectionResult)) {
                z = false;
            } else {
                ConnectionResult connectionResult = (ConnectionResult) obj;
                if (this.c != connectionResult.c || !ae.a(this.d, connectionResult.d) || !ae.a(this.e, connectionResult.e)) {
                    z = false;
                }
            }
        }
        return z;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.c), this.d, this.e});
    }

    public final String toString() {
        String str;
        ae.a a2 = ae.a(this);
        int i = this.c;
        switch (i) {
            case p.POSITION_UNCHANGED /* -1 */:
                str = "UNKNOWN";
                break;
            case 0:
                str = "SUCCESS";
                break;
            case 1:
                str = "SERVICE_MISSING";
                break;
            case 2:
                str = "SERVICE_VERSION_UPDATE_REQUIRED";
                break;
            case 3:
                str = "SERVICE_DISABLED";
                break;
            case 4:
                str = "SIGN_IN_REQUIRED";
                break;
            case 5:
                str = "INVALID_ACCOUNT";
                break;
            case 6:
                str = "RESOLUTION_REQUIRED";
                break;
            case 7:
                str = "NETWORK_ERROR";
                break;
            case 8:
                str = "INTERNAL_ERROR";
                break;
            case 9:
                str = "SERVICE_INVALID";
                break;
            case 10:
                str = "DEVELOPER_ERROR";
                break;
            case 11:
                str = "LICENSE_CHECK_FAILED";
                break;
            case 13:
                str = "CANCELED";
                break;
            case AsusRedPointNotificationDualPanelHelper.ID.UPDATE_VERSION /* 14 */:
                str = "TIMEOUT";
                break;
            case 15:
                str = "INTERRUPTED";
                break;
            case 16:
                str = "API_UNAVAILABLE";
                break;
            case 17:
                str = "SIGN_IN_FAILED";
                break;
            case 18:
                str = "SERVICE_UPDATING";
                break;
            case 19:
                str = "SERVICE_MISSING_PERMISSION";
                break;
            case 20:
                str = "RESTRICTED_PROFILE";
                break;
            case 21:
                str = "API_VERSION_UPDATE_REQUIRED";
                break;
            case 42:
                str = "UPDATE_ANDROID_WEAR";
                break;
            case 99:
                str = "UNFINISHED";
                break;
            case 1500:
                str = "DRIVE_EXTERNAL_STORAGE_REQUIRED";
                break;
            default:
                str = new StringBuilder(31).append("UNKNOWN_ERROR_CODE(").append(i).append(")").toString();
                break;
        }
        return a2.a("statusCode", str).a("resolution", this.d).a("message", this.e).toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        i.a(this, parcel, i);
    }
}
