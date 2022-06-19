package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.fragment.app.AbstractC0438i0;
import java.util.ArrayList;
@SuppressLint({"BanParcelableUsage"})
/* renamed from: androidx.fragment.app.b */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/b.class */
public final class C0413b implements Parcelable {
    public static final Parcelable.Creator<C0413b> CREATOR = new C0414a();

    /* renamed from: a */
    public final int[] f1740a;

    /* renamed from: b */
    public final ArrayList<String> f1741b;

    /* renamed from: c */
    public final int[] f1742c;

    /* renamed from: d */
    public final int[] f1743d;

    /* renamed from: e */
    public final int f1744e;

    /* renamed from: f */
    public final String f1745f;

    /* renamed from: g */
    public final int f1746g;

    /* renamed from: h */
    public final int f1747h;

    /* renamed from: i */
    public final CharSequence f1748i;

    /* renamed from: j */
    public final int f1749j;

    /* renamed from: k */
    public final CharSequence f1750k;

    /* renamed from: l */
    public final ArrayList<String> f1751l;

    /* renamed from: m */
    public final ArrayList<String> f1752m;

    /* renamed from: n */
    public final boolean f1753n;

    /* renamed from: androidx.fragment.app.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/b$a.class */
    public class C0414a implements Parcelable.Creator<C0413b> {
        @Override // android.os.Parcelable.Creator
        public C0413b createFromParcel(Parcel parcel) {
            return new C0413b(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public C0413b[] newArray(int i) {
            return new C0413b[i];
        }
    }

    public C0413b(Parcel parcel) {
        this.f1740a = parcel.createIntArray();
        this.f1741b = parcel.createStringArrayList();
        this.f1742c = parcel.createIntArray();
        this.f1743d = parcel.createIntArray();
        this.f1744e = parcel.readInt();
        this.f1745f = parcel.readString();
        this.f1746g = parcel.readInt();
        this.f1747h = parcel.readInt();
        this.f1748i = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f1749j = parcel.readInt();
        this.f1750k = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f1751l = parcel.createStringArrayList();
        this.f1752m = parcel.createStringArrayList();
        this.f1753n = parcel.readInt() != 0;
    }

    public C0413b(C0396a c0396a) {
        int size = c0396a.f1822a.size();
        this.f1740a = new int[size * 5];
        if (c0396a.f1828g) {
            this.f1741b = new ArrayList<>(size);
            this.f1742c = new int[size];
            this.f1743d = new int[size];
            int i = 0;
            int i2 = 0;
            while (i < size) {
                AbstractC0438i0.C0439a c0439a = c0396a.f1822a.get(i);
                int i3 = i2 + 1;
                this.f1740a[i2] = c0439a.f1838a;
                ArrayList<String> arrayList = this.f1741b;
                Fragment fragment = c0439a.f1839b;
                arrayList.add(fragment != null ? fragment.mWho : null);
                int[] iArr = this.f1740a;
                int i4 = i3 + 1;
                iArr[i3] = c0439a.f1840c;
                int i5 = i4 + 1;
                iArr[i4] = c0439a.f1841d;
                int i6 = i5 + 1;
                iArr[i5] = c0439a.f1842e;
                iArr[i6] = c0439a.f1843f;
                this.f1742c[i] = c0439a.f1844g.ordinal();
                this.f1743d[i] = c0439a.f1845h.ordinal();
                i++;
                i2 = i6 + 1;
            }
            this.f1744e = c0396a.f1827f;
            this.f1745f = c0396a.f1830i;
            this.f1746g = c0396a.f1686s;
            this.f1747h = c0396a.f1831j;
            this.f1748i = c0396a.f1832k;
            this.f1749j = c0396a.f1833l;
            this.f1750k = c0396a.f1834m;
            this.f1751l = c0396a.f1835n;
            this.f1752m = c0396a.f1836o;
            this.f1753n = c0396a.f1837p;
            return;
        }
        throw new IllegalStateException("Not on back stack");
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeIntArray(this.f1740a);
        parcel.writeStringList(this.f1741b);
        parcel.writeIntArray(this.f1742c);
        parcel.writeIntArray(this.f1743d);
        parcel.writeInt(this.f1744e);
        parcel.writeString(this.f1745f);
        parcel.writeInt(this.f1746g);
        parcel.writeInt(this.f1747h);
        TextUtils.writeToParcel(this.f1748i, parcel, 0);
        parcel.writeInt(this.f1749j);
        TextUtils.writeToParcel(this.f1750k, parcel, 0);
        parcel.writeStringList(this.f1751l);
        parcel.writeStringList(this.f1752m);
        parcel.writeInt(this.f1753n ? 1 : 0);
    }
}
