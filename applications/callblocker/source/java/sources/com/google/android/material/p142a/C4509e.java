package com.google.android.material.p142a;

import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Property;
import java.util.WeakHashMap;
/* renamed from: com.google.android.material.a.e */
/* loaded from: classes-dex2jar.jar:com/google/android/material/a/e.class */
public class C4509e extends Property<Drawable, Integer> {

    /* renamed from: a */
    public static final Property<Drawable, Integer> f19576a = new C4509e();

    /* renamed from: b */
    private final WeakHashMap<Drawable, Integer> f19577b = new WeakHashMap<>();

    private C4509e() {
        super(Integer.class, "drawableAlphaCompat");
    }

    /* renamed from: a */
    public Integer get(Drawable drawable) {
        return Build.VERSION.SDK_INT >= 19 ? Integer.valueOf(drawable.getAlpha()) : this.f19577b.containsKey(drawable) ? this.f19577b.get(drawable) : 255;
    }

    /* renamed from: a */
    public void set(Drawable drawable, Integer num) {
        if (Build.VERSION.SDK_INT < 19) {
            this.f19577b.put(drawable, num);
        }
        drawable.setAlpha(num.intValue());
    }
}
