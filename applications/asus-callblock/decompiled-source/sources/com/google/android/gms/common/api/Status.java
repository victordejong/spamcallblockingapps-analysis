package com.google.android.gms.common.api;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.view.p;
import com.android.contacts.util.AsusRedPointNotificationDualPanelHelper;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Status.class */
public final class Status extends AbstractSafeParcelable implements e {
    final int g;
    final int h;
    final String i;
    final PendingIntent j;

    /* renamed from: a  reason: collision with root package name */
    public static final Status f3945a = new Status(0);

    /* renamed from: b  reason: collision with root package name */
    public static final Status f3946b = new Status(14);
    public static final Status c = new Status(8);
    public static final Status d = new Status(15);
    public static final Status e = new Status(16);
    public static final Status f = new Status(17);
    public static final Parcelable.Creator<Status> CREATOR = new n();

    public Status(int i) {
        this(i, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Status(int i, int i2, String str, PendingIntent pendingIntent) {
        this.g = i;
        this.h = i2;
        this.i = str;
        this.j = pendingIntent;
    }

    public Status(int i, String str) {
        this(1, i, str, null);
    }

    public final boolean a() {
        return this.h <= 0;
    }

    @Override // com.google.android.gms.common.api.e
    public final Status b() {
        return this;
    }

    public final boolean equals(Object obj) {
        boolean z;
        if (!(obj instanceof Status)) {
            z = false;
        } else {
            Status status = (Status) obj;
            z = false;
            if (this.g == status.g) {
                z = false;
                if (this.h == status.h) {
                    z = false;
                    if (ae.a(this.i, status.i)) {
                        z = false;
                        if (ae.a(this.j, status.j)) {
                            z = true;
                        }
                    }
                }
            }
        }
        return z;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.g), Integer.valueOf(this.h), this.i, this.j});
    }

    public final String toString() {
        String str;
        ae.a a2 = ae.a(this);
        if (this.i == null) {
            int i = this.h;
            switch (i) {
                case p.POSITION_UNCHANGED /* -1 */:
                    str = "SUCCESS_CACHE";
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
                    str = "ERROR";
                    break;
                case AsusRedPointNotificationDualPanelHelper.ID.UPDATE_VERSION /* 14 */:
                    str = "INTERRUPTED";
                    break;
                case 15:
                    str = "TIMEOUT";
                    break;
                case 16:
                    str = "CANCELED";
                    break;
                case 17:
                    str = "API_NOT_CONNECTED";
                    break;
                case 3000:
                    str = "AUTH_API_INVALID_CREDENTIALS";
                    break;
                case 3001:
                    str = "AUTH_API_ACCESS_FORBIDDEN";
                    break;
                case 3002:
                    str = "AUTH_API_CLIENT_ERROR";
                    break;
                case 3003:
                    str = "AUTH_API_SERVER_ERROR";
                    break;
                case 3004:
                    str = "AUTH_TOKEN_ERROR";
                    break;
                case 3005:
                    str = "AUTH_URL_RESOLUTION";
                    break;
                default:
                    str = new StringBuilder(32).append("unknown status code: ").append(i).toString();
                    break;
            }
        } else {
            str = this.i;
        }
        return a2.a("statusCode", str).a("resolution", this.j).toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        n.a(this, parcel, i);
    }
}
