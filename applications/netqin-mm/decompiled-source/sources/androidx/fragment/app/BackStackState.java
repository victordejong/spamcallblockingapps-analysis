package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import androidx.lifecycle.Lifecycle;
import java.util.ArrayList;
import p012b.p063m.p064a.AbstractC1079j;
import p012b.p063m.p064a.C1052a;
import p012b.p063m.p064a.LayoutInflater$Factory2C1062h;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/BackStackState.class */
public final class BackStackState implements Parcelable {
    public static final Parcelable.Creator<BackStackState> CREATOR = new C0218a();

    /* renamed from: a */
    public final int[] f1244a;

    /* renamed from: b */
    public final ArrayList<String> f1245b;

    /* renamed from: c */
    public final int[] f1246c;

    /* renamed from: d */
    public final int[] f1247d;

    /* renamed from: e */
    public final int f1248e;

    /* renamed from: f */
    public final int f1249f;

    /* renamed from: g */
    public final String f1250g;

    /* renamed from: h */
    public final int f1251h;

    /* renamed from: i */
    public final int f1252i;

    /* renamed from: j */
    public final CharSequence f1253j;

    /* renamed from: k */
    public final int f1254k;

    /* renamed from: l */
    public final CharSequence f1255l;

    /* renamed from: m */
    public final ArrayList<String> f1256m;

    /* renamed from: n */
    public final ArrayList<String> f1257n;

    /* renamed from: o */
    public final boolean f1258o;

    /* renamed from: androidx.fragment.app.BackStackState$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/BackStackState$a.class */
    public static final class C0218a implements Parcelable.Creator<BackStackState> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BackStackState createFromParcel(Parcel parcel) {
            return new BackStackState(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BackStackState[] newArray(int i) {
            return new BackStackState[i];
        }
    }

    public BackStackState(Parcel parcel) {
        this.f1244a = parcel.createIntArray();
        this.f1245b = parcel.createStringArrayList();
        this.f1246c = parcel.createIntArray();
        this.f1247d = parcel.createIntArray();
        this.f1248e = parcel.readInt();
        this.f1249f = parcel.readInt();
        this.f1250g = parcel.readString();
        this.f1251h = parcel.readInt();
        this.f1252i = parcel.readInt();
        this.f1253j = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f1254k = parcel.readInt();
        this.f1255l = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f1256m = parcel.createStringArrayList();
        this.f1257n = parcel.createStringArrayList();
        this.f1258o = parcel.readInt() != 0;
    }

    public BackStackState(C1052a aVar) {
        int size = aVar.f4514a.size();
        this.f1244a = new int[size * 5];
        if (aVar.f4521h) {
            this.f1245b = new ArrayList<>(size);
            this.f1246c = new int[size];
            this.f1247d = new int[size];
            int i = 0;
            int i2 = 0;
            while (i < size) {
                AbstractC1079j.C1080a aVar2 = aVar.f4514a.get(i);
                int i3 = i2 + 1;
                this.f1244a[i2] = aVar2.f4531a;
                ArrayList<String> arrayList = this.f1245b;
                Fragment fragment = aVar2.f4532b;
                arrayList.add(fragment != null ? fragment.f1286e : null);
                int[] iArr = this.f1244a;
                int i4 = i3 + 1;
                iArr[i3] = aVar2.f4533c;
                int i5 = i4 + 1;
                iArr[i4] = aVar2.f4534d;
                int i6 = i5 + 1;
                iArr[i5] = aVar2.f4535e;
                iArr[i6] = aVar2.f4536f;
                this.f1246c[i] = aVar2.f4537g.ordinal();
                this.f1247d[i] = aVar2.f4538h.ordinal();
                i++;
                i2 = i6 + 1;
            }
            this.f1248e = aVar.f4519f;
            this.f1249f = aVar.f4520g;
            this.f1250g = aVar.f4522i;
            this.f1251h = aVar.f4420t;
            this.f1252i = aVar.f4523j;
            this.f1253j = aVar.f4524k;
            this.f1254k = aVar.f4525l;
            this.f1255l = aVar.f4526m;
            this.f1256m = aVar.f4527n;
            this.f1257n = aVar.f4528o;
            this.f1258o = aVar.f4529p;
            return;
        }
        throw new IllegalStateException("Not on back stack");
    }

    /* renamed from: a */
    public C1052a m38462a(LayoutInflater$Factory2C1062h hVar) {
        C1052a aVar = new C1052a(hVar);
        int i = 0;
        int i2 = 0;
        while (i < this.f1244a.length) {
            AbstractC1079j.C1080a aVar2 = new AbstractC1079j.C1080a();
            int i3 = i + 1;
            aVar2.f4531a = this.f1244a[i];
            if (LayoutInflater$Factory2C1062h.f4442H) {
                Log.v("FragmentManager", "Instantiate " + aVar + " op #" + i2 + " base fragment #" + this.f1244a[i3]);
            }
            String str = this.f1245b.get(i2);
            if (str != null) {
                aVar2.f4532b = hVar.f4456g.get(str);
            } else {
                aVar2.f4532b = null;
            }
            aVar2.f4537g = Lifecycle.State.values()[this.f1246c[i2]];
            aVar2.f4538h = Lifecycle.State.values()[this.f1247d[i2]];
            int[] iArr = this.f1244a;
            int i4 = i3 + 1;
            int i5 = iArr[i3];
            aVar2.f4533c = i5;
            int i6 = i4 + 1;
            int i7 = iArr[i4];
            aVar2.f4534d = i7;
            int i8 = i6 + 1;
            int i9 = iArr[i6];
            aVar2.f4535e = i9;
            int i10 = iArr[i8];
            aVar2.f4536f = i10;
            aVar.f4515b = i5;
            aVar.f4516c = i7;
            aVar.f4517d = i9;
            aVar.f4518e = i10;
            aVar.m34745a(aVar2);
            i2++;
            i = i8 + 1;
        }
        aVar.f4519f = this.f1248e;
        aVar.f4520g = this.f1249f;
        aVar.f4522i = this.f1250g;
        aVar.f4420t = this.f1251h;
        aVar.f4521h = true;
        aVar.f4523j = this.f1252i;
        aVar.f4524k = this.f1253j;
        aVar.f4525l = this.f1254k;
        aVar.f4526m = this.f1255l;
        aVar.f4527n = this.f1256m;
        aVar.f4528o = this.f1257n;
        aVar.f4529p = this.f1258o;
        aVar.m34970a(1);
        return aVar;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeIntArray(this.f1244a);
        parcel.writeStringList(this.f1245b);
        parcel.writeIntArray(this.f1246c);
        parcel.writeIntArray(this.f1247d);
        parcel.writeInt(this.f1248e);
        parcel.writeInt(this.f1249f);
        parcel.writeString(this.f1250g);
        parcel.writeInt(this.f1251h);
        parcel.writeInt(this.f1252i);
        TextUtils.writeToParcel(this.f1253j, parcel, 0);
        parcel.writeInt(this.f1254k);
        TextUtils.writeToParcel(this.f1255l, parcel, 0);
        parcel.writeStringList(this.f1256m);
        parcel.writeStringList(this.f1257n);
        parcel.writeInt(this.f1258o ? 1 : 0);
    }
}
