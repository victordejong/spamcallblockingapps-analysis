package androidx.coordinatorlayout.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import androidx.customview.view.AbsSavedState;
/* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$SavedState.class */
public class CoordinatorLayout$SavedState extends AbsSavedState {
    public static final Parcelable.Creator<CoordinatorLayout$SavedState> CREATOR = new C0121a();

    /* renamed from: c */
    public SparseArray<Parcelable> f672c;

    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$SavedState$a */
    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$SavedState$a.class */
    public static final class C0121a implements Parcelable.ClassLoaderCreator<CoordinatorLayout$SavedState> {
        @Override // android.os.Parcelable.Creator
        public Object createFromParcel(Parcel parcel) {
            return new CoordinatorLayout$SavedState(parcel, null);
        }

        @Override // android.os.Parcelable.ClassLoaderCreator
        public CoordinatorLayout$SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
            return new CoordinatorLayout$SavedState(parcel, classLoader);
        }

        @Override // android.os.Parcelable.Creator
        public Object[] newArray(int i) {
            return new CoordinatorLayout$SavedState[i];
        }
    }

    public CoordinatorLayout$SavedState(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        int readInt = parcel.readInt();
        int[] iArr = new int[readInt];
        parcel.readIntArray(iArr);
        Parcelable[] readParcelableArray = parcel.readParcelableArray(classLoader);
        this.f672c = new SparseArray<>(readInt);
        for (int i = 0; i < readInt; i++) {
            this.f672c.append(iArr[i], readParcelableArray[i]);
        }
    }

    public CoordinatorLayout$SavedState(Parcelable parcelable) {
        super(parcelable);
    }

    @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f713a, i);
        SparseArray<Parcelable> sparseArray = this.f672c;
        int size = sparseArray != null ? sparseArray.size() : 0;
        parcel.writeInt(size);
        int[] iArr = new int[size];
        Parcelable[] parcelableArr = new Parcelable[size];
        for (int i2 = 0; i2 < size; i2++) {
            iArr[i2] = this.f672c.keyAt(i2);
            parcelableArr[i2] = this.f672c.valueAt(i2);
        }
        parcel.writeIntArray(iArr);
        parcel.writeParcelableArray(parcelableArr, i);
    }
}
