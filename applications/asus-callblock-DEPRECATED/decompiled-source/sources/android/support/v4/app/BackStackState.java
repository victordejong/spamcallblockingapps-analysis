package android.support.v4.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.app.d;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:android/support/v4/app/BackStackState.class */
public final class BackStackState implements Parcelable {
    public static final Parcelable.Creator<BackStackState> CREATOR = new Parcelable.Creator<BackStackState>() { // from class: android.support.v4.app.BackStackState.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ BackStackState createFromParcel(Parcel parcel) {
            return new BackStackState(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ BackStackState[] newArray(int i) {
            return new BackStackState[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    final int[] f27a;

    /* renamed from: b  reason: collision with root package name */
    final int f28b;
    final int c;
    final String d;
    final int e;
    final int f;
    final CharSequence g;
    final int h;
    final CharSequence i;
    final ArrayList<String> j;
    final ArrayList<String> k;

    public BackStackState(Parcel parcel) {
        this.f27a = parcel.createIntArray();
        this.f28b = parcel.readInt();
        this.c = parcel.readInt();
        this.d = parcel.readString();
        this.e = parcel.readInt();
        this.f = parcel.readInt();
        this.g = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.h = parcel.readInt();
        this.i = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.j = parcel.createStringArrayList();
        this.k = parcel.createStringArrayList();
    }

    public BackStackState(d dVar) {
        int i = 0;
        for (d.a aVar = dVar.c; aVar != null; aVar = aVar.f64a) {
            i = i;
            if (aVar.i != null) {
                i += aVar.i.size();
            }
        }
        this.f27a = new int[i + (dVar.e * 7)];
        if (!dVar.l) {
            throw new IllegalStateException("Not on back stack");
        }
        int i2 = 0;
        for (d.a aVar2 = dVar.c; aVar2 != null; aVar2 = aVar2.f64a) {
            int i3 = i2 + 1;
            this.f27a[i2] = aVar2.c;
            int i4 = i3 + 1;
            this.f27a[i3] = aVar2.d != null ? aVar2.d.p : -1;
            int i5 = i4 + 1;
            this.f27a[i4] = aVar2.e;
            int i6 = i5 + 1;
            this.f27a[i5] = aVar2.f;
            int i7 = i6 + 1;
            this.f27a[i6] = aVar2.g;
            int i8 = i7 + 1;
            this.f27a[i7] = aVar2.h;
            if (aVar2.i != null) {
                int size = aVar2.i.size();
                i2 = i8 + 1;
                this.f27a[i8] = size;
                int i9 = 0;
                while (i9 < size) {
                    this.f27a[i2] = aVar2.i.get(i9).p;
                    i9++;
                    i2++;
                }
            } else {
                i2 = i8 + 1;
                this.f27a[i8] = 0;
            }
        }
        this.f28b = dVar.j;
        this.c = dVar.k;
        this.d = dVar.n;
        this.e = dVar.p;
        this.f = dVar.q;
        this.g = dVar.r;
        this.h = dVar.s;
        this.i = dVar.t;
        this.j = dVar.u;
        this.k = dVar.v;
    }

    public final d a(n nVar) {
        d dVar = new d(nVar);
        int i = 0;
        int i2 = 0;
        while (i2 < this.f27a.length) {
            d.a aVar = new d.a();
            int i3 = i2 + 1;
            aVar.c = this.f27a[i2];
            if (n.f78a) {
                Log.v("FragmentManager", "Instantiate " + dVar + " op #" + i + " base fragment #" + this.f27a[i3]);
            }
            int i4 = i3 + 1;
            int i5 = this.f27a[i3];
            if (i5 >= 0) {
                aVar.d = nVar.f.get(i5);
            } else {
                aVar.d = null;
            }
            int i6 = i4 + 1;
            aVar.e = this.f27a[i4];
            int i7 = i6 + 1;
            aVar.f = this.f27a[i6];
            int i8 = i7 + 1;
            aVar.g = this.f27a[i7];
            int i9 = i8 + 1;
            aVar.h = this.f27a[i8];
            int i10 = i9 + 1;
            int i11 = this.f27a[i9];
            i2 = i10;
            if (i11 > 0) {
                aVar.i = new ArrayList<>(i11);
                int i12 = 0;
                while (true) {
                    i2 = i10;
                    if (i12 < i11) {
                        if (n.f78a) {
                            Log.v("FragmentManager", "Instantiate " + dVar + " set remove fragment #" + this.f27a[i10]);
                        }
                        aVar.i.add(nVar.f.get(this.f27a[i10]));
                        i12++;
                        i10++;
                    }
                }
            }
            dVar.f = aVar.e;
            dVar.g = aVar.f;
            dVar.h = aVar.g;
            dVar.i = aVar.h;
            dVar.a(aVar);
            i++;
        }
        dVar.j = this.f28b;
        dVar.k = this.c;
        dVar.n = this.d;
        dVar.p = this.e;
        dVar.l = true;
        dVar.q = this.f;
        dVar.r = this.g;
        dVar.s = this.h;
        dVar.t = this.i;
        dVar.u = this.j;
        dVar.v = this.k;
        dVar.a(1);
        return dVar;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeIntArray(this.f27a);
        parcel.writeInt(this.f28b);
        parcel.writeInt(this.c);
        parcel.writeString(this.d);
        parcel.writeInt(this.e);
        parcel.writeInt(this.f);
        TextUtils.writeToParcel(this.g, parcel, 0);
        parcel.writeInt(this.h);
        TextUtils.writeToParcel(this.i, parcel, 0);
        parcel.writeStringList(this.j);
        parcel.writeStringList(this.k);
    }
}
