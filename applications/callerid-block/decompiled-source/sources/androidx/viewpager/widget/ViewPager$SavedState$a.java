package androidx.viewpager.widget;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.viewpager.widget.ViewPager;
/* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$SavedState$a.class */
final class ViewPager$SavedState$a implements Parcelable.ClassLoaderCreator<ViewPager.SavedState> {
    ViewPager$SavedState$a() {
    }

    /* renamed from: a */
    public ViewPager.SavedState createFromParcel(Parcel parcel) {
        return new ViewPager.SavedState(parcel, (ClassLoader) null);
    }

    /* renamed from: b */
    public ViewPager.SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new ViewPager.SavedState(parcel, classLoader);
    }

    /* renamed from: c */
    public ViewPager.SavedState[] newArray(int i) {
        return new ViewPager.SavedState[i];
    }
}
