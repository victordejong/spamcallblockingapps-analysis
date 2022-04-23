package com.google.android.gms.location;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/ActivityTransitionResult.class */
public class ActivityTransitionResult extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ActivityTransitionResult> CREATOR = new aq();
    private final List<ActivityTransitionEvent> zza;
    private Bundle zzb;

    public ActivityTransitionResult(List<ActivityTransitionEvent> list) {
        this.zzb = null;
        o.a(list, "transitionEvents list can't be null.");
        if (!list.isEmpty()) {
            for (int i = 1; i < list.size(); i++) {
                o.b(list.get(i).getElapsedRealTimeNanos() >= list.get(i - 1).getElapsedRealTimeNanos());
            }
        }
        this.zza = Collections.unmodifiableList(list);
    }

    public ActivityTransitionResult(List<ActivityTransitionEvent> list, Bundle bundle) {
        this(list);
        this.zzb = bundle;
    }

    public static ActivityTransitionResult extractResult(Intent intent) {
        if (!hasResult(intent)) {
            return null;
        }
        return (ActivityTransitionResult) b.a(intent, "com.google.android.location.internal.EXTRA_ACTIVITY_TRANSITION_RESULT", CREATOR);
    }

    public static boolean hasResult(Intent intent) {
        if (intent == null) {
            return false;
        }
        return intent.hasExtra("com.google.android.location.internal.EXTRA_ACTIVITY_TRANSITION_RESULT");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.zza.equals(((ActivityTransitionResult) obj).zza);
    }

    public List<ActivityTransitionEvent> getTransitionEvents() {
        return this.zza;
    }

    public int hashCode() {
        return this.zza.hashCode();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        o.a(parcel);
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, (List) getTransitionEvents(), false);
        a.a(parcel, 2, this.zzb, false);
        a.b(parcel, a2);
    }
}
