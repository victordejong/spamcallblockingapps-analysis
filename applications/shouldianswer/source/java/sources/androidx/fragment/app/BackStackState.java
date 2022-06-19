package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import androidx.fragment.app.AbstractC0738l;
import androidx.lifecycle.AbstractC0896g;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/BackStackState.class */
public final class BackStackState implements Parcelable {
    public static final Parcelable.Creator<BackStackState> CREATOR = new Parcelable.Creator<BackStackState>() { // from class: androidx.fragment.app.BackStackState.1
        /* renamed from: a */
        public BackStackState createFromParcel(Parcel parcel) {
            return new BackStackState(parcel);
        }

        /* renamed from: a */
        public BackStackState[] newArray(int i) {
            return new BackStackState[i];
        }
    };

    /* renamed from: a */
    final int[] f2256a;

    /* renamed from: b */
    final ArrayList<String> f2257b;

    /* renamed from: c */
    final int[] f2258c;

    /* renamed from: d */
    final int[] f2259d;

    /* renamed from: e */
    final int f2260e;

    /* renamed from: f */
    final int f2261f;

    /* renamed from: g */
    final String f2262g;

    /* renamed from: h */
    final int f2263h;

    /* renamed from: i */
    final int f2264i;

    /* renamed from: j */
    final CharSequence f2265j;

    /* renamed from: k */
    final int f2266k;

    /* renamed from: l */
    final CharSequence f2267l;

    /* renamed from: m */
    final ArrayList<String> f2268m;

    /* renamed from: n */
    final ArrayList<String> f2269n;

    /* renamed from: o */
    final boolean f2270o;

    public BackStackState(Parcel parcel) {
        this.f2256a = parcel.createIntArray();
        this.f2257b = parcel.createStringArrayList();
        this.f2258c = parcel.createIntArray();
        this.f2259d = parcel.createIntArray();
        this.f2260e = parcel.readInt();
        this.f2261f = parcel.readInt();
        this.f2262g = parcel.readString();
        this.f2263h = parcel.readInt();
        this.f2264i = parcel.readInt();
        this.f2265j = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f2266k = parcel.readInt();
        this.f2267l = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f2268m = parcel.createStringArrayList();
        this.f2269n = parcel.createStringArrayList();
        this.f2270o = parcel.readInt() != 0;
    }

    public BackStackState(C0708a c0708a) {
        int size = c0708a.f2417d.size();
        this.f2256a = new int[size * 5];
        if (c0708a.f2424k) {
            this.f2257b = new ArrayList<>(size);
            this.f2258c = new int[size];
            this.f2259d = new int[size];
            int i = 0;
            int i2 = 0;
            while (i < size) {
                AbstractC0738l.C0739a c0739a = c0708a.f2417d.get(i);
                int i3 = i2 + 1;
                this.f2256a[i2] = c0739a.f2435a;
                this.f2257b.add(c0739a.f2436b != null ? c0739a.f2436b.mWho : null);
                int i4 = i3 + 1;
                this.f2256a[i3] = c0739a.f2437c;
                int i5 = i4 + 1;
                this.f2256a[i4] = c0739a.f2438d;
                int i6 = i5 + 1;
                this.f2256a[i5] = c0739a.f2439e;
                this.f2256a[i6] = c0739a.f2440f;
                this.f2258c[i] = c0739a.f2441g.ordinal();
                this.f2259d[i] = c0739a.f2442h.ordinal();
                i++;
                i2 = i6 + 1;
            }
            this.f2260e = c0708a.f2422i;
            this.f2261f = c0708a.f2423j;
            this.f2262g = c0708a.f2426m;
            this.f2263h = c0708a.f2316c;
            this.f2264i = c0708a.f2427n;
            this.f2265j = c0708a.f2428o;
            this.f2266k = c0708a.f2429p;
            this.f2267l = c0708a.f2430q;
            this.f2268m = c0708a.f2431r;
            this.f2269n = c0708a.f2432s;
            this.f2270o = c0708a.f2433t;
            return;
        }
        throw new IllegalStateException("Not on back stack");
    }

    /* renamed from: a */
    public C0708a m5704a(LayoutInflater$Factory2C0720i layoutInflater$Factory2C0720i) {
        C0708a c0708a = new C0708a(layoutInflater$Factory2C0720i);
        int i = 0;
        int i2 = 0;
        while (i < this.f2256a.length) {
            AbstractC0738l.C0739a c0739a = new AbstractC0738l.C0739a();
            int i3 = i + 1;
            c0739a.f2435a = this.f2256a[i];
            if (LayoutInflater$Factory2C0720i.f2340b) {
                Log.v("FragmentManager", "Instantiate " + c0708a + " op #" + i2 + " base fragment #" + this.f2256a[i3]);
            }
            String str = this.f2257b.get(i2);
            if (str != null) {
                c0739a.f2436b = layoutInflater$Factory2C0720i.f2352g.get(str);
            } else {
                c0739a.f2436b = null;
            }
            c0739a.f2441g = AbstractC0896g.EnumC0898b.values()[this.f2258c[i2]];
            c0739a.f2442h = AbstractC0896g.EnumC0898b.values()[this.f2259d[i2]];
            int[] iArr = this.f2256a;
            int i4 = i3 + 1;
            c0739a.f2437c = iArr[i3];
            int i5 = i4 + 1;
            c0739a.f2438d = iArr[i4];
            int i6 = i5 + 1;
            c0739a.f2439e = iArr[i5];
            c0739a.f2440f = iArr[i6];
            c0708a.f2418e = c0739a.f2437c;
            c0708a.f2419f = c0739a.f2438d;
            c0708a.f2420g = c0739a.f2439e;
            c0708a.f2421h = c0739a.f2440f;
            c0708a.m5458a(c0739a);
            i2++;
            i = i6 + 1;
        }
        c0708a.f2422i = this.f2260e;
        c0708a.f2423j = this.f2261f;
        c0708a.f2426m = this.f2262g;
        c0708a.f2316c = this.f2263h;
        c0708a.f2424k = true;
        c0708a.f2427n = this.f2264i;
        c0708a.f2428o = this.f2265j;
        c0708a.f2429p = this.f2266k;
        c0708a.f2430q = this.f2267l;
        c0708a.f2431r = this.f2268m;
        c0708a.f2432s = this.f2269n;
        c0708a.f2433t = this.f2270o;
        c0708a.m5692a(1);
        return c0708a;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeIntArray(this.f2256a);
        parcel.writeStringList(this.f2257b);
        parcel.writeIntArray(this.f2258c);
        parcel.writeIntArray(this.f2259d);
        parcel.writeInt(this.f2260e);
        parcel.writeInt(this.f2261f);
        parcel.writeString(this.f2262g);
        parcel.writeInt(this.f2263h);
        parcel.writeInt(this.f2264i);
        TextUtils.writeToParcel(this.f2265j, parcel, 0);
        parcel.writeInt(this.f2266k);
        TextUtils.writeToParcel(this.f2267l, parcel, 0);
        parcel.writeStringList(this.f2268m);
        parcel.writeStringList(this.f2269n);
        parcel.writeInt(this.f2270o ? 1 : 0);
    }
}
