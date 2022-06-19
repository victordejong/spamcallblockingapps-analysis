package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import androidx.fragment.app.AbstractC0695o;
import androidx.lifecycle.AbstractC0864e;
import java.util.ArrayList;
@SuppressLint({"BanParcelableUsage"})
/* renamed from: androidx.fragment.app.b */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/b.class */
public final class C0660b implements Parcelable {
    public static final Parcelable.Creator<C0660b> CREATOR = new Parcelable.Creator<C0660b>() { // from class: androidx.fragment.app.b.1
        /* renamed from: a */
        public C0660b createFromParcel(Parcel parcel) {
            return new C0660b(parcel);
        }

        /* renamed from: a */
        public C0660b[] newArray(int i) {
            return new C0660b[i];
        }
    };

    /* renamed from: a */
    final int[] f2329a;

    /* renamed from: b */
    final ArrayList<String> f2330b;

    /* renamed from: c */
    final int[] f2331c;

    /* renamed from: d */
    final int[] f2332d;

    /* renamed from: e */
    final int f2333e;

    /* renamed from: f */
    final int f2334f;

    /* renamed from: g */
    final String f2335g;

    /* renamed from: h */
    final int f2336h;

    /* renamed from: i */
    final int f2337i;

    /* renamed from: j */
    final CharSequence f2338j;

    /* renamed from: k */
    final int f2339k;

    /* renamed from: l */
    final CharSequence f2340l;

    /* renamed from: m */
    final ArrayList<String> f2341m;

    /* renamed from: n */
    final ArrayList<String> f2342n;

    /* renamed from: o */
    final boolean f2343o;

    public C0660b(Parcel parcel) {
        this.f2329a = parcel.createIntArray();
        this.f2330b = parcel.createStringArrayList();
        this.f2331c = parcel.createIntArray();
        this.f2332d = parcel.createIntArray();
        this.f2333e = parcel.readInt();
        this.f2334f = parcel.readInt();
        this.f2335g = parcel.readString();
        this.f2336h = parcel.readInt();
        this.f2337i = parcel.readInt();
        this.f2338j = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f2339k = parcel.readInt();
        this.f2340l = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f2341m = parcel.createStringArrayList();
        this.f2342n = parcel.createStringArrayList();
        this.f2343o = parcel.readInt() != 0;
    }

    public C0660b(C0659a c0659a) {
        int size = c0659a.f2472d.size();
        this.f2329a = new int[size * 5];
        if (!c0659a.f2479k) {
            throw new IllegalStateException("Not on back stack");
        }
        this.f2330b = new ArrayList<>(size);
        this.f2331c = new int[size];
        this.f2332d = new int[size];
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            AbstractC0695o.C0696a c0696a = c0659a.f2472d.get(i2);
            int i3 = i + 1;
            this.f2329a[i] = c0696a.f2490a;
            this.f2330b.add(c0696a.f2491b != null ? c0696a.f2491b.f2291o : null);
            int i4 = i3 + 1;
            this.f2329a[i3] = c0696a.f2492c;
            int i5 = i4 + 1;
            this.f2329a[i4] = c0696a.f2493d;
            int i6 = i5 + 1;
            this.f2329a[i5] = c0696a.f2494e;
            i = i6 + 1;
            this.f2329a[i6] = c0696a.f2495f;
            this.f2331c[i2] = c0696a.f2496g.ordinal();
            this.f2332d[i2] = c0696a.f2497h.ordinal();
        }
        this.f2333e = c0659a.f2477i;
        this.f2334f = c0659a.f2478j;
        this.f2335g = c0659a.f2481m;
        this.f2336h = c0659a.f2328c;
        this.f2337i = c0659a.f2482n;
        this.f2338j = c0659a.f2483o;
        this.f2339k = c0659a.f2484p;
        this.f2340l = c0659a.f2485q;
        this.f2341m = c0659a.f2486r;
        this.f2342n = c0659a.f2487s;
        this.f2343o = c0659a.f2488t;
    }

    /* renamed from: a */
    public C0659a m19898a(LayoutInflater$Factory2C0673j layoutInflater$Factory2C0673j) {
        C0659a c0659a = new C0659a(layoutInflater$Factory2C0673j);
        int i = 0;
        int i2 = 0;
        while (i2 < this.f2329a.length) {
            AbstractC0695o.C0696a c0696a = new AbstractC0695o.C0696a();
            int i3 = i2 + 1;
            c0696a.f2490a = this.f2329a[i2];
            if (LayoutInflater$Factory2C0673j.f2378b) {
                Log.v("FragmentManager", "Instantiate " + c0659a + " op #" + i + " base fragment #" + this.f2329a[i3]);
            }
            String str = this.f2330b.get(i);
            if (str != null) {
                c0696a.f2491b = layoutInflater$Factory2C0673j.f2390g.get(str);
            } else {
                c0696a.f2491b = null;
            }
            c0696a.f2496g = AbstractC0864e.EnumC0866b.values()[this.f2331c[i]];
            c0696a.f2497h = AbstractC0864e.EnumC0866b.values()[this.f2332d[i]];
            int i4 = i3 + 1;
            c0696a.f2492c = this.f2329a[i3];
            int i5 = i4 + 1;
            c0696a.f2493d = this.f2329a[i4];
            int i6 = i5 + 1;
            c0696a.f2494e = this.f2329a[i5];
            i2 = i6 + 1;
            c0696a.f2495f = this.f2329a[i6];
            c0659a.f2473e = c0696a.f2492c;
            c0659a.f2474f = c0696a.f2493d;
            c0659a.f2475g = c0696a.f2494e;
            c0659a.f2476h = c0696a.f2495f;
            c0659a.m19658a(c0696a);
            i++;
        }
        c0659a.f2477i = this.f2333e;
        c0659a.f2478j = this.f2334f;
        c0659a.f2481m = this.f2335g;
        c0659a.f2328c = this.f2336h;
        c0659a.f2479k = true;
        c0659a.f2482n = this.f2337i;
        c0659a.f2483o = this.f2338j;
        c0659a.f2484p = this.f2339k;
        c0659a.f2485q = this.f2340l;
        c0659a.f2486r = this.f2341m;
        c0659a.f2487s = this.f2342n;
        c0659a.f2488t = this.f2343o;
        c0659a.m19912a(1);
        return c0659a;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int i2 = 0;
        parcel.writeIntArray(this.f2329a);
        parcel.writeStringList(this.f2330b);
        parcel.writeIntArray(this.f2331c);
        parcel.writeIntArray(this.f2332d);
        parcel.writeInt(this.f2333e);
        parcel.writeInt(this.f2334f);
        parcel.writeString(this.f2335g);
        parcel.writeInt(this.f2336h);
        parcel.writeInt(this.f2337i);
        TextUtils.writeToParcel(this.f2338j, parcel, 0);
        parcel.writeInt(this.f2339k);
        TextUtils.writeToParcel(this.f2340l, parcel, 0);
        parcel.writeStringList(this.f2341m);
        parcel.writeStringList(this.f2342n);
        if (this.f2343o) {
            i2 = 1;
        }
        parcel.writeInt(i2);
    }
}
