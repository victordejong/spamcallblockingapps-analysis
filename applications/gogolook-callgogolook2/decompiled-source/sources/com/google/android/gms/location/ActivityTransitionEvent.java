package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.C7018s;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p280k.C8851x;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/ActivityTransitionEvent.class */
public class ActivityTransitionEvent extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ActivityTransitionEvent> CREATOR = new C8851x();

    /* renamed from: a */
    public final int f6916a;

    /* renamed from: b */
    public final int f6917b;

    /* renamed from: c */
    public final long f6918c;

    public ActivityTransitionEvent(int i, int i2, long j) {
        DetectedActivity.m31814g(i);
        ActivityTransition.m31821g(i2);
        this.f6916a = i;
        this.f6917b = i2;
        this.f6918c = j;
    }

    /* renamed from: H */
    public long m31820H() {
        return this.f6918c;
    }

    /* renamed from: I */
    public int m31819I() {
        return this.f6917b;
    }

    /* renamed from: c */
    public int m31818c() {
        return this.f6916a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ActivityTransitionEvent)) {
            return false;
        }
        ActivityTransitionEvent activityTransitionEvent = (ActivityTransitionEvent) obj;
        return this.f6916a == activityTransitionEvent.f6916a && this.f6917b == activityTransitionEvent.f6917b && this.f6918c == activityTransitionEvent.f6918c;
    }

    public int hashCode() {
        return C7018s.m21296a(Integer.valueOf(this.f6916a), Integer.valueOf(this.f6917b), Long.valueOf(this.f6918c));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        int i = this.f6916a;
        StringBuilder sb2 = new StringBuilder(24);
        sb2.append("ActivityType ");
        sb2.append(i);
        sb.append(sb2.toString());
        sb.append(" ");
        int i2 = this.f6917b;
        StringBuilder sb3 = new StringBuilder(26);
        sb3.append("TransitionType ");
        sb3.append(i2);
        sb.append(sb3.toString());
        sb.append(" ");
        long j = this.f6918c;
        StringBuilder sb4 = new StringBuilder(41);
        sb4.append("ElapsedRealTimeNanos ");
        sb4.append(j);
        sb.append(sb4.toString());
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21225a(parcel, 1, m31818c());
        C7031b.m21225a(parcel, 2, m31819I());
        C7031b.m21224a(parcel, 3, m31820H());
        C7031b.m21229a(parcel, a);
    }
}
