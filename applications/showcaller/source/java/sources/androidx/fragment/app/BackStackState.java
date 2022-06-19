package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import androidx.fragment.app.AbstractC0754s;
import androidx.lifecycle.Lifecycle;
import java.util.ArrayList;
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/BackStackState.class */
public final class BackStackState implements Parcelable {
    public static final Parcelable.Creator<BackStackState> CREATOR = new C0666a();

    /* renamed from: d */
    final int[] f3175d;

    /* renamed from: e */
    final ArrayList<String> f3176e;

    /* renamed from: f */
    final int[] f3177f;

    /* renamed from: g */
    final int[] f3178g;

    /* renamed from: h */
    final int f3179h;

    /* renamed from: i */
    final String f3180i;

    /* renamed from: j */
    final int f3181j;

    /* renamed from: k */
    final int f3182k;

    /* renamed from: l */
    final CharSequence f3183l;

    /* renamed from: m */
    final int f3184m;

    /* renamed from: n */
    final CharSequence f3185n;

    /* renamed from: o */
    final ArrayList<String> f3186o;

    /* renamed from: p */
    final ArrayList<String> f3187p;

    /* renamed from: q */
    final boolean f3188q;

    /* renamed from: androidx.fragment.app.BackStackState$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/BackStackState$a.class */
    class C0666a implements Parcelable.Creator<BackStackState> {
        C0666a() {
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
        this.f3175d = parcel.createIntArray();
        this.f3176e = parcel.createStringArrayList();
        this.f3177f = parcel.createIntArray();
        this.f3178g = parcel.createIntArray();
        this.f3179h = parcel.readInt();
        this.f3180i = parcel.readString();
        this.f3181j = parcel.readInt();
        this.f3182k = parcel.readInt();
        this.f3183l = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f3184m = parcel.readInt();
        this.f3185n = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f3186o = parcel.createStringArrayList();
        this.f3187p = parcel.createStringArrayList();
        this.f3188q = parcel.readInt() != 0;
    }

    public BackStackState(C0706a c0706a) {
        int size = c0706a.f3550c.size();
        this.f3175d = new int[size * 5];
        if (c0706a.f3556i) {
            this.f3176e = new ArrayList<>(size);
            this.f3177f = new int[size];
            this.f3178g = new int[size];
            int i = 0;
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i >= size) {
                    this.f3179h = c0706a.f3555h;
                    this.f3180i = c0706a.f3558k;
                    this.f3181j = c0706a.f3420v;
                    this.f3182k = c0706a.f3559l;
                    this.f3183l = c0706a.f3560m;
                    this.f3184m = c0706a.f3561n;
                    this.f3185n = c0706a.f3562o;
                    this.f3186o = c0706a.f3563p;
                    this.f3187p = c0706a.f3564q;
                    this.f3188q = c0706a.f3565r;
                    return;
                }
                AbstractC0754s.C0755a c0755a = c0706a.f3550c.get(i);
                int i4 = i3 + 1;
                this.f3175d[i3] = c0755a.f3567a;
                ArrayList<String> arrayList = this.f3176e;
                Fragment fragment = c0755a.f3568b;
                arrayList.add(fragment != null ? fragment.f3225j : null);
                int[] iArr = this.f3175d;
                int i5 = i4 + 1;
                iArr[i4] = c0755a.f3569c;
                int i6 = i5 + 1;
                iArr[i5] = c0755a.f3570d;
                int i7 = i6 + 1;
                iArr[i6] = c0755a.f3571e;
                iArr[i7] = c0755a.f3572f;
                this.f3177f[i] = c0755a.f3573g.ordinal();
                this.f3178g[i] = c0755a.f3574h.ordinal();
                i++;
                i2 = i7 + 1;
            }
        } else {
            throw new IllegalStateException("Not on back stack");
        }
    }

    /* renamed from: a */
    public C0706a m33002a(FragmentManager fragmentManager) {
        C0706a c0706a = new C0706a(fragmentManager);
        int i = 0;
        int i2 = 0;
        while (i < this.f3175d.length) {
            AbstractC0754s.C0755a c0755a = new AbstractC0754s.C0755a();
            int i3 = i + 1;
            c0755a.f3567a = this.f3175d[i];
            if (FragmentManager.m32848G0(2)) {
                Log.v("FragmentManager", "Instantiate " + c0706a + " op #" + i2 + " base fragment #" + this.f3175d[i3]);
            }
            String str = this.f3176e.get(i2);
            if (str != null) {
                c0755a.f3568b = fragmentManager.m32790g0(str);
            } else {
                c0755a.f3568b = null;
            }
            c0755a.f3573g = Lifecycle.State.values()[this.f3177f[i2]];
            c0755a.f3574h = Lifecycle.State.values()[this.f3178g[i2]];
            int[] iArr = this.f3175d;
            int i4 = i3 + 1;
            int i5 = iArr[i3];
            c0755a.f3569c = i5;
            int i6 = i4 + 1;
            int i7 = iArr[i4];
            c0755a.f3570d = i7;
            int i8 = i6 + 1;
            int i9 = iArr[i6];
            c0755a.f3571e = i9;
            int i10 = iArr[i8];
            c0755a.f3572f = i10;
            c0706a.f3551d = i5;
            c0706a.f3552e = i7;
            c0706a.f3553f = i9;
            c0706a.f3554g = i10;
            c0706a.m32505f(c0755a);
            i2++;
            i = i8 + 1;
        }
        c0706a.f3555h = this.f3179h;
        c0706a.f3558k = this.f3180i;
        c0706a.f3420v = this.f3181j;
        c0706a.f3556i = true;
        c0706a.f3559l = this.f3182k;
        c0706a.f3560m = this.f3183l;
        c0706a.f3561n = this.f3184m;
        c0706a.f3562o = this.f3185n;
        c0706a.f3563p = this.f3186o;
        c0706a.f3564q = this.f3187p;
        c0706a.f3565r = this.f3188q;
        c0706a.m32673t(1);
        return c0706a;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeIntArray(this.f3175d);
        parcel.writeStringList(this.f3176e);
        parcel.writeIntArray(this.f3177f);
        parcel.writeIntArray(this.f3178g);
        parcel.writeInt(this.f3179h);
        parcel.writeString(this.f3180i);
        parcel.writeInt(this.f3181j);
        parcel.writeInt(this.f3182k);
        TextUtils.writeToParcel(this.f3183l, parcel, 0);
        parcel.writeInt(this.f3184m);
        TextUtils.writeToParcel(this.f3185n, parcel, 0);
        parcel.writeStringList(this.f3186o);
        parcel.writeStringList(this.f3187p);
        parcel.writeInt(this.f3188q ? 1 : 0);
    }
}
