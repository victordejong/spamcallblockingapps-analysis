package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.fragment.app.s;
import androidx.lifecycle.j;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
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

    public BackStackState(a aVar) {
        int size = aVar.f2324d.size();
        this.mOps = new int[size * 5];
        if (aVar.j) {
            this.mFragmentWhos = new ArrayList<>(size);
            this.mOldMaxLifecycleStates = new int[size];
            this.mCurrentMaxLifecycleStates = new int[size];
            int i = 0;
            int i2 = 0;
            while (i < size) {
                s.a aVar2 = aVar.f2324d.get(i);
                int i3 = i2 + 1;
                this.mOps[i2] = aVar2.f2325a;
                this.mFragmentWhos.add(aVar2.f2326b != null ? aVar2.f2326b.mWho : null);
                int i4 = i3 + 1;
                this.mOps[i3] = aVar2.f2327c;
                int i5 = i4 + 1;
                this.mOps[i4] = aVar2.f2328d;
                int i6 = i5 + 1;
                this.mOps[i5] = aVar2.e;
                this.mOps[i6] = aVar2.f;
                this.mOldMaxLifecycleStates[i] = aVar2.g.ordinal();
                this.mCurrentMaxLifecycleStates[i] = aVar2.h.ordinal();
                i++;
                i2 = i6 + 1;
            }
            this.mTransition = aVar.i;
            this.mName = aVar.l;
            this.mIndex = aVar.f2224c;
            this.mBreadCrumbTitleRes = aVar.m;
            this.mBreadCrumbTitleText = aVar.n;
            this.mBreadCrumbShortTitleRes = aVar.o;
            this.mBreadCrumbShortTitleText = aVar.p;
            this.mSharedElementSourceNames = aVar.q;
            this.mSharedElementTargetNames = aVar.r;
            this.mReorderingAllowed = aVar.s;
            return;
        }
        throw new IllegalStateException("Not on back stack");
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final a instantiate(FragmentManager fragmentManager) {
        a aVar = new a(fragmentManager);
        int i = 0;
        int i2 = 0;
        while (i < this.mOps.length) {
            s.a aVar2 = new s.a();
            int i3 = i + 1;
            aVar2.f2325a = this.mOps[i];
            if (FragmentManager.a(2)) {
                StringBuilder sb = new StringBuilder("Instantiate ");
                sb.append(aVar);
                sb.append(" op #");
                sb.append(i2);
                sb.append(" base fragment #");
                sb.append(this.mOps[i3]);
            }
            String str = this.mFragmentWhos.get(i2);
            if (str != null) {
                aVar2.f2326b = fragmentManager.b(str);
            } else {
                aVar2.f2326b = null;
            }
            aVar2.g = j.b.values()[this.mOldMaxLifecycleStates[i2]];
            aVar2.h = j.b.values()[this.mCurrentMaxLifecycleStates[i2]];
            int i4 = i3 + 1;
            aVar2.f2327c = this.mOps[i3];
            int i5 = i4 + 1;
            aVar2.f2328d = this.mOps[i4];
            int i6 = i5 + 1;
            aVar2.e = this.mOps[i5];
            aVar2.f = this.mOps[i6];
            aVar.e = aVar2.f2327c;
            aVar.f = aVar2.f2328d;
            aVar.g = aVar2.e;
            aVar.h = aVar2.f;
            aVar.b(aVar2);
            i2++;
            i = i6 + 1;
        }
        aVar.i = this.mTransition;
        aVar.l = this.mName;
        aVar.f2224c = this.mIndex;
        aVar.j = true;
        aVar.m = this.mBreadCrumbTitleRes;
        aVar.n = this.mBreadCrumbTitleText;
        aVar.o = this.mBreadCrumbShortTitleRes;
        aVar.p = this.mBreadCrumbShortTitleText;
        aVar.q = this.mSharedElementSourceNames;
        aVar.r = this.mSharedElementTargetNames;
        aVar.s = this.mReorderingAllowed;
        aVar.a(1);
        return aVar;
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
