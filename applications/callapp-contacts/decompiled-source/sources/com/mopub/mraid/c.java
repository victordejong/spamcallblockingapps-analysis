package com.mopub.mraid;

import android.content.Context;
import android.graphics.Rect;
import com.mopub.common.util.Dips;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/mopub/mraid/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    final Rect f34446a = new Rect();

    /* renamed from: b  reason: collision with root package name */
    final Rect f34447b = new Rect();

    /* renamed from: c  reason: collision with root package name */
    final Rect f34448c = new Rect();

    /* renamed from: d  reason: collision with root package name */
    final Rect f34449d = new Rect();
    final Rect e = new Rect();
    final Rect f = new Rect();
    final Rect g = new Rect();
    final Rect h = new Rect();
    private final Context i;
    private final float j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(Context context, float f) {
        this.i = context.getApplicationContext();
        this.j = f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Rect rect, Rect rect2) {
        rect2.set(Dips.pixelsToIntDips(rect.left, this.i), Dips.pixelsToIntDips(rect.top, this.i), Dips.pixelsToIntDips(rect.right, this.i), Dips.pixelsToIntDips(rect.bottom, this.i));
    }

    public final float getDensity() {
        return this.j;
    }
}
