package com.google.android.material.animation;

import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Property;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.WeakHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/material/animation/DrawableAlphaProperty.class */
public class DrawableAlphaProperty extends Property<Drawable, Integer> {

    /* renamed from: b */
    public static final Property<Drawable, Integer> f9930b = new DrawableAlphaProperty();

    /* renamed from: a */
    private final WeakHashMap<Drawable, Integer> f9931a = new WeakHashMap<>();

    private DrawableAlphaProperty() {
        super(Integer.class, "drawableAlphaCompat");
    }

    @Nullable
    /* renamed from: a */
    public Integer get(@NonNull Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 19) {
            return Integer.valueOf(drawable.getAlpha());
        }
        if (this.f9931a.containsKey(drawable)) {
            return this.f9931a.get(drawable);
        }
        return 255;
    }

    /* renamed from: b */
    public void set(@NonNull Drawable drawable, @NonNull Integer num) {
        if (Build.VERSION.SDK_INT < 19) {
            this.f9931a.put(drawable, num);
        }
        drawable.setAlpha(num.intValue());
    }
}
