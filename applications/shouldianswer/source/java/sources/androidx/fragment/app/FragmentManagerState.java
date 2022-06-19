package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManagerState.class */
public final class FragmentManagerState implements Parcelable {
    public static final Parcelable.Creator<FragmentManagerState> CREATOR = new Parcelable.Creator<FragmentManagerState>() { // from class: androidx.fragment.app.FragmentManagerState.1
        /* renamed from: a */
        public FragmentManagerState createFromParcel(Parcel parcel) {
            return new FragmentManagerState(parcel);
        }

        /* renamed from: a */
        public FragmentManagerState[] newArray(int i) {
            return new FragmentManagerState[i];
        }
    };

    /* renamed from: a */
    ArrayList<FragmentState> f2295a;

    /* renamed from: b */
    ArrayList<String> f2296b;

    /* renamed from: c */
    BackStackState[] f2297c;

    /* renamed from: d */
    String f2298d;

    /* renamed from: e */
    int f2299e;

    public FragmentManagerState() {
        this.f2298d = null;
    }

    public FragmentManagerState(Parcel parcel) {
        this.f2298d = null;
        this.f2295a = parcel.createTypedArrayList(FragmentState.CREATOR);
        this.f2296b = parcel.createStringArrayList();
        this.f2297c = (BackStackState[]) parcel.createTypedArray(BackStackState.CREATOR);
        this.f2298d = parcel.readString();
        this.f2299e = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedList(this.f2295a);
        parcel.writeStringList(this.f2296b);
        parcel.writeTypedArray(this.f2297c, i);
        parcel.writeString(this.f2298d);
        parcel.writeInt(this.f2299e);
    }
}
