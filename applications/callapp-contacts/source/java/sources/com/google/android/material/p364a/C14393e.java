package com.google.android.material.p364a;

import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Property;
import java.util.WeakHashMap;
/* renamed from: com.google.android.material.a.e */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/a/e.class */
public final class C14393e extends Property<Drawable, Integer> {

    /* renamed from: a */
    public static final Property<Drawable, Integer> f52375a = new C14393e();

    /* renamed from: b */
    private final WeakHashMap<Drawable, Integer> f52376b = new WeakHashMap<>();

    private C14393e() {
        super(Integer.class, "drawableAlphaCompat");
    }

    @Override // android.util.Property
    public final /* synthetic */ Integer get(Drawable drawable) {
        Drawable drawable2 = drawable;
        if (Build.VERSION.SDK_INT >= 19) {
            return Integer.valueOf(drawable2.getAlpha());
        }
        if (!this.f52376b.containsKey(drawable2)) {
            return 255;
        }
        return this.f52376b.get(drawable2);
    }

    @Override // android.util.Property
    public final /* synthetic */ void set(Drawable drawable, Integer num) {
        Drawable drawable2 = drawable;
        Integer num2 = num;
        if (Build.VERSION.SDK_INT < 19) {
            this.f52376b.put(drawable2, num2);
        }
        drawable2.setAlpha(num2.intValue());
    }
}
