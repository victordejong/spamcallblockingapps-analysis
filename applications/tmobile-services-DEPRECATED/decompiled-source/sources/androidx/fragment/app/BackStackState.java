package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.Lifecycle;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/BackStackState.class */
public final class BackStackState implements Parcelable {
    public static final Parcelable.Creator<BackStackState> CREATOR = new Parcelable.Creator<BackStackState>() { // from class: androidx.fragment.app.BackStackState.1
        /* renamed from: a */
        public BackStackState createFromParcel(Parcel parcel) {
            return new BackStackState(parcel);
        }

        /* renamed from: b */
        public BackStackState[] newArray(int i) {
            return new BackStackState[i];
        }
    };

    /* renamed from: f */
    final int[] f3695f;

    /* renamed from: g */
    final ArrayList<String> f3696g;

    /* renamed from: h */
    final int[] f3697h;

    /* renamed from: i */
    final int[] f3698i;

    /* renamed from: j */
    final int f3699j;

    /* renamed from: k */
    final String f3700k;

    /* renamed from: l */
    final int f3701l;

    /* renamed from: m */
    final int f3702m;

    /* renamed from: n */
    final CharSequence f3703n;

    /* renamed from: o */
    final int f3704o;

    /* renamed from: p */
    final CharSequence f3705p;

    /* renamed from: q */
    final ArrayList<String> f3706q;

    /* renamed from: r */
    final ArrayList<String> f3707r;

    /* renamed from: s */
    final boolean f3708s;

    public BackStackState(Parcel parcel) {
        this.f3695f = parcel.createIntArray();
        this.f3696g = parcel.createStringArrayList();
        this.f3697h = parcel.createIntArray();
        this.f3698i = parcel.createIntArray();
        this.f3699j = parcel.readInt();
        this.f3700k = parcel.readString();
        this.f3701l = parcel.readInt();
        this.f3702m = parcel.readInt();
        this.f3703n = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f3704o = parcel.readInt();
        this.f3705p = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f3706q = parcel.createStringArrayList();
        this.f3707r = parcel.createStringArrayList();
        this.f3708s = parcel.readInt() != 0;
    }

    public BackStackState(BackStackRecord backStackRecord) {
        int size = backStackRecord.f3836a.size();
        this.f3695f = new int[size * 5];
        if (backStackRecord.f3842g) {
            this.f3696g = new ArrayList<>(size);
            this.f3697h = new int[size];
            this.f3698i = new int[size];
            int i = 0;
            int i2 = 0;
            while (i < size) {
                FragmentTransaction.C0335Op op = backStackRecord.f3836a.get(i);
                int i3 = i2 + 1;
                this.f3695f[i2] = op.f3853a;
                ArrayList<String> arrayList = this.f3696g;
                Fragment fragment = op.f3854b;
                arrayList.add(fragment != null ? fragment.mWho : null);
                int[] iArr = this.f3695f;
                int i4 = i3 + 1;
                iArr[i3] = op.f3855c;
                int i5 = i4 + 1;
                iArr[i4] = op.f3856d;
                int i6 = i5 + 1;
                iArr[i5] = op.f3857e;
                iArr[i6] = op.f3858f;
                this.f3697h[i] = op.f3859g.ordinal();
                this.f3698i[i] = op.f3860h.ordinal();
                i++;
                i2 = i6 + 1;
            }
            this.f3699j = backStackRecord.f3841f;
            this.f3700k = backStackRecord.f3844i;
            this.f3701l = backStackRecord.f3694t;
            this.f3702m = backStackRecord.f3845j;
            this.f3703n = backStackRecord.f3846k;
            this.f3704o = backStackRecord.f3847l;
            this.f3705p = backStackRecord.f3848m;
            this.f3706q = backStackRecord.f3849n;
            this.f3707r = backStackRecord.f3850o;
            this.f3708s = backStackRecord.f3851p;
            return;
        }
        throw new IllegalStateException("Not on back stack");
    }

    /* renamed from: a */
    public BackStackRecord m18506a(FragmentManager fragmentManager) {
        BackStackRecord backStackRecord = new BackStackRecord(fragmentManager);
        int i = 0;
        int i2 = 0;
        while (i < this.f3695f.length) {
            FragmentTransaction.C0335Op op = new FragmentTransaction.C0335Op();
            int i3 = i + 1;
            op.f3853a = this.f3695f[i];
            if (FragmentManager.isLoggingEnabled(2)) {
                Log.v("FragmentManager", "Instantiate " + backStackRecord + " op #" + i2 + " base fragment #" + this.f3695f[i3]);
            }
            String str = this.f3696g.get(i2);
            if (str != null) {
                op.f3854b = fragmentManager.findActiveFragment(str);
            } else {
                op.f3854b = null;
            }
            op.f3859g = Lifecycle.State.values()[this.f3697h[i2]];
            op.f3860h = Lifecycle.State.values()[this.f3698i[i2]];
            int[] iArr = this.f3695f;
            int i4 = i3 + 1;
            int i5 = iArr[i3];
            op.f3855c = i5;
            int i6 = i4 + 1;
            int i7 = iArr[i4];
            op.f3856d = i7;
            int i8 = i6 + 1;
            int i9 = iArr[i6];
            op.f3857e = i9;
            int i10 = iArr[i8];
            op.f3858f = i10;
            backStackRecord.f3837b = i5;
            backStackRecord.f3838c = i7;
            backStackRecord.f3839d = i9;
            backStackRecord.f3840e = i10;
            backStackRecord.m18342f(op);
            i2++;
            i = i8 + 1;
        }
        backStackRecord.f3841f = this.f3699j;
        backStackRecord.f3844i = this.f3700k;
        backStackRecord.f3694t = this.f3701l;
        backStackRecord.f3842g = true;
        backStackRecord.f3845j = this.f3702m;
        backStackRecord.f3846k = this.f3703n;
        backStackRecord.f3847l = this.f3704o;
        backStackRecord.f3848m = this.f3705p;
        backStackRecord.f3849n = this.f3706q;
        backStackRecord.f3850o = this.f3707r;
        backStackRecord.f3851p = this.f3708s;
        backStackRecord.m18511v(1);
        return backStackRecord;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeIntArray(this.f3695f);
        parcel.writeStringList(this.f3696g);
        parcel.writeIntArray(this.f3697h);
        parcel.writeIntArray(this.f3698i);
        parcel.writeInt(this.f3699j);
        parcel.writeString(this.f3700k);
        parcel.writeInt(this.f3701l);
        parcel.writeInt(this.f3702m);
        TextUtils.writeToParcel(this.f3703n, parcel, 0);
        parcel.writeInt(this.f3704o);
        TextUtils.writeToParcel(this.f3705p, parcel, 0);
        parcel.writeStringList(this.f3706q);
        parcel.writeStringList(this.f3707r);
        parcel.writeInt(this.f3708s ? 1 : 0);
    }
}
