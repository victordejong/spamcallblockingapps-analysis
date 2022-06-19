package androidx.fragment.app;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentState.class */
public final class FragmentState implements Parcelable {
    public static final Parcelable.Creator<FragmentState> CREATOR = new C0180a();

    /* renamed from: a */
    public final String f892a;

    /* renamed from: b */
    public final String f893b;

    /* renamed from: c */
    public final boolean f894c;

    /* renamed from: d */
    public final int f895d;

    /* renamed from: e */
    public final int f896e;

    /* renamed from: f */
    public final String f897f;

    /* renamed from: g */
    public final boolean f898g;

    /* renamed from: h */
    public final boolean f899h;

    /* renamed from: i */
    public final boolean f900i;

    /* renamed from: j */
    public final Bundle f901j;

    /* renamed from: k */
    public final boolean f902k;

    /* renamed from: l */
    public final int f903l;

    /* renamed from: m */
    public Bundle f904m;

    /* renamed from: androidx.fragment.app.FragmentState$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentState$a.class */
    public class C0180a implements Parcelable.Creator<FragmentState> {
        @Override // android.os.Parcelable.Creator
        public FragmentState createFromParcel(Parcel parcel) {
            return new FragmentState(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public FragmentState[] newArray(int i) {
            return new FragmentState[i];
        }
    }

    public FragmentState(Parcel parcel) {
        this.f892a = parcel.readString();
        this.f893b = parcel.readString();
        this.f894c = parcel.readInt() != 0;
        this.f895d = parcel.readInt();
        this.f896e = parcel.readInt();
        this.f897f = parcel.readString();
        this.f898g = parcel.readInt() != 0;
        this.f899h = parcel.readInt() != 0;
        this.f900i = parcel.readInt() != 0;
        this.f901j = parcel.readBundle();
        this.f902k = parcel.readInt() != 0;
        this.f904m = parcel.readBundle();
        this.f903l = parcel.readInt();
    }

    public FragmentState(Fragment fragment) {
        this.f892a = fragment.getClass().getName();
        this.f893b = fragment.mWho;
        this.f894c = fragment.mFromLayout;
        this.f895d = fragment.mFragmentId;
        this.f896e = fragment.mContainerId;
        this.f897f = fragment.mTag;
        this.f898g = fragment.mRetainInstance;
        this.f899h = fragment.mRemoving;
        this.f900i = fragment.mDetached;
        this.f901j = fragment.mArguments;
        this.f902k = fragment.mHidden;
        this.f903l = fragment.mMaxState.ordinal();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        StringBuilder m8554x = C22128a.m8554x(128, "FragmentState{");
        m8554x.append(this.f892a);
        m8554x.append(" (");
        m8554x.append(this.f893b);
        m8554x.append(")}:");
        if (this.f894c) {
            m8554x.append(" fromLayout");
        }
        if (this.f896e != 0) {
            m8554x.append(" id=0x");
            m8554x.append(Integer.toHexString(this.f896e));
        }
        String str = this.f897f;
        if (str != null && !str.isEmpty()) {
            m8554x.append(" tag=");
            m8554x.append(this.f897f);
        }
        if (this.f898g) {
            m8554x.append(" retainInstance");
        }
        if (this.f899h) {
            m8554x.append(" removing");
        }
        if (this.f900i) {
            m8554x.append(" detached");
        }
        if (this.f902k) {
            m8554x.append(" hidden");
        }
        return m8554x.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f892a);
        parcel.writeString(this.f893b);
        parcel.writeInt(this.f894c ? 1 : 0);
        parcel.writeInt(this.f895d);
        parcel.writeInt(this.f896e);
        parcel.writeString(this.f897f);
        parcel.writeInt(this.f898g ? 1 : 0);
        parcel.writeInt(this.f899h ? 1 : 0);
        parcel.writeInt(this.f900i ? 1 : 0);
        parcel.writeBundle(this.f901j);
        parcel.writeInt(this.f902k ? 1 : 0);
        parcel.writeBundle(this.f904m);
        parcel.writeInt(this.f903l);
    }
}
