package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.FragmentManager;
import java.util.ArrayList;
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManagerState.class */
public final class FragmentManagerState implements Parcelable {
    public static final Parcelable.Creator<FragmentManagerState> CREATOR = new C0697a();

    /* renamed from: d */
    ArrayList<FragmentState> f3355d;

    /* renamed from: e */
    ArrayList<String> f3356e;

    /* renamed from: f */
    BackStackState[] f3357f;

    /* renamed from: g */
    int f3358g;

    /* renamed from: h */
    String f3359h;

    /* renamed from: i */
    ArrayList<String> f3360i;

    /* renamed from: j */
    ArrayList<Bundle> f3361j;

    /* renamed from: k */
    ArrayList<FragmentManager.LaunchedFragmentInfo> f3362k;

    /* renamed from: androidx.fragment.app.FragmentManagerState$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManagerState$a.class */
    class C0697a implements Parcelable.Creator<FragmentManagerState> {
        C0697a() {
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
        this.f3359h = null;
        this.f3360i = new ArrayList<>();
        this.f3361j = new ArrayList<>();
    }

    public FragmentManagerState(Parcel parcel) {
        this.f3359h = null;
        this.f3360i = new ArrayList<>();
        this.f3361j = new ArrayList<>();
        this.f3355d = parcel.createTypedArrayList(FragmentState.CREATOR);
        this.f3356e = parcel.createStringArrayList();
        this.f3357f = (BackStackState[]) parcel.createTypedArray(BackStackState.CREATOR);
        this.f3358g = parcel.readInt();
        this.f3359h = parcel.readString();
        this.f3360i = parcel.createStringArrayList();
        this.f3361j = parcel.createTypedArrayList(Bundle.CREATOR);
        this.f3362k = parcel.createTypedArrayList(FragmentManager.LaunchedFragmentInfo.CREATOR);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedList(this.f3355d);
        parcel.writeStringList(this.f3356e);
        parcel.writeTypedArray(this.f3357f, i);
        parcel.writeInt(this.f3358g);
        parcel.writeString(this.f3359h);
        parcel.writeStringList(this.f3360i);
        parcel.writeTypedList(this.f3361j);
        parcel.writeTypedList(this.f3362k);
    }
}
