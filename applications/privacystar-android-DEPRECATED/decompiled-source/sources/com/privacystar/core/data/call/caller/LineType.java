package com.privacystar.core.data.call.caller;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/call/caller/LineType.class */
public enum LineType implements Parcelable {
    Mobile,
    Landline,
    Unknown;
    
    public static final Parcelable.Creator<LineType> CREATOR = new Parcelable.Creator<LineType>() { // from class: com.privacystar.core.data.call.caller.LineType.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LineType createFromParcel(Parcel parcel) {
            return LineType.values()[parcel.readInt()];
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LineType[] newArray(int i) {
            return new LineType[i];
        }
    };

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(ordinal());
    }
}
