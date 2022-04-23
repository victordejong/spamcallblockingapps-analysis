package p012b.p016b.p026q;

import android.os.Build;
import android.view.View;
/* renamed from: b.b.q.h0 */
/* loaded from: classes-dex2jar.jar:b/b/q/h0.class */
public class C0697h0 {
    /* renamed from: a */
    public static void m36376a(View view, CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 26) {
            view.setTooltipText(charSequence);
        } else {
            View$OnLongClickListenerC0699i0.m36369a(view, charSequence);
        }
    }
}
