package androidx.recyclerview.widget;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$SavedState$a.class */
class RecyclerView$SavedState$a implements Parcelable.ClassLoaderCreator<RecyclerView.SavedState> {
    RecyclerView$SavedState$a() {
    }

    /* renamed from: a */
    public RecyclerView.SavedState createFromParcel(Parcel parcel) {
        return new RecyclerView.SavedState(parcel, (ClassLoader) null);
    }

    /* renamed from: b */
    public RecyclerView.SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new RecyclerView.SavedState(parcel, classLoader);
    }

    /* renamed from: c */
    public RecyclerView.SavedState[] newArray(int i) {
        return new RecyclerView.SavedState[i];
    }
}
