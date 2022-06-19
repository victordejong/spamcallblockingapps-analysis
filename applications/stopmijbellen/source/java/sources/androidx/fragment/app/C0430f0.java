package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
@SuppressLint({"BanParcelableUsage"})
/* renamed from: androidx.fragment.app.f0 */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/f0.class */
public final class C0430f0 implements Parcelable {
    public static final Parcelable.Creator<C0430f0> CREATOR = new C0431a();

    /* renamed from: a */
    public final String f1790a;

    /* renamed from: b */
    public final String f1791b;

    /* renamed from: c */
    public final boolean f1792c;

    /* renamed from: d */
    public final int f1793d;

    /* renamed from: e */
    public final int f1794e;

    /* renamed from: f */
    public final String f1795f;

    /* renamed from: g */
    public final boolean f1796g;

    /* renamed from: h */
    public final boolean f1797h;

    /* renamed from: i */
    public final boolean f1798i;

    /* renamed from: j */
    public final Bundle f1799j;

    /* renamed from: k */
    public final boolean f1800k;

    /* renamed from: l */
    public final int f1801l;

    /* renamed from: m */
    public Bundle f1802m;

    /* renamed from: androidx.fragment.app.f0$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/f0$a.class */
    public class C0431a implements Parcelable.Creator<C0430f0> {
        @Override // android.os.Parcelable.Creator
        public C0430f0 createFromParcel(Parcel parcel) {
            return new C0430f0(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public C0430f0[] newArray(int i) {
            return new C0430f0[i];
        }
    }

    public C0430f0(Parcel parcel) {
        this.f1790a = parcel.readString();
        this.f1791b = parcel.readString();
        this.f1792c = parcel.readInt() != 0;
        this.f1793d = parcel.readInt();
        this.f1794e = parcel.readInt();
        this.f1795f = parcel.readString();
        this.f1796g = parcel.readInt() != 0;
        this.f1797h = parcel.readInt() != 0;
        this.f1798i = parcel.readInt() != 0;
        this.f1799j = parcel.readBundle();
        this.f1800k = parcel.readInt() != 0;
        this.f1802m = parcel.readBundle();
        this.f1801l = parcel.readInt();
    }

    public C0430f0(Fragment fragment) {
        this.f1790a = fragment.getClass().getName();
        this.f1791b = fragment.mWho;
        this.f1792c = fragment.mFromLayout;
        this.f1793d = fragment.mFragmentId;
        this.f1794e = fragment.mContainerId;
        this.f1795f = fragment.mTag;
        this.f1796g = fragment.mRetainInstance;
        this.f1797h = fragment.mRemoving;
        this.f1798i = fragment.mDetached;
        this.f1799j = fragment.mArguments;
        this.f1800k = fragment.mHidden;
        this.f1801l = fragment.mMaxState.ordinal();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentState{");
        sb.append(this.f1790a);
        sb.append(" (");
        sb.append(this.f1791b);
        sb.append(")}:");
        if (this.f1792c) {
            sb.append(" fromLayout");
        }
        if (this.f1794e != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.f1794e));
        }
        String str = this.f1795f;
        if (str != null && !str.isEmpty()) {
            sb.append(" tag=");
            sb.append(this.f1795f);
        }
        if (this.f1796g) {
            sb.append(" retainInstance");
        }
        if (this.f1797h) {
            sb.append(" removing");
        }
        if (this.f1798i) {
            sb.append(" detached");
        }
        if (this.f1800k) {
            sb.append(" hidden");
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f1790a);
        parcel.writeString(this.f1791b);
        parcel.writeInt(this.f1792c ? 1 : 0);
        parcel.writeInt(this.f1793d);
        parcel.writeInt(this.f1794e);
        parcel.writeString(this.f1795f);
        parcel.writeInt(this.f1796g ? 1 : 0);
        parcel.writeInt(this.f1797h ? 1 : 0);
        parcel.writeInt(this.f1798i ? 1 : 0);
        parcel.writeBundle(this.f1799j);
        parcel.writeInt(this.f1800k ? 1 : 0);
        parcel.writeBundle(this.f1802m);
        parcel.writeInt(this.f1801l);
    }
}
