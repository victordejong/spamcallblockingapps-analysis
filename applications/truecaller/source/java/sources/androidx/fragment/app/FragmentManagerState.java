package androidx.fragment.app;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.FragmentManager;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManagerState.class */
public final class FragmentManagerState implements Parcelable {
    public static final Parcelable.Creator<FragmentManagerState> CREATOR = new C0179a();

    /* renamed from: a */
    public ArrayList<FragmentState> f884a;

    /* renamed from: b */
    public ArrayList<String> f885b;

    /* renamed from: c */
    public BackStackState[] f886c;

    /* renamed from: d */
    public int f887d;

    /* renamed from: e */
    public String f888e;

    /* renamed from: f */
    public ArrayList<String> f889f;

    /* renamed from: g */
    public ArrayList<Bundle> f890g;

    /* renamed from: h */
    public ArrayList<FragmentManager.LaunchedFragmentInfo> f891h;

    /* renamed from: androidx.fragment.app.FragmentManagerState$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManagerState$a.class */
    public class C0179a implements Parcelable.Creator<FragmentManagerState> {
        @Override // android.os.Parcelable.Creator
        public FragmentManagerState createFromParcel(Parcel parcel) {
            return new FragmentManagerState(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public FragmentManagerState[] newArray(int i) {
            return new FragmentManagerState[i];
        }
    }

    public FragmentManagerState() {
        this.f888e = null;
        this.f889f = new ArrayList<>();
        this.f890g = new ArrayList<>();
    }

    public FragmentManagerState(Parcel parcel) {
        this.f888e = null;
        this.f889f = new ArrayList<>();
        this.f890g = new ArrayList<>();
        this.f884a = parcel.createTypedArrayList(FragmentState.CREATOR);
        this.f885b = parcel.createStringArrayList();
        this.f886c = (BackStackState[]) parcel.createTypedArray(BackStackState.CREATOR);
        this.f887d = parcel.readInt();
        this.f888e = parcel.readString();
        this.f889f = parcel.createStringArrayList();
        this.f890g = parcel.createTypedArrayList(Bundle.CREATOR);
        this.f891h = parcel.createTypedArrayList(FragmentManager.LaunchedFragmentInfo.CREATOR);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedList(this.f884a);
        parcel.writeStringList(this.f885b);
        parcel.writeTypedArray(this.f886c, i);
        parcel.writeInt(this.f887d);
        parcel.writeString(this.f888e);
        parcel.writeStringList(this.f889f);
        parcel.writeTypedList(this.f890g);
        parcel.writeTypedList(this.f891h);
    }
}
