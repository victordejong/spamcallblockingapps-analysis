package androidx.coordinatorlayout.widget;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
/* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$SavedState$a.class */
final class CoordinatorLayout$SavedState$a implements Parcelable.ClassLoaderCreator<CoordinatorLayout.SavedState> {
    CoordinatorLayout$SavedState$a() {
    }

    /* renamed from: a */
    public CoordinatorLayout.SavedState createFromParcel(Parcel parcel) {
        return new CoordinatorLayout.SavedState(parcel, (ClassLoader) null);
    }

    /* renamed from: b */
    public CoordinatorLayout.SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new CoordinatorLayout.SavedState(parcel, classLoader);
    }

    /* renamed from: c */
    public CoordinatorLayout.SavedState[] newArray(int i) {
        return new CoordinatorLayout.SavedState[i];
    }
}
