package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.Collections;
import java.util.List;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p280k.C8814a0;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/ActivityTransitionResult.class */
public class ActivityTransitionResult extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ActivityTransitionResult> CREATOR = new C8814a0();

    /* renamed from: a */
    public final List<ActivityTransitionEvent> f6923a;

    public ActivityTransitionResult(List<ActivityTransitionEvent> list) {
        C7021t.m21289a(list, "transitionEvents list can't be null.");
        if (!list.isEmpty()) {
            for (int i = 1; i < list.size(); i++) {
                C7021t.m21286a(list.get(i).m31820H() >= list.get(i - 1).m31820H());
            }
        }
        this.f6923a = Collections.unmodifiableList(list);
    }

    /* renamed from: c */
    public List<ActivityTransitionEvent> m31817c() {
        return this.f6923a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ActivityTransitionResult.class != obj.getClass()) {
            return false;
        }
        return this.f6923a.equals(((ActivityTransitionResult) obj).f6923a);
    }

    public int hashCode() {
        return this.f6923a.hashCode();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21201c(parcel, 1, m31817c(), false);
        C7031b.m21229a(parcel, a);
    }
}
