package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.C6147m;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Status.class */
public final class Status extends AbstractSafeParcelable implements AbstractC6007i, ReflectedParcelable {

    /* renamed from: k */
    final int f19174k;

    /* renamed from: l */
    private final int f19175l;

    /* renamed from: m */
    private final String f19176m;

    /* renamed from: n */
    private final PendingIntent f19177n;

    /* renamed from: o */
    private final ConnectionResult f19178o;
    @RecentlyNonNull

    /* renamed from: d */
    public static final Status f19167d = new Status(0);
    @RecentlyNonNull

    /* renamed from: e */
    public static final Status f19168e = new Status(14);
    @RecentlyNonNull

    /* renamed from: f */
    public static final Status f19169f = new Status(8);
    @RecentlyNonNull

    /* renamed from: g */
    public static final Status f19170g = new Status(15);
    @RecentlyNonNull

    /* renamed from: h */
    public static final Status f19171h = new Status(16);
    @RecentlyNonNull

    /* renamed from: j */
    public static final Status f19173j = new Status(17);
    @RecentlyNonNull

    /* renamed from: i */
    public static final Status f19172i = new Status(18);
    @RecentlyNonNull
    public static final Parcelable.Creator<Status> CREATOR = new C6083p();

    public Status(int i) {
        this(i, (String) null);
    }

    Status(int i, int i2, String str, PendingIntent pendingIntent) {
        this(i, i2, str, pendingIntent, null);
    }

    public Status(int i, int i2, String str, PendingIntent pendingIntent, ConnectionResult connectionResult) {
        this.f19174k = i;
        this.f19175l = i2;
        this.f19176m = str;
        this.f19177n = pendingIntent;
        this.f19178o = connectionResult;
    }

    public Status(int i, String str) {
        this(1, i, str, null);
    }

    public Status(int i, String str, PendingIntent pendingIntent) {
        this(1, i, str, pendingIntent);
    }

    public Status(@RecentlyNonNull ConnectionResult connectionResult, @RecentlyNonNull String str) {
        this(connectionResult, str, 17);
    }

    @Deprecated
    public Status(@RecentlyNonNull ConnectionResult connectionResult, @RecentlyNonNull String str, int i) {
        this(1, i, str, connectionResult.m17504m0(), connectionResult);
    }

    @Override // com.google.android.gms.common.api.AbstractC6007i
    @RecentlyNonNull
    /* renamed from: e */
    public Status mo5849e() {
        return this;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Status)) {
            return false;
        }
        Status status = (Status) obj;
        return this.f19174k == status.f19174k && this.f19175l == status.f19175l && C6147m.m17044a(this.f19176m, status.f19176m) && C6147m.m17044a(this.f19177n, status.f19177n) && C6147m.m17044a(this.f19178o, status.f19178o);
    }

    public int hashCode() {
        return C6147m.m17043b(Integer.valueOf(this.f19174k), Integer.valueOf(this.f19175l), this.f19176m, this.f19177n, this.f19178o);
    }

    @RecentlyNullable
    /* renamed from: k0 */
    public ConnectionResult m17491k0() {
        return this.f19178o;
    }

    @RecentlyNullable
    /* renamed from: l0 */
    public PendingIntent m17490l0() {
        return this.f19177n;
    }

    /* renamed from: m0 */
    public int m17489m0() {
        return this.f19175l;
    }

    @RecentlyNullable
    /* renamed from: n0 */
    public String m17488n0() {
        return this.f19176m;
    }

    /* renamed from: o0 */
    public boolean m17487o0() {
        return this.f19177n != null;
    }

    /* renamed from: p0 */
    public boolean m17486p0() {
        return this.f19175l <= 0;
    }

    /* renamed from: q0 */
    public void m17485q0(@RecentlyNonNull Activity activity, int i) {
        if (!m17487o0()) {
            return;
        }
        PendingIntent pendingIntent = this.f19177n;
        C6155o.m17018j(pendingIntent);
        activity.startIntentSenderForResult(pendingIntent.getIntentSender(), i, null, 0, 0, 0);
    }

    @RecentlyNonNull
    /* renamed from: r0 */
    public final String m17484r0() {
        String str = this.f19176m;
        return str != null ? str : C5995b.m17477a(this.f19175l);
    }

    @RecentlyNonNull
    public String toString() {
        C6147m.C6148a m17042c = C6147m.m17042c(this);
        m17042c.m17041a("statusCode", m17484r0());
        m17042c.m17041a("resolution", this.f19177n);
        return m17042c.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16937k(parcel, 1, m17489m0());
        C6170a.m16930r(parcel, 2, m17488n0(), false);
        C6170a.m16931q(parcel, 3, this.f19177n, i, false);
        C6170a.m16931q(parcel, 4, m17491k0(), i, false);
        C6170a.m16937k(parcel, 1000, this.f19174k);
        C6170a.m16946b(parcel, m16947a);
    }
}
