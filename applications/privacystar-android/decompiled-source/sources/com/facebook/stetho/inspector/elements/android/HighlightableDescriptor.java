package com.facebook.stetho.inspector.elements.android;

import android.graphics.Rect;
import android.view.View;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/elements/android/HighlightableDescriptor.class */
public interface HighlightableDescriptor<E> {
    @Nullable
    Object getElementToHighlightAtPosition(E e, int i, int i2, Rect rect);

    @Nullable
    View getViewAndBoundsForHighlighting(E e, Rect rect);
}
