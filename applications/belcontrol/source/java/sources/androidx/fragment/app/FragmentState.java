package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentState.class */
public final class FragmentState implements Parcelable {
    public static final Parcelable.Creator<FragmentState> CREATOR = new C0112a();

    /* renamed from: a */
    public final String f894a;

    /* renamed from: b */
    public final String f895b;

    /* renamed from: c */
    public final boolean f896c;

    /* renamed from: d */
    public final int f897d;

    /* renamed from: f */
    public final int f898f;

    /* renamed from: g */
    public final String f899g;

    /* renamed from: h */
    public final boolean f900h;

    /* renamed from: j */
    public final boolean f901j;

    /* renamed from: k */
    public final boolean f902k;

    /* renamed from: l */
    public final Bundle f903l;

    /* renamed from: m */
    public final boolean f904m;

    /* renamed from: n */
    public final int f905n;

    /* renamed from: o */
    public Bundle f906o;

    /* renamed from: androidx.fragment.app.FragmentState$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentState$a.class */
    public static final class C0112a implements Parcelable.Creator<FragmentState> {
        /* renamed from: a */
        public FragmentState createFromParcel(Parcel parcel) {
            return new FragmentState(parcel);
        }

        /* renamed from: b */
        public FragmentState[] newArray(int i) {
            return new FragmentState[i];
        }
    }

    public FragmentState(Parcel parcel) {
        this.f894a = parcel.readString();
        this.f895b = parcel.readString();
        this.f896c = parcel.readInt() != 0;
        this.f897d = parcel.readInt();
        this.f898f = parcel.readInt();
        this.f899g = parcel.readString();
        this.f900h = parcel.readInt() != 0;
        this.f901j = parcel.readInt() != 0;
        this.f902k = parcel.readInt() != 0;
        this.f903l = parcel.readBundle();
        this.f904m = parcel.readInt() != 0;
        this.f906o = parcel.readBundle();
        this.f905n = parcel.readInt();
    }

    public FragmentState(Fragment fragment) {
        this.f894a = fragment.getClass().getName();
        this.f895b = fragment.mWho;
        this.f896c = fragment.mFromLayout;
        this.f897d = fragment.mFragmentId;
        this.f898f = fragment.mContainerId;
        this.f899g = fragment.mTag;
        this.f900h = fragment.mRetainInstance;
        this.f901j = fragment.mRemoving;
        this.f902k = fragment.mDetached;
        this.f903l = fragment.mArguments;
        this.f904m = fragment.mHidden;
        this.f905n = fragment.mMaxState.ordinal();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentState{");
        sb.append(this.f894a);
        sb.append(" (");
        sb.append(this.f895b);
        sb.append(")}:");
        if (this.f896c) {
            sb.append(" fromLayout");
        }
        if (this.f898f != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.f898f));
        }
        String str = this.f899g;
        if (str != null && !str.isEmpty()) {
            sb.append(" tag=");
            sb.append(this.f899g);
        }
        if (this.f900h) {
            sb.append(" retainInstance");
        }
        if (this.f901j) {
            sb.append(" removing");
        }
        if (this.f902k) {
            sb.append(" detached");
        }
        if (this.f904m) {
            sb.append(" hidden");
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f894a);
        parcel.writeString(this.f895b);
        parcel.writeInt(this.f896c ? 1 : 0);
        parcel.writeInt(this.f897d);
        parcel.writeInt(this.f898f);
        parcel.writeString(this.f899g);
        parcel.writeInt(this.f900h ? 1 : 0);
        parcel.writeInt(this.f901j ? 1 : 0);
        parcel.writeInt(this.f902k ? 1 : 0);
        parcel.writeBundle(this.f903l);
        parcel.writeInt(this.f904m ? 1 : 0);
        parcel.writeBundle(this.f906o);
        parcel.writeInt(this.f905n);
    }
}
