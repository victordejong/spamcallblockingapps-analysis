package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;
import p1727n3.p1859r.p1860a.AbstractC26924f0;
import p1727n3.p1859r.p1860a.C26907a;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/BackStackState.class */
public final class BackStackState implements Parcelable {
    public static final Parcelable.Creator<BackStackState> CREATOR = new C0161a();

    /* renamed from: a */
    public final int[] f772a;

    /* renamed from: b */
    public final ArrayList<String> f773b;

    /* renamed from: c */
    public final int[] f774c;

    /* renamed from: d */
    public final int[] f775d;

    /* renamed from: e */
    public final int f776e;

    /* renamed from: f */
    public final String f777f;

    /* renamed from: g */
    public final int f778g;

    /* renamed from: h */
    public final int f779h;

    /* renamed from: i */
    public final CharSequence f780i;

    /* renamed from: j */
    public final int f781j;

    /* renamed from: k */
    public final CharSequence f782k;

    /* renamed from: l */
    public final ArrayList<String> f783l;

    /* renamed from: m */
    public final ArrayList<String> f784m;

    /* renamed from: n */
    public final boolean f785n;

    /* renamed from: androidx.fragment.app.BackStackState$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/BackStackState$a.class */
    public class C0161a implements Parcelable.Creator<BackStackState> {
        @Override // android.os.Parcelable.Creator
        public BackStackState createFromParcel(Parcel parcel) {
            return new BackStackState(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public BackStackState[] newArray(int i) {
            return new BackStackState[i];
        }
    }

    public BackStackState(Parcel parcel) {
        this.f772a = parcel.createIntArray();
        this.f773b = parcel.createStringArrayList();
        this.f774c = parcel.createIntArray();
        this.f775d = parcel.createIntArray();
        this.f776e = parcel.readInt();
        this.f777f = parcel.readString();
        this.f778g = parcel.readInt();
        this.f779h = parcel.readInt();
        this.f780i = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f781j = parcel.readInt();
        this.f782k = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f783l = parcel.createStringArrayList();
        this.f784m = parcel.createStringArrayList();
        this.f785n = parcel.readInt() != 0;
    }

    public BackStackState(C26907a c26907a) {
        int size = c26907a.f75317a.size();
        this.f772a = new int[size * 5];
        if (c26907a.f75323g) {
            this.f773b = new ArrayList<>(size);
            this.f774c = new int[size];
            this.f775d = new int[size];
            int i = 0;
            int i2 = 0;
            while (i < size) {
                AbstractC26924f0.C26925a c26925a = c26907a.f75317a.get(i);
                int i3 = i2 + 1;
                this.f772a[i2] = c26925a.f75333a;
                ArrayList<String> arrayList = this.f773b;
                Fragment fragment = c26925a.f75334b;
                arrayList.add(fragment != null ? fragment.mWho : null);
                int[] iArr = this.f772a;
                int i4 = i3 + 1;
                iArr[i3] = c26925a.f75335c;
                int i5 = i4 + 1;
                iArr[i4] = c26925a.f75336d;
                int i6 = i5 + 1;
                iArr[i5] = c26925a.f75337e;
                iArr[i6] = c26925a.f75338f;
                this.f774c[i] = c26925a.f75339g.ordinal();
                this.f775d[i] = c26925a.f75340h.ordinal();
                i++;
                i2 = i6 + 1;
            }
            this.f776e = c26907a.f75322f;
            this.f777f = c26907a.f75325i;
            this.f778g = c26907a.f75271s;
            this.f779h = c26907a.f75326j;
            this.f780i = c26907a.f75327k;
            this.f781j = c26907a.f75328l;
            this.f782k = c26907a.f75329m;
            this.f783l = c26907a.f75330n;
            this.f784m = c26907a.f75331o;
            this.f785n = c26907a.f75332p;
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
        parcel.writeIntArray(this.f772a);
        parcel.writeStringList(this.f773b);
        parcel.writeIntArray(this.f774c);
        parcel.writeIntArray(this.f775d);
        parcel.writeInt(this.f776e);
        parcel.writeString(this.f777f);
        parcel.writeInt(this.f778g);
        parcel.writeInt(this.f779h);
        TextUtils.writeToParcel(this.f780i, parcel, 0);
        parcel.writeInt(this.f781j);
        TextUtils.writeToParcel(this.f782k, parcel, 0);
        parcel.writeStringList(this.f783l);
        parcel.writeStringList(this.f784m);
        parcel.writeInt(this.f785n ? 1 : 0);
    }
}
