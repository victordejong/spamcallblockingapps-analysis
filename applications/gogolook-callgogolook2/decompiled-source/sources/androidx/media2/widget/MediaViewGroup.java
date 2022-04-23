package androidx.media2.widget;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AttrRes;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaViewGroup.class */
public abstract class MediaViewGroup extends ViewGroup {
    public boolean mAggregatedIsVisible = false;

    public MediaViewGroup(@NonNull Context context) {
        super(context);
    }

    public MediaViewGroup(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MediaViewGroup(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i) {
        super(context, attributeSet, i);
    }

    public boolean isAggregatedVisible() {
        return this.mAggregatedIsVisible;
    }

    @Override // android.view.View
    @RequiresApi(24)
    public void onVisibilityAggregated(boolean z) {
        super.onVisibilityAggregated(z);
        onVisibilityAggregatedCompat(z);
    }

    @CallSuper
    public void onVisibilityAggregatedCompat(boolean z) {
        this.mAggregatedIsVisible = z;
    }

    @Override // android.view.View
    public void onVisibilityChanged(@NonNull View view, int i) {
        boolean isShown;
        if (Build.VERSION.SDK_INT < 24 && getWindowVisibility() == 0 && this.mAggregatedIsVisible != (isShown = isShown())) {
            onVisibilityAggregatedCompat(isShown);
        }
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i) {
        if (Build.VERSION.SDK_INT < 24 && isShown()) {
            onVisibilityAggregatedCompat(i == 0);
        }
    }
}
