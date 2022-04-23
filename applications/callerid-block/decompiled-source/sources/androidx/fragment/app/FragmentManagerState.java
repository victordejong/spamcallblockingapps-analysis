package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManagerState.class */
public final class FragmentManagerState implements Parcelable {
    public static final Parcelable.Creator<FragmentManagerState> CREATOR = new C0309a();

    /* renamed from: b */
    ArrayList<FragmentState> f1836b;

    /* renamed from: c */
    ArrayList<String> f1837c;

    /* renamed from: d */
    BackStackState[] f1838d;

    /* renamed from: e */
    int f1839e;

    /* renamed from: f */
    String f1840f;

    /* renamed from: androidx.fragment.app.FragmentManagerState$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManagerState$a.class */
    static final class C0309a implements Parcelable.Creator<FragmentManagerState> {
        C0309a() {
        }

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
        this.f1840f = null;
    }

    public FragmentManagerState(Parcel parcel) {
        this.f1840f = null;
        this.f1836b = parcel.createTypedArrayList(FragmentState.CREATOR);
        this.f1837c = parcel.createStringArrayList();
        this.f1838d = (BackStackState[]) parcel.createTypedArray(BackStackState.CREATOR);
        this.f1839e = parcel.readInt();
        this.f1840f = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedList(this.f1836b);
        parcel.writeStringList(this.f1837c);
        parcel.writeTypedArray(this.f1838d, i);
        parcel.writeInt(this.f1839e);
        parcel.writeString(this.f1840f);
    }
}
