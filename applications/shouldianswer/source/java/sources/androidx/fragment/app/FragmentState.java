package androidx.fragment.app;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import androidx.lifecycle.AbstractC0896g;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentState.class */
public final class FragmentState implements Parcelable {
    public static final Parcelable.Creator<FragmentState> CREATOR = new Parcelable.Creator<FragmentState>() { // from class: androidx.fragment.app.FragmentState.1
        /* renamed from: a */
        public FragmentState createFromParcel(Parcel parcel) {
            return new FragmentState(parcel);
        }

        /* renamed from: a */
        public FragmentState[] newArray(int i) {
            return new FragmentState[i];
        }
    };

    /* renamed from: a */
    final String f2300a;

    /* renamed from: b */
    final String f2301b;

    /* renamed from: c */
    final boolean f2302c;

    /* renamed from: d */
    final int f2303d;

    /* renamed from: e */
    final int f2304e;

    /* renamed from: f */
    final String f2305f;

    /* renamed from: g */
    final boolean f2306g;

    /* renamed from: h */
    final boolean f2307h;

    /* renamed from: i */
    final boolean f2308i;

    /* renamed from: j */
    final Bundle f2309j;

    /* renamed from: k */
    final boolean f2310k;

    /* renamed from: l */
    final int f2311l;

    /* renamed from: m */
    Bundle f2312m;

    /* renamed from: n */
    Fragment f2313n;

    FragmentState(Parcel parcel) {
        this.f2300a = parcel.readString();
        this.f2301b = parcel.readString();
        this.f2302c = parcel.readInt() != 0;
        this.f2303d = parcel.readInt();
        this.f2304e = parcel.readInt();
        this.f2305f = parcel.readString();
        this.f2306g = parcel.readInt() != 0;
        this.f2307h = parcel.readInt() != 0;
        this.f2308i = parcel.readInt() != 0;
        this.f2309j = parcel.readBundle();
        this.f2310k = parcel.readInt() != 0;
        this.f2312m = parcel.readBundle();
        this.f2311l = parcel.readInt();
    }

    public FragmentState(Fragment fragment) {
        this.f2300a = fragment.getClass().getName();
        this.f2301b = fragment.mWho;
        this.f2302c = fragment.mFromLayout;
        this.f2303d = fragment.mFragmentId;
        this.f2304e = fragment.mContainerId;
        this.f2305f = fragment.mTag;
        this.f2306g = fragment.mRetainInstance;
        this.f2307h = fragment.mRemoving;
        this.f2308i = fragment.mDetached;
        this.f2309j = fragment.mArguments;
        this.f2310k = fragment.mHidden;
        this.f2311l = fragment.mMaxState.ordinal();
    }

    /* renamed from: a */
    public Fragment m5696a(ClassLoader classLoader, C0715f c0715f) {
        if (this.f2313n == null) {
            Bundle bundle = this.f2309j;
            if (bundle != null) {
                bundle.setClassLoader(classLoader);
            }
            this.f2313n = c0715f.mo5479c(classLoader, this.f2300a);
            this.f2313n.setArguments(this.f2309j);
            Bundle bundle2 = this.f2312m;
            if (bundle2 != null) {
                bundle2.setClassLoader(classLoader);
                this.f2313n.mSavedFragmentState = this.f2312m;
            } else {
                this.f2313n.mSavedFragmentState = new Bundle();
            }
            Fragment fragment = this.f2313n;
            fragment.mWho = this.f2301b;
            fragment.mFromLayout = this.f2302c;
            fragment.mRestored = true;
            fragment.mFragmentId = this.f2303d;
            fragment.mContainerId = this.f2304e;
            fragment.mTag = this.f2305f;
            fragment.mRetainInstance = this.f2306g;
            fragment.mRemoving = this.f2307h;
            fragment.mDetached = this.f2308i;
            fragment.mHidden = this.f2310k;
            fragment.mMaxState = AbstractC0896g.EnumC0898b.values()[this.f2311l];
            if (LayoutInflater$Factory2C0720i.f2340b) {
                Log.v("FragmentManager", "Instantiated fragment " + this.f2313n);
            }
        }
        return this.f2313n;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentState{");
        sb.append(this.f2300a);
        sb.append(" (");
        sb.append(this.f2301b);
        sb.append(")}:");
        if (this.f2302c) {
            sb.append(" fromLayout");
        }
        if (this.f2304e != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.f2304e));
        }
        String str = this.f2305f;
        if (str != null && !str.isEmpty()) {
            sb.append(" tag=");
            sb.append(this.f2305f);
        }
        if (this.f2306g) {
            sb.append(" retainInstance");
        }
        if (this.f2307h) {
            sb.append(" removing");
        }
        if (this.f2308i) {
            sb.append(" detached");
        }
        if (this.f2310k) {
            sb.append(" hidden");
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f2300a);
        parcel.writeString(this.f2301b);
        parcel.writeInt(this.f2302c ? 1 : 0);
        parcel.writeInt(this.f2303d);
        parcel.writeInt(this.f2304e);
        parcel.writeString(this.f2305f);
        parcel.writeInt(this.f2306g ? 1 : 0);
        parcel.writeInt(this.f2307h ? 1 : 0);
        parcel.writeInt(this.f2308i ? 1 : 0);
        parcel.writeBundle(this.f2309j);
        parcel.writeInt(this.f2310k ? 1 : 0);
        parcel.writeBundle(this.f2312m);
        parcel.writeInt(this.f2311l);
    }
}
