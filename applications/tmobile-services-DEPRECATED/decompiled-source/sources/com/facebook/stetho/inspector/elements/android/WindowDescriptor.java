package com.facebook.stetho.inspector.elements.android;

import android.graphics.Rect;
import android.view.View;
import android.view.Window;
import com.facebook.stetho.common.Accumulator;
import com.facebook.stetho.inspector.elements.AbstractChainedDescriptor;
import com.facebook.stetho.inspector.elements.Descriptor;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/elements/android/WindowDescriptor.class */
final class WindowDescriptor extends AbstractChainedDescriptor<Window> implements HighlightableDescriptor<Window> {
    @Nullable
    public Object getElementToHighlightAtPosition(Window window, int i, int i2, Rect rect) {
        HighlightableDescriptor highlightableDescriptor;
        View view;
        Descriptor.Host host = getHost();
        Object obj = null;
        if (host instanceof AndroidDescriptorHost) {
            view = window.peekDecorView();
            highlightableDescriptor = ((AndroidDescriptorHost) host).getHighlightableDescriptor(view);
        } else {
            view = null;
            highlightableDescriptor = null;
        }
        if (highlightableDescriptor != null) {
            obj = highlightableDescriptor.getElementToHighlightAtPosition(view, i, i2, rect);
        }
        return obj;
    }

    @Nullable
    public View getViewAndBoundsForHighlighting(Window window, Rect rect) {
        return window.peekDecorView();
    }

    /* renamed from: onGetChildren  reason: avoid collision after fix types in other method */
    protected void onGetChildren2(Window window, Accumulator<Object> accumulator) {
        View peekDecorView = window.peekDecorView();
        if (peekDecorView != null) {
            accumulator.store(peekDecorView);
        }
    }

    @Override // com.facebook.stetho.inspector.elements.AbstractChainedDescriptor
    protected /* bridge */ /* synthetic */ void onGetChildren(Window window, Accumulator accumulator) {
        onGetChildren2(window, (Accumulator<Object>) accumulator);
    }
}
