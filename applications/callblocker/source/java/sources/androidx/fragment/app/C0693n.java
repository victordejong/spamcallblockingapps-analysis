package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import androidx.lifecycle.AbstractC0864e;
@SuppressLint({"BanParcelableUsage"})
/* renamed from: androidx.fragment.app.n */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/n.class */
public final class C0693n implements Parcelable {
    public static final Parcelable.Creator<C0693n> CREATOR = new Parcelable.Creator<C0693n>() { // from class: androidx.fragment.app.n.1
        /* renamed from: a */
        public C0693n createFromParcel(Parcel parcel) {
            return new C0693n(parcel);
        }

        /* renamed from: a */
        public C0693n[] newArray(int i) {
            return new C0693n[i];
        }
    };

    /* renamed from: a */
    final String f2458a;

    /* renamed from: b */
    final String f2459b;

    /* renamed from: c */
    final boolean f2460c;

    /* renamed from: d */
    final int f2461d;

    /* renamed from: e */
    final int f2462e;

    /* renamed from: f */
    final String f2463f;

    /* renamed from: g */
    final boolean f2464g;

    /* renamed from: h */
    final boolean f2465h;

    /* renamed from: i */
    final boolean f2466i;

    /* renamed from: j */
    final Bundle f2467j;

    /* renamed from: k */
    final boolean f2468k;

    /* renamed from: l */
    final int f2469l;

    /* renamed from: m */
    Bundle f2470m;

    /* renamed from: n */
    Fragment f2471n;

    C0693n(Parcel parcel) {
        this.f2458a = parcel.readString();
        this.f2459b = parcel.readString();
        this.f2460c = parcel.readInt() != 0;
        this.f2461d = parcel.readInt();
        this.f2462e = parcel.readInt();
        this.f2463f = parcel.readString();
        this.f2464g = parcel.readInt() != 0;
        this.f2465h = parcel.readInt() != 0;
        this.f2466i = parcel.readInt() != 0;
        this.f2467j = parcel.readBundle();
        this.f2468k = parcel.readInt() != 0;
        this.f2470m = parcel.readBundle();
        this.f2469l = parcel.readInt();
    }

    public C0693n(Fragment fragment) {
        this.f2458a = fragment.getClass().getName();
        this.f2459b = fragment.f2291o;
        this.f2460c = fragment.f2298v;
        this.f2461d = fragment.f2258E;
        this.f2462e = fragment.f2259F;
        this.f2463f = fragment.f2260G;
        this.f2464g = fragment.f2263J;
        this.f2465h = fragment.f2297u;
        this.f2466i = fragment.f2262I;
        this.f2467j = fragment.f2292p;
        this.f2468k = fragment.f2261H;
        this.f2469l = fragment.f2279Z.ordinal();
    }

    /* renamed from: a */
    public Fragment m19669a(ClassLoader classLoader, C0668g c0668g) {
        if (this.f2471n == null) {
            if (this.f2467j != null) {
                this.f2467j.setClassLoader(classLoader);
            }
            this.f2471n = c0668g.mo19689c(classLoader, this.f2458a);
            this.f2471n.m19941g(this.f2467j);
            if (this.f2470m != null) {
                this.f2470m.setClassLoader(classLoader);
                this.f2471n.f2288l = this.f2470m;
            } else {
                this.f2471n.f2288l = new Bundle();
            }
            this.f2471n.f2291o = this.f2459b;
            this.f2471n.f2298v = this.f2460c;
            this.f2471n.f2300x = true;
            this.f2471n.f2258E = this.f2461d;
            this.f2471n.f2259F = this.f2462e;
            this.f2471n.f2260G = this.f2463f;
            this.f2471n.f2263J = this.f2464g;
            this.f2471n.f2297u = this.f2465h;
            this.f2471n.f2262I = this.f2466i;
            this.f2471n.f2261H = this.f2468k;
            this.f2471n.f2279Z = AbstractC0864e.EnumC0866b.values()[this.f2469l];
            if (LayoutInflater$Factory2C0673j.f2378b) {
                Log.v("FragmentManager", "Instantiated fragment " + this.f2471n);
            }
        }
        return this.f2471n;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentState{");
        sb.append(this.f2458a);
        sb.append(" (");
        sb.append(this.f2459b);
        sb.append(")}:");
        if (this.f2460c) {
            sb.append(" fromLayout");
        }
        if (this.f2462e != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.f2462e));
        }
        if (this.f2463f != null && !this.f2463f.isEmpty()) {
            sb.append(" tag=");
            sb.append(this.f2463f);
        }
        if (this.f2464g) {
            sb.append(" retainInstance");
        }
        if (this.f2465h) {
            sb.append(" removing");
        }
        if (this.f2466i) {
            sb.append(" detached");
        }
        if (this.f2468k) {
            sb.append(" hidden");
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f2458a);
        parcel.writeString(this.f2459b);
        parcel.writeInt(this.f2460c ? 1 : 0);
        parcel.writeInt(this.f2461d);
        parcel.writeInt(this.f2462e);
        parcel.writeString(this.f2463f);
        parcel.writeInt(this.f2464g ? 1 : 0);
        parcel.writeInt(this.f2465h ? 1 : 0);
        parcel.writeInt(this.f2466i ? 1 : 0);
        parcel.writeBundle(this.f2467j);
        parcel.writeInt(this.f2468k ? 1 : 0);
        parcel.writeBundle(this.f2470m);
        parcel.writeInt(this.f2469l);
    }
}
