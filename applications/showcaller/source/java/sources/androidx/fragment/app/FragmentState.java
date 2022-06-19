package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentState.class */
public final class FragmentState implements Parcelable {
    public static final Parcelable.Creator<FragmentState> CREATOR = new C0698a();

    /* renamed from: d */
    final String f3363d;

    /* renamed from: e */
    final String f3364e;

    /* renamed from: f */
    final boolean f3365f;

    /* renamed from: g */
    final int f3366g;

    /* renamed from: h */
    final int f3367h;

    /* renamed from: i */
    final String f3368i;

    /* renamed from: j */
    final boolean f3369j;

    /* renamed from: k */
    final boolean f3370k;

    /* renamed from: l */
    final boolean f3371l;

    /* renamed from: m */
    final Bundle f3372m;

    /* renamed from: n */
    final boolean f3373n;

    /* renamed from: o */
    final int f3374o;

    /* renamed from: p */
    Bundle f3375p;

    /* renamed from: androidx.fragment.app.FragmentState$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentState$a.class */
    class C0698a implements Parcelable.Creator<FragmentState> {
        C0698a() {
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
        this.f3363d = parcel.readString();
        this.f3364e = parcel.readString();
        this.f3365f = parcel.readInt() != 0;
        this.f3366g = parcel.readInt();
        this.f3367h = parcel.readInt();
        this.f3368i = parcel.readString();
        this.f3369j = parcel.readInt() != 0;
        this.f3370k = parcel.readInt() != 0;
        this.f3371l = parcel.readInt() != 0;
        this.f3372m = parcel.readBundle();
        this.f3373n = parcel.readInt() != 0;
        this.f3375p = parcel.readBundle();
        this.f3374o = parcel.readInt();
    }

    public FragmentState(Fragment fragment) {
        this.f3363d = fragment.getClass().getName();
        this.f3364e = fragment.f3225j;
        this.f3365f = fragment.f3233r;
        this.f3366g = fragment.f3190A;
        this.f3367h = fragment.f3191B;
        this.f3368i = fragment.f3192C;
        this.f3369j = fragment.f3195F;
        this.f3370k = fragment.f3232q;
        this.f3371l = fragment.f3194E;
        this.f3372m = fragment.f3226k;
        this.f3373n = fragment.f3193D;
        this.f3374o = fragment.f3211V.ordinal();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentState{");
        sb.append(this.f3363d);
        sb.append(" (");
        sb.append(this.f3364e);
        sb.append(")}:");
        if (this.f3365f) {
            sb.append(" fromLayout");
        }
        if (this.f3367h != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.f3367h));
        }
        String str = this.f3368i;
        if (str != null && !str.isEmpty()) {
            sb.append(" tag=");
            sb.append(this.f3368i);
        }
        if (this.f3369j) {
            sb.append(" retainInstance");
        }
        if (this.f3370k) {
            sb.append(" removing");
        }
        if (this.f3371l) {
            sb.append(" detached");
        }
        if (this.f3373n) {
            sb.append(" hidden");
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f3363d);
        parcel.writeString(this.f3364e);
        parcel.writeInt(this.f3365f ? 1 : 0);
        parcel.writeInt(this.f3366g);
        parcel.writeInt(this.f3367h);
        parcel.writeString(this.f3368i);
        parcel.writeInt(this.f3369j ? 1 : 0);
        parcel.writeInt(this.f3370k ? 1 : 0);
        parcel.writeInt(this.f3371l ? 1 : 0);
        parcel.writeBundle(this.f3372m);
        parcel.writeInt(this.f3373n ? 1 : 0);
        parcel.writeBundle(this.f3375p);
        parcel.writeInt(this.f3374o);
    }
}
