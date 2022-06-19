package com.mopub.mraid;

import android.content.Context;
import android.graphics.Rect;
import com.mopub.common.util.Dips;
/* renamed from: com.mopub.mraid.c */
/* loaded from: classes4-dex2jar.jar:com/mopub/mraid/c.class */
public final class C16907c {

    /* renamed from: a */
    final Rect f59786a = new Rect();

    /* renamed from: b */
    final Rect f59787b = new Rect();

    /* renamed from: c */
    final Rect f59788c = new Rect();

    /* renamed from: d */
    final Rect f59789d = new Rect();

    /* renamed from: e */
    final Rect f59790e = new Rect();

    /* renamed from: f */
    final Rect f59791f = new Rect();

    /* renamed from: g */
    final Rect f59792g = new Rect();

    /* renamed from: h */
    final Rect f59793h = new Rect();

    /* renamed from: i */
    private final Context f59794i;

    /* renamed from: j */
    private final float f59795j;

    public C16907c(Context context, float f) {
        this.f59794i = context.getApplicationContext();
        this.f59795j = f;
    }

    /* renamed from: a */
    public final void m6242a(Rect rect, Rect rect2) {
        rect2.set(Dips.pixelsToIntDips(rect.left, this.f59794i), Dips.pixelsToIntDips(rect.top, this.f59794i), Dips.pixelsToIntDips(rect.right, this.f59794i), Dips.pixelsToIntDips(rect.bottom, this.f59794i));
    }

    public final float getDensity() {
        return this.f59795j;
    }
}
