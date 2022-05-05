package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import androidx.work.impl.background.systemalarm.CommandHandler;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.C7018s;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p280k.C8838m;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/LocationRequest.class */
public final class LocationRequest extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<LocationRequest> CREATOR = new C8838m();

    /* renamed from: a */
    public int f6935a;

    /* renamed from: b */
    public long f6936b;

    /* renamed from: c */
    public long f6937c;

    /* renamed from: d */
    public boolean f6938d;

    /* renamed from: e */
    public long f6939e;

    /* renamed from: f */
    public int f6940f;

    /* renamed from: g */
    public float f6941g;

    /* renamed from: h */
    public long f6942h;

    public LocationRequest() {
        this.f6935a = 102;
        this.f6936b = 3600000L;
        this.f6937c = CommandHandler.WORK_PROCESSING_TIME_IN_MS;
        this.f6938d = false;
        this.f6939e = Long.MAX_VALUE;
        this.f6940f = Integer.MAX_VALUE;
        this.f6941g = 0.0f;
        this.f6942h = 0L;
    }

    public LocationRequest(int i, long j, long j2, boolean z, long j3, int i2, float f, long j4) {
        this.f6935a = i;
        this.f6936b = j;
        this.f6937c = j2;
        this.f6938d = z;
        this.f6939e = j3;
        this.f6940f = i2;
        this.f6941g = f;
        this.f6942h = j4;
    }

    /* renamed from: H */
    public static LocationRequest m31811H() {
        return new LocationRequest();
    }

    /* renamed from: h */
    public static void m31807h(long j) {
        if (j < 0) {
            StringBuilder sb = new StringBuilder(38);
            sb.append("invalid interval: ");
            sb.append(j);
            throw new IllegalArgumentException(sb.toString());
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long m31810c() {
        /*
            r5 = this;
            r0 = r5
            long r0 = r0.f6942h
            r6 = r0
            r0 = r5
            long r0 = r0.f6936b
            r8 = r0
            r0 = r6
            r10 = r0
            r0 = r6
            r1 = r8
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0016
            r0 = r8
            r10 = r0
        L_0x0016:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.location.LocationRequest.m31810c():long");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LocationRequest)) {
            return false;
        }
        LocationRequest locationRequest = (LocationRequest) obj;
        return this.f6935a == locationRequest.f6935a && this.f6936b == locationRequest.f6936b && this.f6937c == locationRequest.f6937c && this.f6938d == locationRequest.f6938d && this.f6939e == locationRequest.f6939e && this.f6940f == locationRequest.f6940f && this.f6941g == locationRequest.f6941g && m31810c() == locationRequest.m31810c();
    }

    /* renamed from: g */
    public final LocationRequest m31809g(int i) {
        if (i == 100 || i == 102 || i == 104 || i == 105) {
            this.f6935a = i;
            return this;
        }
        StringBuilder sb = new StringBuilder(28);
        sb.append("invalid quality: ");
        sb.append(i);
        throw new IllegalArgumentException(sb.toString());
    }

    /* renamed from: g */
    public final LocationRequest m31808g(long j) {
        m31807h(j);
        this.f6936b = j;
        if (!this.f6938d) {
            this.f6937c = (long) (this.f6936b / 6.0d);
        }
        return this;
    }

    public final int hashCode() {
        return C7018s.m21296a(Integer.valueOf(this.f6935a), Long.valueOf(this.f6936b), Float.valueOf(this.f6941g), Long.valueOf(this.f6942h));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Request[");
        int i = this.f6935a;
        sb.append(i != 100 ? i != 102 ? i != 104 ? i != 105 ? "???" : "PRIORITY_NO_POWER" : "PRIORITY_LOW_POWER" : "PRIORITY_BALANCED_POWER_ACCURACY" : "PRIORITY_HIGH_ACCURACY");
        if (this.f6935a != 105) {
            sb.append(" requested=");
            sb.append(this.f6936b);
            sb.append("ms");
        }
        sb.append(" fastest=");
        sb.append(this.f6937c);
        sb.append("ms");
        if (this.f6942h > this.f6936b) {
            sb.append(" maxWait=");
            sb.append(this.f6942h);
            sb.append("ms");
        }
        if (this.f6941g > 0.0f) {
            sb.append(" smallestDisplacement=");
            sb.append(this.f6941g);
            sb.append("m");
        }
        long j = this.f6939e;
        if (j != Long.MAX_VALUE) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            sb.append(" expireIn=");
            sb.append(j - elapsedRealtime);
            sb.append("ms");
        }
        if (this.f6940f != Integer.MAX_VALUE) {
            sb.append(" num=");
            sb.append(this.f6940f);
        }
        sb.append(']');
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21225a(parcel, 1, this.f6935a);
        C7031b.m21224a(parcel, 2, this.f6936b);
        C7031b.m21224a(parcel, 3, this.f6937c);
        C7031b.m21212a(parcel, 4, this.f6938d);
        C7031b.m21224a(parcel, 5, this.f6939e);
        C7031b.m21225a(parcel, 6, this.f6940f);
        C7031b.m21226a(parcel, 7, this.f6941g);
        C7031b.m21224a(parcel, 8, this.f6942h);
        C7031b.m21229a(parcel, a);
    }
}
