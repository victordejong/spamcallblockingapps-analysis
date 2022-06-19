package androidx.drawerlayout.widget;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.drawerlayout.widget.DrawerLayout;
/* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$SavedState$a.class */
public final class DrawerLayout$SavedState$a implements Parcelable.ClassLoaderCreator<DrawerLayout.SavedState> {
    /* renamed from: a */
    public DrawerLayout.SavedState createFromParcel(Parcel parcel) {
        return new DrawerLayout.SavedState(parcel, (ClassLoader) null);
    }

    /* renamed from: b */
    public DrawerLayout.SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new DrawerLayout.SavedState(parcel, classLoader);
    }

    /* renamed from: c */
    public DrawerLayout.SavedState[] newArray(int i) {
        return new DrawerLayout.SavedState[i];
    }
}
