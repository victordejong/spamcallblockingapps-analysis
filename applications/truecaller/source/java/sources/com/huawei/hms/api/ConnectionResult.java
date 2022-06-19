package com.huawei.hms.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.IntentSender;
import android.os.Parcel;
import android.os.Parcelable;
import com.huawei.hms.common.internal.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/api/ConnectionResult.class */
public final class ConnectionResult implements Parcelable {
    public static final int API_UNAVAILABLE = 1000;
    public static final int BINDFAIL_RESOLUTION_BACKGROUND = 7;
    public static final int BINDFAIL_RESOLUTION_REQUIRED = 6;
    public static final int CANCELED = 13;
    public static final Parcelable.Creator<ConnectionResult> CREATOR = new C2248a();
    public static final int DEVELOPER_ERROR = 10;
    public static final int DRIVE_EXTERNAL_STORAGE_REQUIRED = 9002;
    public static final int INTERNAL_ERROR = 8;
    public static final int INTERRUPTED = 15;
    public static final int INVALID_ACCOUNT = 5;
    public static final int LICENSE_CHECK_FAILED = 11;
    public static final int NETWORK_ERROR = 9000;
    public static final int RESOLUTION_REQUIRED = 9001;
    public static final int RESTRICTED_PROFILE = 9003;
    public static final int SERVICE_DISABLED = 3;
    public static final int SERVICE_INVALID = 9;
    public static final int SERVICE_MISSING = 1;
    public static final int SERVICE_MISSING_PERMISSION = 19;
    public static final int SERVICE_UNSUPPORTED = 21;
    public static final int SERVICE_UPDATING = 9004;
    public static final int SERVICE_VERSION_UPDATE_REQUIRED = 2;
    public static final int SIGN_IN_FAILED = 9005;
    public static final int SIGN_IN_REQUIRED = 4;
    public static final int SUCCESS = 0;
    public static final int TIMEOUT = 14;

    /* renamed from: a */
    private int f7265a;

    /* renamed from: b */
    private PendingIntent f7266b;

    /* renamed from: c */
    private String f7267c;

    /* renamed from: d */
    private int f7268d;

    /* renamed from: com.huawei.hms.api.ConnectionResult$a */
    /* loaded from: classes3-dex2jar.jar:com/huawei/hms/api/ConnectionResult$a.class */
    public static final class C2248a implements Parcelable.Creator<ConnectionResult> {
        @Override // android.os.Parcelable.Creator
        public ConnectionResult createFromParcel(Parcel parcel) {
            return new ConnectionResult(parcel, (C2248a) null);
        }

        @Override // android.os.Parcelable.Creator
        public ConnectionResult[] newArray(int i) {
            return new ConnectionResult[i];
        }
    }

    public ConnectionResult(int i) {
        this(i, (PendingIntent) null);
    }

    public ConnectionResult(int i, int i2, PendingIntent pendingIntent, String str) {
        this.f7265a = 1;
        this.f7266b = null;
        this.f7267c = null;
        this.f7265a = i;
        this.f7268d = i2;
        this.f7266b = pendingIntent;
        this.f7267c = str;
    }

    public ConnectionResult(int i, PendingIntent pendingIntent) {
        this(i, pendingIntent, null);
    }

    public ConnectionResult(int i, PendingIntent pendingIntent, String str) {
        this(1, i, pendingIntent, str);
    }

    private ConnectionResult(Parcel parcel) {
        this.f7265a = 1;
        this.f7266b = null;
        this.f7267c = null;
        this.f7265a = parcel.readInt();
        this.f7268d = parcel.readInt();
        this.f7267c = parcel.readString();
        Parcelable parcelable = (Parcelable) PendingIntent.CREATOR.createFromParcel(parcel);
        if (parcelable != null) {
            this.f7266b = (PendingIntent) parcelable;
        }
    }

    public /* synthetic */ ConnectionResult(Parcel parcel, C2248a c2248a) {
        this(parcel);
    }

