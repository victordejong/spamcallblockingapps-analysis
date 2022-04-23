package com.explorestack.iab.mraid;

import android.content.Context;
import android.graphics.Rect;
import com.explorestack.iab.utils.Utils;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/mraid/e.class */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    final Rect f19134a = new Rect();

    /* renamed from: b  reason: collision with root package name */
    final Rect f19135b = new Rect();

    /* renamed from: c  reason: collision with root package name */
    final Rect f19136c = new Rect();

    /* renamed from: d  reason: collision with root package name */
    final Rect f19137d = new Rect();
    final Rect e = new Rect();
    final Rect f = new Rect();
    final Rect g = new Rect();
    final Rect h = new Rect();
    private final float i;

    public e(Context context) {
        this.i = context.getResources().getDisplayMetrics().density;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Rect rect, Rect rect2) {
        rect2.set(Utils.a(rect.left, this.i), Utils.a(rect.top, this.i), Utils.a(rect.right, this.i), Utils.a(rect.bottom, this.i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(Rect rect, Rect rect2, int i, int i2, int i3, int i4) {
        if (rect.left == i && rect.top == i2 && i + i3 == rect.right && i2 + i4 == rect.bottom) {
            return false;
        }
        rect.set(i, i2, i3 + i, i4 + i2);
        a(rect, rect2);
        return true;
    }
}
