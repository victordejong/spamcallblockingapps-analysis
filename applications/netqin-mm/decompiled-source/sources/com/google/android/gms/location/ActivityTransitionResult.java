package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Collections;
import java.util.List;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes-dex2jar.jar:com/google/android/gms/location/ActivityTransitionResult.class */
public class ActivityTransitionResult extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ActivityTransitionResult> CREATOR = new zzg();
    @SafeParcelable.Field

    /* renamed from: a */
    public final List<ActivityTransitionEvent> f29715a;

    @SafeParcelable.Constructor
    public ActivityTransitionResult(@SafeParcelable.Param(id = 1) List<ActivityTransitionEvent> list) {
        Preconditions.m17287a(list, "transitionEvents list can't be null.");
        if (!list.isEmpty()) {
            for (int i = 1; i < list.size(); i++) {
                Preconditions.m17284a(list.get(i).m9421i() >= list.get(i - 1).m9421i());
            }
        }
        this.f29715a = Collections.unmodifiableList(list);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ActivityTransitionResult.class != obj.getClass()) {
            return false;
        }
        return this.f29715a.equals(((ActivityTransitionResult) obj).f29715a);
    }

    /* renamed from: f */
    public List<ActivityTransitionEvent> m9419f() {
        return this.f29715a;
    }

    public int hashCode() {
        return this.f29715a.hashCode();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17207c(parcel, 1, m9419f(), false);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
