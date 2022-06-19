package me.zhanghai.android.materialprogressbar.internal;

import android.animation.ObjectAnimator;
import android.graphics.Path;
import android.util.Property;
/* loaded from: classes2-dex2jar.jar:me/zhanghai/android/materialprogressbar/internal/ObjectAnimatorCompat.class */
public class ObjectAnimatorCompat {
    private ObjectAnimatorCompat() {
    }

    public static <T> ObjectAnimator ofArgb(T t, Property<T, Integer> property, int... iArr) {
        return ObjectAnimatorCompatLollipop.ofArgb(t, property, iArr);
    }

    public static ObjectAnimator ofArgb(Object obj, String str, int... iArr) {
        return ObjectAnimatorCompatLollipop.ofArgb(obj, str, iArr);
    }

    public static <T> ObjectAnimator ofFloat(T t, Property<T, Float> property, Property<T, Float> property2, Path path) {
        return ObjectAnimatorCompatLollipop.ofFloat(t, property, property2, path);
    }

    public static ObjectAnimator ofFloat(Object obj, String str, String str2, Path path) {
        return ObjectAnimatorCompatLollipop.ofFloat(obj, str, str2, path);
    }

    public static <T> ObjectAnimator ofInt(T t, Property<T, Integer> property, Property<T, Integer> property2, Path path) {
        return ObjectAnimatorCompatLollipop.ofInt(t, property, property2, path);
    }

    public static ObjectAnimator ofInt(Object obj, String str, String str2, Path path) {
        return ObjectAnimatorCompatLollipop.ofInt(obj, str, str2, path);
    }
}
