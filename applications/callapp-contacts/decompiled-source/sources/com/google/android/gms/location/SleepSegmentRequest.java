package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/SleepSegmentRequest.class */
public class SleepSegmentRequest extends AbstractSafeParcelable {
    public static final int CLASSIFY_EVENTS_ONLY = 2;
    public static final Parcelable.Creator<SleepSegmentRequest> CREATOR = new aj();
    public static final int SEGMENT_AND_CLASSIFY_EVENTS = 0;
    public static final int SEGMENT_EVENTS_ONLY = 1;
    private final List<zzbx> zza;
    private final int zzb;

    public SleepSegmentRequest(int i) {
        this(null, i);
    }

    public SleepSegmentRequest(List<zzbx> list, int i) {
        this.zza = list;
        this.zzb = i;
    }

    public static SleepSegmentRequest getDefaultSleepSegmentRequest() {
        return new SleepSegmentRequest(null, 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SleepSegmentRequest)) {
            return false;
        }
        SleepSegmentRequest sleepSegmentRequest = (SleepSegmentRequest) obj;
        return m.a(this.zza, sleepSegmentRequest.zza) && this.zzb == sleepSegmentRequest.zzb;
    }

    public int getRequestedDataType() {
        return this.zzb;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.zza, Integer.valueOf(this.zzb)});
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        o.a(parcel);
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, (List) this.zza, false);
        a.a(parcel, 2, getRequestedDataType());
        a.b(parcel, a2);
    }
}
