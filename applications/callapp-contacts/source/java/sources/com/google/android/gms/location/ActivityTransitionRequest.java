package com.google.android.gms.location;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C12041m;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.internal.ClientIdentity;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import com.google.android.gms.common.internal.safeparcel.C12051b;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.TreeSet;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/ActivityTransitionRequest.class */
public class ActivityTransitionRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ActivityTransitionRequest> CREATOR = new C13744ap();
    public static final Comparator<ActivityTransition> IS_SAME_TRANSITION = new C13743ao();
    private final List<ActivityTransition> zza;
    private final String zzb;
    private final List<ClientIdentity> zzc;
    private String zzd;

    public ActivityTransitionRequest(List<ActivityTransition> list) {
        this(list, null, null, null);
    }

    public ActivityTransitionRequest(List<ActivityTransition> list, String str, List<ClientIdentity> list2, String str2) {
        C12045o.m19161a(list, "transitions can't be null");
        C12045o.m19153b(list.size() > 0, "transitions can't be empty.");
        C12045o.m19162a(list);
        TreeSet treeSet = new TreeSet(IS_SAME_TRANSITION);
        for (ActivityTransition activityTransition : list) {
            C12045o.m19153b(treeSet.add(activityTransition), String.format("Found duplicated transition: %s.", activityTransition));
        }
        this.zza = Collections.unmodifiableList(list);
        this.zzb = str;
        this.zzc = list2 == null ? Collections.emptyList() : Collections.unmodifiableList(list2);
        this.zzd = str2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ActivityTransitionRequest activityTransitionRequest = (ActivityTransitionRequest) obj;
        return C12041m.m19168a(this.zza, activityTransitionRequest.zza) && C12041m.m19168a(this.zzb, activityTransitionRequest.zzb) && C12041m.m19168a(this.zzd, activityTransitionRequest.zzd) && C12041m.m19168a(this.zzc, activityTransitionRequest.zzc);
    }

    public int hashCode() {
        int hashCode = this.zza.hashCode();
        String str = this.zzb;
        int i = 0;
        int hashCode2 = str != null ? str.hashCode() : 0;
        List<ClientIdentity> list = this.zzc;
        int hashCode3 = list != null ? list.hashCode() : 0;
        String str2 = this.zzd;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    public void serializeToIntentExtra(Intent intent) {
        C12045o.m19162a(intent);
        C12051b.m19090a(this, intent, "com.google.android.location.internal.EXTRA_ACTIVITY_TRANSITION_REQUEST");
    }

    public String toString() {
        String valueOf = String.valueOf(this.zza);
        String str = this.zzb;
        String valueOf2 = String.valueOf(this.zzc);
        String str2 = this.zzd;
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 79 + String.valueOf(str).length() + String.valueOf(valueOf2).length() + String.valueOf(str2).length());
        sb.append("ActivityTransitionRequest [mTransitions=");
        sb.append(valueOf);
        sb.append(", mTag='");
        sb.append(str);
        sb.append("', mClients=");
        sb.append(valueOf2);
        sb.append(", mAttributionTag=");
        sb.append(str2);
        sb.append(']');
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        C12045o.m19162a(parcel);
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19102a(parcel, 1, (List) this.zza, false);
        C12050a.m19104a(parcel, 2, this.zzb, false);
        C12050a.m19102a(parcel, 3, (List) this.zzc, false);
        C12050a.m19104a(parcel, 4, this.zzd, false);
        C12050a.m19095b(parcel, m19116a);
    }

    public final ActivityTransitionRequest zza(String str) {
        this.zzd = str;
        return this;
    }
}
