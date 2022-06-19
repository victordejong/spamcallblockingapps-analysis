package android.telecom;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:android/telecom/ParcelableCall.class */
public class ParcelableCall implements Parcelable {
    public static final Parcelable.Creator<ParcelableCall> CREATOR = new Parcelable.Creator<ParcelableCall>() { // from class: android.telecom.ParcelableCall.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ ParcelableCall createFromParcel(Parcel parcel) {
            return new ParcelableCall();
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ ParcelableCall[] newArray(int i) {
            return new ParcelableCall[i];
        }
    };

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
    }
}
