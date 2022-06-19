package org.mistergroup.shouldianswer.utils;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.util.TypedValue;
import android.widget.ImageView;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.MyApp;
import org.mistergroup.shouldianswer.model.EnumC2395ag;
/* renamed from: org.mistergroup.shouldianswer.utils.x */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/x.class */
public final class C3134x {

    /* renamed from: a */
    public static final C3134x f9269a = new C3134x();

    /* renamed from: b */
    private static Float f9270b;

    private C3134x() {
    }

    /* renamed from: a */
    public final float m27a() {
        if (f9270b == null) {
            Resources resources = MyApp.f5480c.m1802a().getResources();
            C1694h.m3122a((Object) resources, "MyApp.instance.resources");
            f9270b = Float.valueOf(resources.getDisplayMetrics().densityDpi / 160);
        }
        Float f = f9270b;
        if (f == null) {
            C1694h.m3124a();
        }
        return f.floatValue();
    }

    /* renamed from: a */
    public final int m26a(Context context, int i) {
        C1694h.m3117b(context, "context");
        TypedValue typedValue = new TypedValue();
        return context.getTheme().resolveAttribute(i, typedValue, true) ? typedValue.data : 0;
    }

    /* renamed from: a */
    public final void m25a(Context context, ImageView imageView, EnumC2395ag enumC2395ag) {
        C1694h.m3117b(context, "context");
        C1694h.m3117b(imageView, "img");
        C1694h.m3117b(enumC2395ag, "rating");
        imageView.setImageResource(EnumC2395ag.f6924e.m1311c(enumC2395ag));
        imageView.setContentDescription(EnumC2395ag.f6924e.m1313a(enumC2395ag));
        imageView.setColorFilter(0, PorterDuff.Mode.ADD);
    }

    /* renamed from: b */
    public final void m24b(Context context, ImageView imageView, EnumC2395ag enumC2395ag) {
        C1694h.m3117b(context, "context");
        C1694h.m3117b(imageView, "img");
        C1694h.m3117b(enumC2395ag, "rating");
        imageView.setImageResource(EnumC2395ag.f6924e.m1312b(enumC2395ag));
        imageView.setContentDescription(EnumC2395ag.f6924e.m1313a(enumC2395ag));
        imageView.setColorFilter(0, PorterDuff.Mode.ADD);
    }
}
