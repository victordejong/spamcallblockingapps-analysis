package com.android.contacts.util;

import android.view.View;
import android.view.ViewTreeObserver;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/SchedulingUtils.class */
public class SchedulingUtils {
    public static void doAfterDraw(final View view, final Runnable runnable) {
        view.getViewTreeObserver().addOnDrawListener(new ViewTreeObserver.OnDrawListener() { // from class: com.android.contacts.util.SchedulingUtils.2
            @Override // android.view.ViewTreeObserver.OnDrawListener
            public final void onDraw() {
                view.getViewTreeObserver().removeOnDrawListener(this);
                runnable.run();
            }
        });
    }

    public static void doAfterLayout(final View view, final Runnable runnable) {
        view.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.android.contacts.util.SchedulingUtils.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                view.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                runnable.run();
            }
        });
    }
}
