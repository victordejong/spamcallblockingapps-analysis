package androidx.appcompat.widget;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.appcompat.widget.SearchView;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$SavedState$a.class */
public class SearchView$SavedState$a implements Parcelable.ClassLoaderCreator<SearchView.SavedState> {
    /* renamed from: a */
    public SearchView.SavedState createFromParcel(Parcel parcel) {
        return new SearchView.SavedState(parcel, (ClassLoader) null);
    }

    /* renamed from: b */
    public SearchView.SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new SearchView.SavedState(parcel, classLoader);
    }

    /* renamed from: c */
    public SearchView.SavedState[] newArray(int i) {
        return new SearchView.SavedState[i];
    }
}
