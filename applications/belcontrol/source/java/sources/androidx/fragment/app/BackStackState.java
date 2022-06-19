package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;
import me;
import td;
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/BackStackState.class */
public final class BackStackState implements Parcelable {
    public static final Parcelable.Creator<BackStackState> CREATOR = new C0109a();

    /* renamed from: a */
    public final int[] f851a;

    /* renamed from: b */
    public final ArrayList<String> f852b;

    /* renamed from: c */
    public final int[] f853c;

    /* renamed from: d */
    public final int[] f854d;

    /* renamed from: f */
    public final int f855f;

    /* renamed from: g */
    public final String f856g;

    /* renamed from: h */
    public final int f857h;

    /* renamed from: j */
    public final int f858j;

    /* renamed from: k */
    public final CharSequence f859k;

    /* renamed from: l */
    public final int f860l;

    /* renamed from: m */
    public final CharSequence f861m;

    /* renamed from: n */
    public final ArrayList<String> f862n;

    /* renamed from: o */
    public final ArrayList<String> f863o;

    /* renamed from: p */
    public final boolean f864p;

    /* renamed from: androidx.fragment.app.BackStackState$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/BackStackState$a.class */
    public static final class C0109a implements Parcelable.Creator<BackStackState> {
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
        this.f851a = parcel.createIntArray();
        this.f852b = parcel.createStringArrayList();
        this.f853c = parcel.createIntArray();
        this.f854d = parcel.createIntArray();
        this.f855f = parcel.readInt();
        this.f856g = parcel.readString();
        this.f857h = parcel.readInt();
        this.f858j = parcel.readInt();
        this.f859k = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f860l = parcel.readInt();
        this.f861m = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f862n = parcel.createStringArrayList();
        this.f863o = parcel.createStringArrayList();
        this.f864p = parcel.readInt() != 0;
    }

    public BackStackState(ed edVar) {
        int size = ((td) edVar).a.size();
        this.f851a = new int[size * 5];
        if (((td) edVar).g) {
            this.f852b = new ArrayList<>(size);
            this.f853c = new int[size];
            this.f854d = new int[size];
            int i = 0;
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i >= size) {
                    this.f855f = ((td) edVar).f;
                    this.f856g = ((td) edVar).i;
                    this.f857h = edVar.t;
                    this.f858j = ((td) edVar).j;
                    this.f859k = ((td) edVar).k;
                    this.f860l = ((td) edVar).l;
                    this.f861m = ((td) edVar).m;
                    this.f862n = ((td) edVar).n;
                    this.f863o = ((td) edVar).o;
                    this.f864p = ((td) edVar).p;
                    return;
                }
                td.a aVar = (td.a) ((td) edVar).a.get(i);
                int i4 = i3 + 1;
                this.f851a[i3] = aVar.a;
                ArrayList<String> arrayList = this.f852b;
                Fragment fragment = aVar.b;
                arrayList.add(fragment != null ? fragment.mWho : null);
                int[] iArr = this.f851a;
                int i5 = i4 + 1;
                iArr[i4] = aVar.c;
                int i6 = i5 + 1;
                iArr[i5] = aVar.d;
                int i7 = i6 + 1;
                iArr[i6] = aVar.e;
                iArr[i7] = aVar.f;
                this.f853c[i] = aVar.g.ordinal();
                this.f854d[i] = aVar.h.ordinal();
                i++;
                i2 = i7 + 1;
            }
        } else {
            throw new IllegalStateException("Not on back stack");
        }
    }

    /* renamed from: a */
    public ed m6725a(nd ndVar) {
        ed edVar = new ed(ndVar);
        int i = 0;
        int i2 = 0;
        while (true) {
            int[] iArr = this.f851a;
            if (i >= iArr.length) {
                ((td) edVar).f = this.f855f;
                ((td) edVar).i = this.f856g;
                edVar.t = this.f857h;
                ((td) edVar).g = true;
                ((td) edVar).j = this.f858j;
                ((td) edVar).k = this.f859k;
                ((td) edVar).l = this.f860l;
                ((td) edVar).m = this.f861m;
                ((td) edVar).n = this.f862n;
                ((td) edVar).o = this.f863o;
                ((td) edVar).p = this.f864p;
                edVar.z(1);
                return edVar;
            }
            td.a aVar = new td.a();
            int i3 = i + 1;
            aVar.a = iArr[i];
            if (nd.s0(2)) {
                Log.v("FragmentManager", "Instantiate " + edVar + " op #" + i2 + " base fragment #" + this.f851a[i3]);
            }
            String str = this.f852b.get(i2);
            aVar.b = str != null ? ndVar.X(str) : null;
            aVar.g = me.b.values()[this.f853c[i2]];
            aVar.h = me.b.values()[this.f854d[i2]];
            int[] iArr2 = this.f851a;
            int i4 = i3 + 1;
            int i5 = iArr2[i3];
            aVar.c = i5;
            int i6 = i4 + 1;
            int i7 = iArr2[i4];
            aVar.d = i7;
            int i8 = i6 + 1;
            int i9 = iArr2[i6];
            aVar.e = i9;
            int i10 = iArr2[i8];
            aVar.f = i10;
            ((td) edVar).b = i5;
            ((td) edVar).c = i7;
            ((td) edVar).d = i9;
            ((td) edVar).e = i10;
            edVar.e(aVar);
            i2++;
            i = i8 + 1;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeIntArray(this.f851a);
        parcel.writeStringList(this.f852b);
        parcel.writeIntArray(this.f853c);
        parcel.writeIntArray(this.f854d);
        parcel.writeInt(this.f855f);
        parcel.writeString(this.f856g);
        parcel.writeInt(this.f857h);
        parcel.writeInt(this.f858j);
        TextUtils.writeToParcel(this.f859k, parcel, 0);
        parcel.writeInt(this.f860l);
        TextUtils.writeToParcel(this.f861m, parcel, 0);
        parcel.writeStringList(this.f862n);
        parcel.writeStringList(this.f863o);
        parcel.writeInt(this.f864p ? 1 : 0);
    }
}
