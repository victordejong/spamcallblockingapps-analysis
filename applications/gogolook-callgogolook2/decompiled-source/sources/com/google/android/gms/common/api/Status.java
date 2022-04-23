package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.IntentSender;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6835k;
import p081h.p203i.p204a.p224e.p235d.p236k.C6821d;
import p081h.p203i.p204a.p224e.p235d.p236k.C6956u;
import p081h.p203i.p204a.p224e.p235d.p240n.C7018s;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/Status.class */
public final class Status extends AbstractSafeParcelable implements AbstractC6835k, ReflectedParcelable {

    /* renamed from: a */
    public final int f6514a;

    /* renamed from: b */
    public final int f6515b;
    @Nullable

    /* renamed from: c */
    public final String f6516c;
    @Nullable

    /* renamed from: d */
    public final PendingIntent f6517d;

    /* renamed from: e */
    public static final Status f6510e = new Status(0);

    /* renamed from: f */
    public static final Status f6511f = new Status(8);

    /* renamed from: g */
    public static final Status f6512g = new Status(15);

    /* renamed from: h */
    public static final Status f6513h = new Status(16);
    public static final Parcelable.Creator<Status> CREATOR = new C6956u();

    static {
        new Status(14);
        new Status(17);
        new Status(18);
    }

    public Status(int i) {
        this(i, null);
    }

    public Status(int i, int i2, @Nullable String str, @Nullable PendingIntent pendingIntent) {
        this.f6514a = i;
        this.f6515b = i2;
        this.f6516c = str;
        this.f6517d = pendingIntent;
    }

    public Status(int i, @Nullable String str) {
        this(1, i, str, null);
    }

    public Status(int i, @Nullable String str, @Nullable PendingIntent pendingIntent) {
        this(1, i, str, pendingIntent);
    }

    @Nullable
    /* renamed from: H */
    public final String m31993H() {
        return this.f6516c;
    }

    /* renamed from: I */
    public final boolean m31992I() {
        return this.f6517d != null;
    }

    /* renamed from: J */
    public final boolean m31991J() {
        return this.f6515b <= 0;
    }

    /* renamed from: K */
    public final String m31990K() {
        String str = this.f6516c;
        return str != null ? str : C6821d.m21843a(this.f6515b);
    }

    /* renamed from: a */
    public final void m31989a(Activity activity, int i) throws IntentSender.SendIntentException {
        if (m31992I()) {
            activity.startIntentSenderForResult(this.f6517d.getIntentSender(), i, null, 0, 0, 0);
        }
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6835k
    /* renamed from: b */
    public final Status mo21814b() {
        return this;
    }

    /* renamed from: c */
    public final int m31988c() {
        return this.f6515b;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Status)) {
            return false;
        }
        Status status = (Status) obj;
        return this.f6514a == status.f6514a && this.f6515b == status.f6515b && C7018s.m21297a(this.f6516c, status.f6516c) && C7018s.m21297a(this.f6517d, status.f6517d);
    }

    public final int hashCode() {
        return C7018s.m21296a(Integer.valueOf(this.f6514a), Integer.valueOf(this.f6515b), this.f6516c, this.f6517d);
    }

    public final String toString() {
        C7018s.C7019a a = C7018s.m21298a(this);
        a.m21295a("statusCode", m31990K());
        a.m21295a("resolution", this.f6517d);
        return a.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21225a(parcel, 1, m31988c());
        C7031b.m21215a(parcel, 2, m31993H(), false);
        C7031b.m21220a(parcel, 3, (Parcelable) this.f6517d, i, false);
        C7031b.m21225a(parcel, 1000, this.f6514a);
        C7031b.m21229a(parcel, a);
    }
}
