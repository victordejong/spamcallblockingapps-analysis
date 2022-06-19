package com.google.android.material.p364a;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.Log;
import android.util.Property;
import androidx.p023b.C0441g;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.material.a.h */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/a/h.class */
public final class C14396h {

    /* renamed from: a */
    private final C0441g<String, C14397i> f52381a = new C0441g<>();

    /* renamed from: b */
    private final C0441g<String, PropertyValuesHolder[]> f52382b = new C0441g<>();

    /* renamed from: a */
    public static C14396h m11333a(Context context, int i) {
        try {
            Animator loadAnimator = AnimatorInflater.loadAnimator(context, i);
            if (loadAnimator instanceof AnimatorSet) {
                return m11326a(((AnimatorSet) loadAnimator).getChildAnimations());
            }
            if (loadAnimator == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(loadAnimator);
            return m11326a(arrayList);
        } catch (Exception e) {
            Log.w("MotionSpec", "Can't load animation resource ID #0x" + Integer.toHexString(i), e);
            return null;
        }
    }

    /* renamed from: a */
    public static C14396h m11332a(Context context, TypedArray typedArray, int i) {
        int resourceId;
        if (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0) {
            return null;
        }
        return m11333a(context, resourceId);
    }

    /* renamed from: a */
    private static C14396h m11326a(List<Animator> list) {
        C14396h c14396h = new C14396h();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            m11331a(c14396h, list.get(i));
        }
        return c14396h;
    }

    /* renamed from: a */
    private static void m11331a(C14396h c14396h, Animator animator) {
        if (animator instanceof ObjectAnimator) {
            ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            c14396h.m11327a(objectAnimator.getPropertyName(), objectAnimator.getValues());
            c14396h.m11329a(objectAnimator.getPropertyName(), C14397i.m11320a((ValueAnimator) objectAnimator));
            return;
        }
        throw new IllegalArgumentException("Animator must be an ObjectAnimator: ".concat(String.valueOf(animator)));
    }

    /* renamed from: a */
    private void m11329a(String str, C14397i c14397i) {
        this.f52381a.put(str, c14397i);
    }

    /* renamed from: a */
    private static PropertyValuesHolder[] m11325a(PropertyValuesHolder[] propertyValuesHolderArr) {
        PropertyValuesHolder[] propertyValuesHolderArr2 = new PropertyValuesHolder[propertyValuesHolderArr.length];
        for (int i = 0; i < propertyValuesHolderArr.length; i++) {
            propertyValuesHolderArr2[i] = propertyValuesHolderArr[i].clone();
        }
        return propertyValuesHolderArr2;
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* renamed from: a */
    public final long m11334a() {
        int size = this.f52381a.size();
        char c = 0;
        for (int i = 0; i < size; i++) {
            C14397i m45515c = this.f52381a.m45515c(i);
            c = Math.max((long) c, m45515c.f52383a + m45515c.f52384b);
        }
        return c;
    }

    /* renamed from: a */
    public final <T> ObjectAnimator m11328a(String str, T t, Property<T, ?> property) {
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(t, m11323c(str));
        ofPropertyValuesHolder.setProperty(property);
        m11330a(str).m11321a((Animator) ofPropertyValuesHolder);
        return ofPropertyValuesHolder;
    }

    /* renamed from: a */
    public final C14397i m11330a(String str) {
        if (this.f52381a.get(str) != null) {
            return this.f52381a.get(str);
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: a */
    public final void m11327a(String str, PropertyValuesHolder[] propertyValuesHolderArr) {
        this.f52382b.put(str, propertyValuesHolderArr);
    }

    /* renamed from: b */
    public final boolean m11324b(String str) {
        return this.f52382b.get(str) != null;
    }

    /* renamed from: c */
    public final PropertyValuesHolder[] m11323c(String str) {
        if (m11324b(str)) {
            return m11325a(this.f52382b.get(str));
        }
        throw new IllegalArgumentException();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C14396h) {
            return this.f52381a.equals(((C14396h) obj).f52381a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f52381a.hashCode();
    }

    public final String toString() {
        return '\n' + getClass().getName() + '{' + Integer.toHexString(System.identityHashCode(this)) + " timings: " + this.f52381a + "}\n";
    }
}
