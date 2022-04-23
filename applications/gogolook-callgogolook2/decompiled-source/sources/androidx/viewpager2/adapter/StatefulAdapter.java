package androidx.viewpager2.adapter;

import android.os.Parcelable;
import androidx.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:androidx/viewpager2/adapter/StatefulAdapter.class */
public interface StatefulAdapter {
    void restoreState(@NonNull Parcelable parcelable);

    @NonNull
    Parcelable saveState();
}
