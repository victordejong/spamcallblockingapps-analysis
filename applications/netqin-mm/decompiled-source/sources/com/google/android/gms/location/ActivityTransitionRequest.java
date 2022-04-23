package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ClientIdentity;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.TreeSet;
import p131c.p161d.p170b.p224d.p259h.C4634c;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes-dex2jar.jar:com/google/android/gms/location/ActivityTransitionRequest.class */
public class ActivityTransitionRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ActivityTransitionRequest> CREATOR = new zzf();

    /* renamed from: d */
    public static final Comparator<ActivityTransition> f29711d = new C4634c();
    @SafeParcelable.Field

    /* renamed from: a */
    public final List<ActivityTransition> f29712a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final String f29713b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final List<ClientIdentity> f29714c;

    @SafeParcelable.Constructor
    public ActivityTransitionRequest(@SafeParcelable.Param(id = 1) List<ActivityTransition> list, @SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) List<ClientIdentity> list2) {
        Preconditions.m17287a(list, "transitions can't be null");
        Preconditions.m17283a(list.size() > 0, "transitions can't be empty.");
        TreeSet treeSet = new TreeSet(f29711d);
        for (ActivityTransition activityTransition : list) {
            Preconditions.m17283a(treeSet.add(activityTransition), String.format("Found duplicated transition: %s.", activityTransition));
        }
        this.f29712a = Collections.unmodifiableList(list);
        this.f29713b = str;
        this.f29714c = list2 == null ? Collections.emptyList() : Collections.unmodifiableList(list2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ActivityTransitionRequest.class != obj.getClass()) {
            return false;
        }
        ActivityTransitionRequest activityTransitionRequest = (ActivityTransitionRequest) obj;
        return Objects.m17295a(this.f29712a, activityTransitionRequest.f29712a) && Objects.m17295a(this.f29713b, activityTransitionRequest.f29713b) && Objects.m17295a(this.f29714c, activityTransitionRequest.f29714c);
    }

    public int hashCode() {
        int hashCode = this.f29712a.hashCode();
        String str = this.f29713b;
        int i = 0;
        int hashCode2 = str != null ? str.hashCode() : 0;
        List<ClientIdentity> list = this.f29714c;
        if (list != null) {
            i = list.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        String valueOf = String.valueOf(this.f29712a);
        String str = this.f29713b;
        String valueOf2 = String.valueOf(this.f29714c);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 61 + String.valueOf(str).length() + String.valueOf(valueOf2).length());
        sb.append("ActivityTransitionRequest [mTransitions=");
        sb.append(valueOf);
        sb.append(", mTag='");
        sb.append(str);
        sb.append('\'');
        sb.append(", mClients=");
        sb.append(valueOf2);
        sb.append(']');
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17207c(parcel, 1, this.f29712a, false);
        SafeParcelWriter.m17221a(parcel, 2, this.f29713b, false);
        SafeParcelWriter.m17207c(parcel, 3, this.f29714c, false);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
