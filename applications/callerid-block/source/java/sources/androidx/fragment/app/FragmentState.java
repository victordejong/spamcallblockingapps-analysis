package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentState.class */
public final class FragmentState implements Parcelable {
    public static final Parcelable.Creator<FragmentState> CREATOR = new C0310a();

    /* renamed from: b */
    final String f1841b;

    /* renamed from: c */
    final String f1842c;

    /* renamed from: d */
    final boolean f1843d;

    /* renamed from: e */
    final int f1844e;

    /* renamed from: f */
    final int f1845f;

    /* renamed from: g */
    final String f1846g;

    /* renamed from: h */
    final boolean f1847h;

    /* renamed from: i */
    final boolean f1848i;

    /* renamed from: j */
    final boolean f1849j;

    /* renamed from: k */
    final Bundle f1850k;

    /* renamed from: l */
    final boolean f1851l;

    /* renamed from: m */
    final int f1852m;

    /* renamed from: n */
    Bundle f1853n;

    /* renamed from: androidx.fragment.app.FragmentState$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentState$a.class */
    static final class C0310a implements Parcelable.Creator<FragmentState> {
        C0310a() {
        }

        /* renamed from: a */
        public FragmentState createFromParcel(Parcel parcel) {
            return new FragmentState(parcel);
        }

        /* renamed from: b */
        public FragmentState[] newArray(int i) {
            return new FragmentState[i];
        }
    }

    FragmentState(Parcel parcel) {
        this.f1841b = parcel.readString();
        this.f1842c = parcel.readString();
        this.f1843d = parcel.readInt() != 0;
        this.f1844e = parcel.readInt();
        this.f1845f = parcel.readInt();
        this.f1846g = parcel.readString();
        this.f1847h = parcel.readInt() != 0;
        this.f1848i = parcel.readInt() != 0;
        this.f1849j = parcel.readInt() != 0;
        this.f1850k = parcel.readBundle();
        this.f1851l = parcel.readInt() != 0;
        this.f1853n = parcel.readBundle();
        this.f1852m = parcel.readInt();
    }

    public FragmentState(Fragment fragment) {
        this.f1841b = fragment.getClass().getName();
        this.f1842c = fragment.f;
        this.f1843d = fragment.n;
        this.f1844e = fragment.w;
        this.f1845f = fragment.x;
        this.f1846g = fragment.y;
        this.f1847h = fragment.B;
        this.f1848i = fragment.m;
        this.f1849j = fragment.A;
        this.f1850k = fragment.g;
        this.f1851l = fragment.z;
        this.f1852m = fragment.Q.ordinal();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentState{");
        sb.append(this.f1841b);
        sb.append(" (");
        sb.append(this.f1842c);
        sb.append(")}:");
        if (this.f1843d) {
            sb.append(" fromLayout");
        }
        if (this.f1845f != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.f1845f));
        }
        String str = this.f1846g;
        if (str != null && !str.isEmpty()) {
            sb.append(" tag=");
            sb.append(this.f1846g);
        }
        if (this.f1847h) {
            sb.append(" retainInstance");
        }
        if (this.f1848i) {
            sb.append(" removing");
        }
        if (this.f1849j) {
            sb.append(" detached");
        }
        if (this.f1851l) {
            sb.append(" hidden");
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f1841b);
        parcel.writeString(this.f1842c);
        parcel.writeInt(this.f1843d ? 1 : 0);
        parcel.writeInt(this.f1844e);
        parcel.writeInt(this.f1845f);
        parcel.writeString(this.f1846g);
        parcel.writeInt(this.f1847h ? 1 : 0);
        parcel.writeInt(this.f1848i ? 1 : 0);
        parcel.writeInt(this.f1849j ? 1 : 0);
        parcel.writeBundle(this.f1850k);
        parcel.writeInt(this.f1851l ? 1 : 0);
        parcel.writeBundle(this.f1853n);
        parcel.writeInt(this.f1852m);
    }
}
