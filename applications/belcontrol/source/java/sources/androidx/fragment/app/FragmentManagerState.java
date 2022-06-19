package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManagerState.class */
public final class FragmentManagerState implements Parcelable {
    public static final Parcelable.Creator<FragmentManagerState> CREATOR = new C0111a();

    /* renamed from: a */
    public ArrayList<FragmentState> f889a;

    /* renamed from: b */
    public ArrayList<String> f890b;

    /* renamed from: c */
    public BackStackState[] f891c;

    /* renamed from: d */
    public int f892d;

    /* renamed from: f */
    public String f893f;

    /* renamed from: androidx.fragment.app.FragmentManagerState$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManagerState$a.class */
    public static final class C0111a implements Parcelable.Creator<FragmentManagerState> {
        /* renamed from: a */
        public FragmentManagerState createFromParcel(Parcel parcel) {
            return new FragmentManagerState(parcel);
        }

        /* renamed from: b */
        public FragmentManagerState[] newArray(int i) {
            return new FragmentManagerState[i];
        }
    }

    public FragmentManagerState() {
        this.f893f = null;
    }

    public FragmentManagerState(Parcel parcel) {
        this.f893f = null;
        this.f889a = parcel.createTypedArrayList(FragmentState.CREATOR);
        this.f890b = parcel.createStringArrayList();
        this.f891c = (BackStackState[]) parcel.createTypedArray(BackStackState.CREATOR);
        this.f892d = parcel.readInt();
        this.f893f = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedList(this.f889a);
        parcel.writeStringList(this.f890b);
        parcel.writeTypedArray(this.f891c, i);
        parcel.writeInt(this.f892d);
        parcel.writeString(this.f893f);
    }
}
