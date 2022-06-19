package androidx.viewpager2.adapter;

import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:androidx/viewpager2/adapter/StatefulAdapter.class */
public interface StatefulAdapter {
    void restoreState(Parcelable parcelable);

    Parcelable saveState();
}
