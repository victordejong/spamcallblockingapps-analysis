package android.support.design.expandable;

import android.support.annotation.IdRes;
/* loaded from: classes-dex2jar.jar:android/support/design/expandable/ExpandableTransformationWidget.class */
public interface ExpandableTransformationWidget extends ExpandableWidget {
    @IdRes
    int getExpandedComponentIdHint();

    void setExpandedComponentIdHint(@IdRes int i);
}
