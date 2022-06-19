package com.explorestack.iab.mraid;

import android.content.Context;
import android.graphics.Rect;
import com.explorestack.iab.utils.Utils;
/* renamed from: com.explorestack.iab.mraid.e */
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/mraid/e.class */
public final class C9565e {

    /* renamed from: a */
    final Rect f32506a = new Rect();

    /* renamed from: b */
    final Rect f32507b = new Rect();

    /* renamed from: c */
    final Rect f32508c = new Rect();

    /* renamed from: d */
    final Rect f32509d = new Rect();

    /* renamed from: e */
    final Rect f32510e = new Rect();

    /* renamed from: f */
    final Rect f32511f = new Rect();

    /* renamed from: g */
    final Rect f32512g = new Rect();

    /* renamed from: h */
    final Rect f32513h = new Rect();

    /* renamed from: i */
    private final float f32514i;

    public C9565e(Context context) {
        this.f32514i = context.getResources().getDisplayMetrics().density;
    }

    /* renamed from: a */
    public final void m24174a(Rect rect, Rect rect2) {
        rect2.set(Utils.m24122a(rect.left, this.f32514i), Utils.m24122a(rect.top, this.f32514i), Utils.m24122a(rect.right, this.f32514i), Utils.m24122a(rect.bottom, this.f32514i));
    }

    /* renamed from: a */
    public final boolean m24173a(Rect rect, Rect rect2, int i, int i2, int i3, int i4) {
        if (rect.left == i && rect.top == i2 && i + i3 == rect.right && i2 + i4 == rect.bottom) {
            return false;
        }
        rect.set(i, i2, i3 + i, i4 + i2);
        m24174a(rect, rect2);
        return true;
    }
}
