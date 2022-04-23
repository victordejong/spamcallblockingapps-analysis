package com.google.android.material.a;

import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Property;
import java.util.WeakHashMap;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/a/e.class */
public final class e extends Property<Drawable, Integer> {

    /* renamed from: a  reason: collision with root package name */
    public static final Property<Drawable, Integer> f30179a = new e();

    /* renamed from: b  reason: collision with root package name */
    private final WeakHashMap<Drawable, Integer> f30180b = new WeakHashMap<>();

    private e() {
        super(Integer.class, "drawableAlphaCompat");
    }

    @Override // android.util.Property
    public final /* synthetic */ Integer get(Drawable drawable) {
        Drawable drawable2 = drawable;
        if (Build.VERSION.SDK_INT >= 19) {
            return Integer.valueOf(drawable2.getAlpha());
        }
        if (this.f30180b.containsKey(drawable2)) {
            return this.f30180b.get(drawable2);
        }
        return 255;
    }

    @Override // android.util.Property
    public final /* synthetic */ void set(Drawable drawable, Integer num) {
        Drawable drawable2 = drawable;
        Integer num2 = num;
        if (Build.VERSION.SDK_INT < 19) {
            this.f30180b.put(drawable2, num2);
        }
        drawable2.setAlpha(num2.intValue());
    }
}
