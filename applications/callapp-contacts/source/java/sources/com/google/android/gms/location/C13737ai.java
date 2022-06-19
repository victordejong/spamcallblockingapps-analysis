package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.location.ai */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/ai.class */
public final class C13737ai implements Parcelable.Creator<SleepSegmentEvent> {
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SleepSegmentEvent createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        char c = 0;
        char c2 = 0;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c3 = (char) readInt;
            if (c3 == 1) {
                c = SafeParcelReader.m19135f(parcel, readInt);
            } else if (c3 == 2) {
                c2 = SafeParcelReader.m19135f(parcel, readInt);
            } else if (c3 == 3) {
                i = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c3 == 4) {
                i2 = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c3 != 5) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                i3 = SafeParcelReader.m19136e(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new SleepSegmentEvent(c, c2, i, i2, i3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ SleepSegmentEvent[] newArray(int i) {
        return new SleepSegmentEvent[i];
    }
}
