package com.google.android.gms.location;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.List;
import p081h.p203i.p204a.p224e.p235d.p240n.C7018s;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p280k.C8849v;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/ActivityRecognitionResult.class */
public class ActivityRecognitionResult extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<ActivityRecognitionResult> CREATOR = new C8849v();

    /* renamed from: a */
    public List<DetectedActivity> f6909a;

    /* renamed from: b */
    public long f6910b;

    /* renamed from: c */
    public long f6911c;

    /* renamed from: d */
    public int f6912d;

    /* renamed from: e */
    public Bundle f6913e;

    public ActivityRecognitionResult(List<DetectedActivity> list, long j, long j2, int i, Bundle bundle) {
        boolean z = true;
        C7021t.m21285a(list != null && list.size() > 0, "Must have at least 1 detected activity");
        if (j <= 0 || j2 <= 0) {
            z = false;
        }
        C7021t.m21285a(z, "Must set times");
        this.f6909a = list;
        this.f6910b = j;
        this.f6911c = j2;
        this.f6912d = i;
        this.f6913e = bundle;
    }

    /* renamed from: a */
    public static boolean m31824a(Bundle bundle, Bundle bundle2) {
        if (bundle == null && bundle2 == null) {
            return true;
        }
        if (bundle == null && bundle2 != null) {
            return false;
        }
        if ((bundle != null && bundle2 == null) || bundle.size() != bundle2.size()) {
            return false;
        }
        for (String str : bundle.keySet()) {
            if (!bundle2.containsKey(str)) {
                return false;
            }
            if (bundle.get(str) == null) {
                if (bundle2.get(str) != null) {
                    return false;
                }
            } else if (bundle.get(str) instanceof Bundle) {
                if (!m31824a(bundle.getBundle(str), bundle2.getBundle(str))) {
                    return false;
                }
            } else if (!bundle.get(str).equals(bundle2.get(str))) {
                return false;
            }
        }
        return true;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ActivityRecognitionResult.class != obj.getClass()) {
            return false;
        }
        ActivityRecognitionResult activityRecognitionResult = (ActivityRecognitionResult) obj;
        return this.f6910b == activityRecognitionResult.f6910b && this.f6911c == activityRecognitionResult.f6911c && this.f6912d == activityRecognitionResult.f6912d && C7018s.m21297a(this.f6909a, activityRecognitionResult.f6909a) && m31824a(this.f6913e, activityRecognitionResult.f6913e);
    }

    public int hashCode() {
        return C7018s.m21296a(Long.valueOf(this.f6910b), Long.valueOf(this.f6911c), Integer.valueOf(this.f6912d), this.f6909a, this.f6913e);
    }

    public String toString() {
        String valueOf = String.valueOf(this.f6909a);
        long j = this.f6910b;
        long j2 = this.f6911c;
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 124);
        sb.append("ActivityRecognitionResult [probableActivities=");
        sb.append(valueOf);
        sb.append(", timeMillis=");
        sb.append(j);
        sb.append(", elapsedRealtimeMillis=");
        sb.append(j2);
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21201c(parcel, 1, this.f6909a, false);
        C7031b.m21224a(parcel, 2, this.f6910b);
        C7031b.m21224a(parcel, 3, this.f6911c);
        C7031b.m21225a(parcel, 4, this.f6912d);
        C7031b.m21223a(parcel, 5, this.f6913e, false);
        C7031b.m21229a(parcel, a);
    }
}
