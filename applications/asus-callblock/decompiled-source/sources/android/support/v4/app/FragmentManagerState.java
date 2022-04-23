package android.support.v4.app;

import android.os.Parcel;
import android.os.Parcelable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:android/support/v4/app/FragmentManagerState.class */
public final class FragmentManagerState implements Parcelable {
    public static final Parcelable.Creator<FragmentManagerState> CREATOR = new Parcelable.Creator<FragmentManagerState>() { // from class: android.support.v4.app.FragmentManagerState.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ FragmentManagerState createFromParcel(Parcel parcel) {
            return new FragmentManagerState(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ FragmentManagerState[] newArray(int i) {
            return new FragmentManagerState[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    FragmentState[] f32a;

    /* renamed from: b  reason: collision with root package name */
    int[] f33b;
    BackStackState[] c;

    public FragmentManagerState() {
    }

    public FragmentManagerState(Parcel parcel) {
        this.f32a = (FragmentState[]) parcel.createTypedArray(FragmentState.CREATOR);
        this.f33b = parcel.createIntArray();
        this.c = (BackStackState[]) parcel.createTypedArray(BackStackState.CREATOR);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedArray(this.f32a, i);
        parcel.writeIntArray(this.f33b);
        parcel.writeTypedArray(this.c, i);
    }
}
