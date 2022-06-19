package androidx.appcompat.widget;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.appcompat.widget.Toolbar;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$SavedState$a.class */
public class Toolbar$SavedState$a implements Parcelable.ClassLoaderCreator<Toolbar.SavedState> {
    /* renamed from: a */
    public Toolbar.SavedState createFromParcel(Parcel parcel) {
        return new Toolbar.SavedState(parcel, (ClassLoader) null);
    }

    /* renamed from: b */
    public Toolbar.SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new Toolbar.SavedState(parcel, classLoader);
    }

    /* renamed from: c */
    public Toolbar.SavedState[] newArray(int i) {
        return new Toolbar.SavedState[i];
    }
}
