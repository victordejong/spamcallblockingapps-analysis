package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.fragment.app.AbstractC1121s;
import androidx.lifecycle.AbstractC1253j;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/BackStackState.class */
public final class BackStackState implements Parcelable {
    public static final Parcelable.Creator<BackStackState> CREATOR = new Parcelable.Creator<BackStackState>() { // from class: androidx.fragment.app.BackStackState.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ BackStackState createFromParcel(Parcel parcel) {
            return new BackStackState(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ BackStackState[] newArray(int i) {
            return new BackStackState[i];
        }
    };
    private static final String TAG = "FragmentManager";
    final int mBreadCrumbShortTitleRes;
    final CharSequence mBreadCrumbShortTitleText;
    final int mBreadCrumbTitleRes;
    final CharSequence mBreadCrumbTitleText;
    final int[] mCurrentMaxLifecycleStates;
    final ArrayList<String> mFragmentWhos;
    final int mIndex;
    final String mName;
    final int[] mOldMaxLifecycleStates;
    final int[] mOps;
    final boolean mReorderingAllowed;
    final ArrayList<String> mSharedElementSourceNames;
    final ArrayList<String> mSharedElementTargetNames;
    final int mTransition;

    public BackStackState(Parcel parcel) {
        this.mOps = parcel.createIntArray();
        this.mFragmentWhos = parcel.createStringArrayList();
        this.mOldMaxLifecycleStates = parcel.createIntArray();
        this.mCurrentMaxLifecycleStates = parcel.createIntArray();
        this.mTransition = parcel.readInt();
        this.mName = parcel.readString();
        this.mIndex = parcel.readInt();
        this.mBreadCrumbTitleRes = parcel.readInt();
        this.mBreadCrumbTitleText = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.mBreadCrumbShortTitleRes = parcel.readInt();
        this.mBreadCrumbShortTitleText = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.mSharedElementSourceNames = parcel.createStringArrayList();
        this.mSharedElementTargetNames = parcel.createStringArrayList();
        this.mReorderingAllowed = parcel.readInt() != 0;
    }

    public BackStackState(C1071a c1071a) {
        int size = c1071a.f4403d.size();
        this.mOps = new int[size * 5];
        if (c1071a.f4409j) {
            this.mFragmentWhos = new ArrayList<>(size);
            this.mOldMaxLifecycleStates = new int[size];
            this.mCurrentMaxLifecycleStates = new int[size];
            int i = 0;
            int i2 = 0;
            while (i < size) {
                AbstractC1121s.C1122a c1122a = c1071a.f4403d.get(i);
                int i3 = i2 + 1;
                this.mOps[i2] = c1122a.f4420a;
                this.mFragmentWhos.add(c1122a.f4421b != null ? c1122a.f4421b.mWho : null);
                int i4 = i3 + 1;
                this.mOps[i3] = c1122a.f4422c;
                int i5 = i4 + 1;
                this.mOps[i4] = c1122a.f4423d;
                int i6 = i5 + 1;
                this.mOps[i5] = c1122a.f4424e;
                this.mOps[i6] = c1122a.f4425f;
                this.mOldMaxLifecycleStates[i] = c1122a.f4426g.ordinal();
                this.mCurrentMaxLifecycleStates[i] = c1122a.f4427h.ordinal();
                i++;
                i2 = i6 + 1;
            }
            this.mTransition = c1071a.f4408i;
            this.mName = c1071a.f4411l;
            this.mIndex = c1071a.f4273c;
            this.mBreadCrumbTitleRes = c1071a.f4412m;
            this.mBreadCrumbTitleText = c1071a.f4413n;
            this.mBreadCrumbShortTitleRes = c1071a.f4414o;
            this.mBreadCrumbShortTitleText = c1071a.f4415p;
            this.mSharedElementSourceNames = c1071a.f4416q;
            this.mSharedElementTargetNames = c1071a.f4417r;
            this.mReorderingAllowed = c1071a.f4418s;
            return;
        }
        throw new IllegalStateException("Not on back stack");
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final C1071a instantiate(FragmentManager fragmentManager) {
        C1071a c1071a = new C1071a(fragmentManager);
        int i = 0;
        int i2 = 0;
        while (i < this.mOps.length) {
            AbstractC1121s.C1122a c1122a = new AbstractC1121s.C1122a();
            int i3 = i + 1;
            c1122a.f4420a = this.mOps[i];
            if (FragmentManager.m43764a(2)) {
                StringBuilder sb = new StringBuilder("Instantiate ");
                sb.append(c1071a);
                sb.append(" op #");
                sb.append(i2);
                sb.append(" base fragment #");
                sb.append(this.mOps[i3]);
            }
            String str = this.mFragmentWhos.get(i2);
            if (str != null) {
                c1122a.f4421b = fragmentManager.m43724b(str);
            } else {
                c1122a.f4421b = null;
            }
            c1122a.f4426g = AbstractC1253j.EnumC1256b.values()[this.mOldMaxLifecycleStates[i2]];
            c1122a.f4427h = AbstractC1253j.EnumC1256b.values()[this.mCurrentMaxLifecycleStates[i2]];
            int i4 = i3 + 1;
            c1122a.f4422c = this.mOps[i3];
            int i5 = i4 + 1;
            c1122a.f4423d = this.mOps[i4];
            int i6 = i5 + 1;
            c1122a.f4424e = this.mOps[i5];
            c1122a.f4425f = this.mOps[i6];
            c1071a.f4404e = c1122a.f4422c;
            c1071a.f4405f = c1122a.f4423d;
            c1071a.f4406g = c1122a.f4424e;
            c1071a.f4407h = c1122a.f4425f;
            c1071a.m43533b(c1122a);
            i2++;
            i = i6 + 1;
        }
        c1071a.f4408i = this.mTransition;
        c1071a.f4411l = this.mName;
        c1071a.f4273c = this.mIndex;
        c1071a.f4409j = true;
        c1071a.f4412m = this.mBreadCrumbTitleRes;
        c1071a.f4413n = this.mBreadCrumbTitleText;
        c1071a.f4414o = this.mBreadCrumbShortTitleRes;
        c1071a.f4415p = this.mBreadCrumbShortTitleText;
        c1071a.f4416q = this.mSharedElementSourceNames;
        c1071a.f4417r = this.mSharedElementTargetNames;
        c1071a.f4418s = this.mReorderingAllowed;
        c1071a.m43654a(1);
        return c1071a;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeIntArray(this.mOps);
        parcel.writeStringList(this.mFragmentWhos);
        parcel.writeIntArray(this.mOldMaxLifecycleStates);
        parcel.writeIntArray(this.mCurrentMaxLifecycleStates);
        parcel.writeInt(this.mTransition);
        parcel.writeString(this.mName);
        parcel.writeInt(this.mIndex);
        parcel.writeInt(this.mBreadCrumbTitleRes);
        TextUtils.writeToParcel(this.mBreadCrumbTitleText, parcel, 0);
        parcel.writeInt(this.mBreadCrumbShortTitleRes);
        TextUtils.writeToParcel(this.mBreadCrumbShortTitleText, parcel, 0);
        parcel.writeStringList(this.mSharedElementSourceNames);
        parcel.writeStringList(this.mSharedElementTargetNames);
        parcel.writeInt(this.mReorderingAllowed ? 1 : 0);
    }
}
