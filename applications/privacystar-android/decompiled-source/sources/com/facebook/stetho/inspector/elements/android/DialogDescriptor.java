package com.facebook.stetho.inspector.elements.android;

import android.app.Dialog;
import android.graphics.Rect;
import android.view.View;
import android.view.Window;
import com.facebook.stetho.common.Accumulator;
import com.facebook.stetho.inspector.elements.AbstractChainedDescriptor;
import com.facebook.stetho.inspector.elements.Descriptor;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/elements/android/DialogDescriptor.class */
final class DialogDescriptor extends AbstractChainedDescriptor<Dialog> implements HighlightableDescriptor<Dialog> {
    @Nullable
    public Object getElementToHighlightAtPosition(Dialog dialog, int i, int i2, Rect rect) {
        Window window;
        HighlightableDescriptor highlightableDescriptor;
        Descriptor.Host host = getHost();
        Object obj = null;
        if (host instanceof AndroidDescriptorHost) {
            window = dialog.getWindow();
            highlightableDescriptor = ((AndroidDescriptorHost) host).getHighlightableDescriptor(window);
        } else {
            window = null;
            highlightableDescriptor = null;
        }
        if (highlightableDescriptor != null) {
            obj = highlightableDescriptor.getElementToHighlightAtPosition(window, i, i2, rect);
        }
        return obj;
    }

    @Nullable
    public View getViewAndBoundsForHighlighting(Dialog dialog, Rect rect) {
        Window window;
        HighlightableDescriptor highlightableDescriptor;
        Descriptor.Host host = getHost();
        View view = null;
        if (host instanceof AndroidDescriptorHost) {
            window = dialog.getWindow();
            highlightableDescriptor = ((AndroidDescriptorHost) host).getHighlightableDescriptor(window);
        } else {
            window = null;
            highlightableDescriptor = null;
        }
        if (highlightableDescriptor != null) {
            view = highlightableDescriptor.getViewAndBoundsForHighlighting(window, rect);
        }
        return view;
    }

    /* renamed from: onGetChildren  reason: avoid collision after fix types in other method */
    protected void onGetChildren2(Dialog dialog, Accumulator<Object> accumulator) {
        Window window = dialog.getWindow();
        if (window != null) {
            accumulator.store(window);
        }
    }

    @Override // com.facebook.stetho.inspector.elements.AbstractChainedDescriptor
    protected /* bridge */ /* synthetic */ void onGetChildren(Dialog dialog, Accumulator accumulator) {
        onGetChildren2(dialog, (Accumulator<Object>) accumulator);
    }
}
