package com.google.android.gms.common;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C2657q;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
/* renamed from: com.google.android.gms.common.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/b.class */
public final class C2579b extends AbstractC2663a {

    /* renamed from: b */
    private final int f7234b;

    /* renamed from: c */
    private final int f7235c;

    /* renamed from: d */
    private final PendingIntent f7236d;

    /* renamed from: e */
    private final String f7237e;

    /* renamed from: a */
    public static final C2579b f7233a = new C2579b(0);
    public static final Parcelable.Creator<C2579b> CREATOR = new C2677l();

    public C2579b(int i) {
        this(i, null, null);
    }

    public C2579b(int i, int i2, PendingIntent pendingIntent, String str) {
        this.f7234b = i;
        this.f7235c = i2;
        this.f7236d = pendingIntent;
        this.f7237e = str;
    }

    public C2579b(int i, PendingIntent pendingIntent) {
        this(i, pendingIntent, null);
    }

    public C2579b(int i, PendingIntent pendingIntent, String str) {
        this(1, i, pendingIntent, str);
    }

    /* renamed from: a */
    public static String m14211a(int i) {
        String str;
        switch (i) {
            case -1:
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
            case 14:
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
        return str;
    }

    /* renamed from: a */
    public final boolean m14212a() {
        return (this.f7235c == 0 || this.f7236d == null) ? false : true;
    }

    /* renamed from: b */
    public final boolean m14210b() {
        return this.f7235c == 0;
    }

    /* renamed from: c */
    public final int m14209c() {
        return this.f7235c;
    }

    /* renamed from: d */
    public final PendingIntent m14208d() {
        return this.f7236d;
    }

    /* renamed from: e */
    public final String m14207e() {
        return this.f7237e;
    }

    public final boolean equals(Object obj) {
        boolean z = true;
        if (obj != this) {
            if (!(obj instanceof C2579b)) {
                z = false;
            } else {
                C2579b c2579b = (C2579b) obj;
                if (this.f7235c != c2579b.f7235c || !C2657q.m13992a(this.f7236d, c2579b.f7236d) || !C2657q.m13992a(this.f7237e, c2579b.f7237e)) {
                    z = false;
                }
            }
        }
        return z;
    }

    public final int hashCode() {
        return C2657q.m13991a(Integer.valueOf(this.f7235c), this.f7236d, this.f7237e);
    }

    public final String toString() {
        return C2657q.m13993a(this).m13990a("statusCode", m14211a(this.f7235c)).m13990a("resolution", this.f7236d).m13990a("message", this.f7237e).toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13941a(parcel, 1, this.f7234b);
        C2664b.m13941a(parcel, 2, m14209c());
        C2664b.m13937a(parcel, 3, (Parcelable) m14208d(), i, false);
        C2664b.m13932a(parcel, 4, m14207e(), false);
        C2664b.m13943a(parcel, m13944a);
    }
}
