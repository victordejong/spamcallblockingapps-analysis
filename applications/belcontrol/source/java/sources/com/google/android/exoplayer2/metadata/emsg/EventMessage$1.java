package com.google.android.exoplayer2.metadata.emsg;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/emsg/EventMessage$1.class */
public final class EventMessage$1 implements Parcelable.Creator<EventMessage> {
    @Override // android.os.Parcelable.Creator
    public EventMessage createFromParcel(Parcel parcel) {
        return new EventMessage(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public EventMessage[] newArray(int i) {
        return new EventMessage[i];
    }
}
