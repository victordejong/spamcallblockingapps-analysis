package android.support.v4.view;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
/* loaded from: classes-dex2jar.jar:android/support/v4/view/c.class */
final class c {

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/c$a.class */
    public interface a {
        Object a(View view);

        void a(View view, int i);

        void a(View view, Object obj);

        boolean a(View view, int i, Bundle bundle);

        boolean a(View view, AccessibilityEvent accessibilityEvent);

        boolean a(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent);

        void b(View view, AccessibilityEvent accessibilityEvent);

        void c(View view, AccessibilityEvent accessibilityEvent);

        void d(View view, AccessibilityEvent accessibilityEvent);
    }
}
