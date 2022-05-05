package androidx.core.view;

import androidx.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:androidx/core/view/NestedScrollingChild2.class */
public interface NestedScrollingChild2 extends NestedScrollingChild {
    boolean dispatchNestedPreScroll(int i, int i2, @Nullable int[] iArr, @Nullable int[] iArr2, int i3);

    boolean dispatchNestedScroll(int i, int i2, int i3, int i4, @Nullable int[] iArr, int i5);

    boolean hasNestedScrollingParent(int i);

    boolean startNestedScroll(int i, int i2);

    void stopNestedScroll(int i);
}
