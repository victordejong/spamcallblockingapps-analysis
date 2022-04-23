package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import androidx.fragment.app.AbstractC0334p;
import androidx.lifecycle.Lifecycle;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/BackStackState.class */
public final class BackStackState implements Parcelable {
    public static final Parcelable.Creator<BackStackState> CREATOR = new C0307a();

    /* renamed from: b */
    final int[] f1799b;

    /* renamed from: c */
    final ArrayList<String> f1800c;

    /* renamed from: d */
    final int[] f1801d;

    /* renamed from: e */
    final int[] f1802e;

    /* renamed from: f */
    final int f1803f;

    /* renamed from: g */
    final String f1804g;

    /* renamed from: h */
    final int f1805h;

    /* renamed from: i */
    final int f1806i;

    /* renamed from: j */
    final CharSequence f1807j;

    /* renamed from: k */
    final int f1808k;

    /* renamed from: l */
    final CharSequence f1809l;

    /* renamed from: m */
    final ArrayList<String> f1810m;

    /* renamed from: n */
    final ArrayList<String> f1811n;

    /* renamed from: o */
    final boolean f1812o;

    /* renamed from: androidx.fragment.app.BackStackState$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/BackStackState$a.class */
    static final class C0307a implements Parcelable.Creator<BackStackState> {
        C0307a() {
        }

        /* renamed from: a */
        public BackStackState createFromParcel(Parcel parcel) {
            return new BackStackState(parcel);
        }

        /* renamed from: b */
        public BackStackState[] newArray(int i) {
            return new BackStackState[i];
        }
    }

    public BackStackState(Parcel parcel) {
        this.f1799b = parcel.createIntArray();
        this.f1800c = parcel.createStringArrayList();
        this.f1801d = parcel.createIntArray();
        this.f1802e = parcel.createIntArray();
        this.f1803f = parcel.readInt();
        this.f1804g = parcel.readString();
        this.f1805h = parcel.readInt();
        this.f1806i = parcel.readInt();
        this.f1807j = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f1808k = parcel.readInt();
        this.f1809l = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f1810m = parcel.createStringArrayList();
        this.f1811n = parcel.createStringArrayList();
        this.f1812o = parcel.readInt() != 0;
    }

    public BackStackState(a aVar) {
        int size = aVar.f1936a.size();
        this.f1799b = new int[size * 5];
        if (aVar.f1942g) {
            this.f1800c = new ArrayList<>(size);
            this.f1801d = new int[size];
            this.f1802e = new int[size];
            int i = 0;
            int i2 = 0;
            while (i < size) {
                AbstractC0334p.C0335a aVar2 = aVar.f1936a.get(i);
                int i3 = i2 + 1;
                this.f1799b[i2] = aVar2.f1952a;
                ArrayList<String> arrayList = this.f1800c;
                Fragment fragment = aVar2.f1953b;
                arrayList.add(fragment != null ? fragment.f : null);
                int[] iArr = this.f1799b;
                int i4 = i3 + 1;
                iArr[i3] = aVar2.f1954c;
                int i5 = i4 + 1;
                iArr[i4] = aVar2.f1955d;
                int i6 = i5 + 1;
                iArr[i5] = aVar2.f1956e;
                iArr[i6] = aVar2.f1957f;
                this.f1801d[i] = aVar2.f1958g.ordinal();
                this.f1802e[i] = aVar2.f1959h.ordinal();
                i++;
                i2 = i6 + 1;
            }
            this.f1803f = aVar.f1941f;
            this.f1804g = aVar.f1943h;
            this.f1805h = aVar.s;
            this.f1806i = aVar.f1944i;
            this.f1807j = aVar.f1945j;
            this.f1808k = aVar.f1946k;
            this.f1809l = aVar.f1947l;
            this.f1810m = aVar.f1948m;
            this.f1811n = aVar.f1949n;
            this.f1812o = aVar.f1950o;
            return;
        }
        throw new IllegalStateException("Not on back stack");
    }

    /* renamed from: a */
    public a m13322a(AbstractC0325j jVar) {
        a aVar = new a(jVar);
        int i = 0;
        int i2 = 0;
        while (true) {
            int[] iArr = this.f1799b;
            if (i < iArr.length) {
                AbstractC0334p.C0335a aVar2 = new AbstractC0334p.C0335a();
                int i3 = i + 1;
                aVar2.f1952a = iArr[i];
                if (AbstractC0325j.m13169q0(2)) {
                    Log.v("FragmentManager", "Instantiate " + aVar + " op #" + i2 + " base fragment #" + this.f1799b[i3]);
                }
                String str = this.f1800c.get(i2);
                aVar2.f1953b = str != null ? jVar.m13209W(str) : null;
                aVar2.f1958g = Lifecycle.State.values()[this.f1801d[i2]];
                aVar2.f1959h = Lifecycle.State.values()[this.f1802e[i2]];
                int[] iArr2 = this.f1799b;
                int i4 = i3 + 1;
                int i5 = iArr2[i3];
                aVar2.f1954c = i5;
                int i6 = i4 + 1;
                int i7 = iArr2[i4];
                aVar2.f1955d = i7;
                int i8 = i6 + 1;
                int i9 = iArr2[i6];
                aVar2.f1956e = i9;
                int i10 = iArr2[i8];
                aVar2.f1957f = i10;
                aVar.f1937b = i5;
                aVar.f1938c = i7;
                aVar.f1939d = i9;
                aVar.f1940e = i10;
                aVar.m13092e(aVar2);
                i2++;
                i = i8 + 1;
            } else {
                aVar.f1941f = this.f1803f;
                aVar.f1943h = this.f1804g;
                aVar.s = this.f1805h;
                aVar.f1942g = true;
                aVar.f1944i = this.f1806i;
                aVar.f1945j = this.f1807j;
                aVar.f1946k = this.f1808k;
                aVar.f1947l = this.f1809l;
                aVar.f1948m = this.f1810m;
                aVar.f1949n = this.f1811n;
                aVar.f1950o = this.f1812o;
                aVar.p(1);
                return aVar;
            }
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeIntArray(this.f1799b);
        parcel.writeStringList(this.f1800c);
        parcel.writeIntArray(this.f1801d);
        parcel.writeIntArray(this.f1802e);
        parcel.writeInt(this.f1803f);
        parcel.writeString(this.f1804g);
        parcel.writeInt(this.f1805h);
        parcel.writeInt(this.f1806i);
        TextUtils.writeToParcel(this.f1807j, parcel, 0);
        parcel.writeInt(this.f1808k);
        TextUtils.writeToParcel(this.f1809l, parcel, 0);
        parcel.writeStringList(this.f1810m);
        parcel.writeStringList(this.f1811n);
        parcel.writeInt(this.f1812o ? 1 : 0);
    }
}
