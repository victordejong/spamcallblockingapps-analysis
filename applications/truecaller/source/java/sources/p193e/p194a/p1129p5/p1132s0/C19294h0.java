package p193e.p194a.p1129p5.p1132s0;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
/* renamed from: e.a.p5.s0.h0 */
/* loaded from: classes15-dex2jar.jar:e/a/p5/s0/h0.class */
public final class C19294h0 extends ViewOutlineProvider {
    @Override // android.view.ViewOutlineProvider
    public void getOutline(View view, Outline outline) {
        if (view == null || outline == null) {
            return;
        }
        outline.setOval(0, 0, view.getWidth(), view.getHeight());
    }
}