    /* renamed from: a */
    public static String m38172a(int i) {
        if (i != -1) {
            if (i == 0) {
                return "SUCCESS";
            }
            if (i == 1) {
                return "SERVICE_MISSING";
            }
            if (i == 2) {
                return "SERVICE_VERSION_UPDATE_REQUIRED";
            }
            if (i == 3) {
                return "SERVICE_DISABLED";
            }
            if (i == 13) {
                return "CANCELED";
            }
            if (i == 14) {
                return "TIMEOUT";
            }
            if (i == 19) {
                return "SERVICE_MISSING_PERMISSION";
            }
            if (i == 21) {
                return "API_VERSION_UPDATE_REQUIRED";
            }
            switch (i) {
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
                    return C22128a.m8599l2("UNKNOWN_ERROR_CODE(", i, ")");
            }
        }
        return "UNKNOWN";
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x004d, code lost:
        if (r3.f7266b.equals(((com.huawei.hms.api.ConnectionResult) r4).f7266b) != false) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = 1
            r5 = r0
            r0 = r3
            r1 = r4
            if (r0 != r1) goto L9
            r0 = 1
            return r0
        L9:
            r0 = r4
            boolean r0 = r0 instanceof com.huawei.hms.api.ConnectionResult     // Catch: java.lang.Exception -> L57
            if (r0 == 0) goto L53
            r0 = r3
            int r0 = r0.f7265a     // Catch: java.lang.Exception -> L57
            r1 = r4
            com.huawei.hms.api.ConnectionResult r1 = (com.huawei.hms.api.ConnectionResult) r1     // Catch: java.lang.Exception -> L57
            int r1 = r1.f7265a     // Catch: java.lang.Exception -> L57
            if (r0 != r1) goto L53
            r0 = r3
            int r0 = r0.f7268d     // Catch: java.lang.Exception -> L57
            r1 = r4
            com.huawei.hms.api.ConnectionResult r1 = (com.huawei.hms.api.ConnectionResult) r1     // Catch: java.lang.Exception -> L57
            int r1 = r1.f7268d     // Catch: java.lang.Exception -> L57
            if (r0 != r1) goto L53
            r0 = r3
            java.lang.String r0 = r0.f7267c     // Catch: java.lang.Exception -> L57
            r1 = r4
            com.huawei.hms.api.ConnectionResult r1 = (com.huawei.hms.api.ConnectionResult) r1     // Catch: java.lang.Exception -> L57
            java.lang.String r1 = r1.f7267c     // Catch: java.lang.Exception -> L57
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Exception -> L57
            if (r0 == 0) goto L53
            r0 = r3
            android.app.PendingIntent r0 = r0.f7266b     // Catch: java.lang.Exception -> L57
            r1 = r4
            com.huawei.hms.api.ConnectionResult r1 = (com.huawei.hms.api.ConnectionResult) r1     // Catch: java.lang.Exception -> L57
            android.app.PendingIntent r1 = r1.f7266b     // Catch: java.lang.Exception -> L57
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Exception -> L57
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L53
            goto L55
        L53:
            r0 = 0
            r5 = r0
        L55:
            r0 = r5
            return r0
        L57:
            r4 = move-exception
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.api.ConnectionResult.equals(java.lang.Object):boolean");
    }

    public int getErrorCode() {
        return this.f7268d;
    }

    public final String getErrorMessage() {
        return this.f7267c;
    }

    public final PendingIntent getResolution() {
        return this.f7266b;
    }

    public final boolean hasResolution() {
        return HuaweiApiAvailability.getInstance().isUserResolvableError(this.f7268d, this.f7266b);
    }

    public int hashCode() {
        return Objects.hashCode(Long.valueOf(this.f7265a), Long.valueOf(getErrorCode()), getErrorMessage(), this.f7266b);
    }

    public final boolean isSuccess() {
        return this.f7268d == 0;
    }

    public final void startResolutionForResult(Activity activity, int i) throws IntentSender.SendIntentException {
        if (hasResolution()) {
            HuaweiApiAvailability.getInstance().resolveError(activity, this.f7268d, i, this.f7266b);
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f7265a);
        parcel.writeInt(this.f7268d);
        parcel.writeString(this.f7267c);
        this.f7266b.writeToParcel(parcel, i);
    }
}
