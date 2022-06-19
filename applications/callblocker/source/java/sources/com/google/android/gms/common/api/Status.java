package com.google.android.gms.common.api;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C2657q;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Status.class */
public final class Status extends AbstractC2663a implements AbstractC2500h, ReflectedParcelable {

    /* renamed from: h */
    private final int f7036h;

    /* renamed from: i */
    private final int f7037i;

    /* renamed from: j */
    private final String f7038j;

    /* renamed from: k */
    private final PendingIntent f7039k;

    /* renamed from: a */
    public static final Status f7029a = new Status(0);

    /* renamed from: b */
    public static final Status f7030b = new Status(14);

    /* renamed from: c */
    public static final Status f7031c = new Status(8);

    /* renamed from: d */
    public static final Status f7032d = new Status(15);

    /* renamed from: e */
    public static final Status f7033e = new Status(16);

    /* renamed from: g */
    private static final Status f7035g = new Status(17);

    /* renamed from: f */
    public static final Status f7034f = new Status(18);
    public static final Parcelable.Creator<Status> CREATOR = new C2578o();

    public Status(int i) {
        this(i, null);
    }

    public Status(int i, int i2, String str, PendingIntent pendingIntent) {
        this.f7036h = i;
        this.f7037i = i2;
        this.f7038j = str;
        this.f7039k = pendingIntent;
    }

    public Status(int i, String str) {
        this(1, i, str, null);
    }

    public Status(int i, String str, PendingIntent pendingIntent) {
        this(1, i, str, pendingIntent);
    }

    /* renamed from: a */
    public final String m14462a() {
        return this.f7038j;
    }

    @Override // com.google.android.gms.common.api.AbstractC2500h
    /* renamed from: b */
    public final Status mo14416b() {
        return this;
    }

    /* renamed from: c */
    public final boolean m14461c() {
        return this.f7039k != null;
    }

    /* renamed from: d */
    public final boolean m14460d() {
        return this.f7037i <= 0;
    }

    /* renamed from: e */
    public final int m14459e() {
        return this.f7037i;
    }

    public final boolean equals(Object obj) {
        boolean z;
        if (!(obj instanceof Status)) {
            z = false;
        } else {
            Status status = (Status) obj;
            z = false;
            if (this.f7036h == status.f7036h) {
                z = false;
                if (this.f7037i == status.f7037i) {
                    z = false;
                    if (C2657q.m13992a(this.f7038j, status.f7038j)) {
                        z = false;
                        if (C2657q.m13992a(this.f7039k, status.f7039k)) {
                            z = true;
                        }
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: f */
    public final String m14458f() {
        return this.f7038j != null ? this.f7038j : C2488b.m14438a(this.f7037i);
    }

    public final int hashCode() {
        return C2657q.m13991a(Integer.valueOf(this.f7036h), Integer.valueOf(this.f7037i), this.f7038j, this.f7039k);
    }

    public final String toString() {
        return C2657q.m13993a(this).m13990a("statusCode", m14458f()).m13990a("resolution", this.f7039k).toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13941a(parcel, 1, m14459e());
        C2664b.m13932a(parcel, 2, m14462a(), false);
        C2664b.m13937a(parcel, 3, (Parcelable) this.f7039k, i, false);
        C2664b.m13941a(parcel, 1000, this.f7036h);
        C2664b.m13943a(parcel, m13944a);
    }
}
