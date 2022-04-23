package com.google.android.material.a;

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
import androidx.b.g;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/a/h.class */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    private final g<String, i> f30185a = new g<>();

    /* renamed from: b  reason: collision with root package name */
    private final g<String, PropertyValuesHolder[]> f30186b = new g<>();

    public static h a(Context context, int i) {
        try {
            Animator loadAnimator = AnimatorInflater.loadAnimator(context, i);
            if (loadAnimator instanceof AnimatorSet) {
                return a(((AnimatorSet) loadAnimator).getChildAnimations());
            }
            if (loadAnimator == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(loadAnimator);
            return a(arrayList);
        } catch (Exception e) {
            Log.w("MotionSpec", "Can't load animation resource ID #0x" + Integer.toHexString(i), e);
            return null;
        }
    }

    public static h a(Context context, TypedArray typedArray, int i) {
        int resourceId;
        if (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0) {
            return null;
        }
        return a(context, resourceId);
    }

    private static h a(List<Animator> list) {
        h hVar = new h();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            a(hVar, list.get(i));
        }
        return hVar;
    }

    private static void a(h hVar, Animator animator) {
        if (animator instanceof ObjectAnimator) {
            ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            hVar.a(objectAnimator.getPropertyName(), objectAnimator.getValues());
            hVar.a(objectAnimator.getPropertyName(), i.a((ValueAnimator) objectAnimator));
            return;
        }
        throw new IllegalArgumentException("Animator must be an ObjectAnimator: ".concat(String.valueOf(animator)));
    }

    private void a(String str, i iVar) {
        this.f30185a.put(str, iVar);
    }

    private static PropertyValuesHolder[] a(PropertyValuesHolder[] propertyValuesHolderArr) {
        PropertyValuesHolder[] propertyValuesHolderArr2 = new PropertyValuesHolder[propertyValuesHolderArr.length];
        for (int i = 0; i < propertyValuesHolderArr.length; i++) {
            propertyValuesHolderArr2[i] = propertyValuesHolderArr[i].clone();
        }
        return propertyValuesHolderArr2;
    }

    public final long a() {
        int size = this.f30185a.size();
        long j = 0;
        for (int i = 0; i < size; i++) {
            i c2 = this.f30185a.c(i);
            j = Math.max(j, c2.f30187a + c2.f30188b);
        }
        return j;
    }

    public final <T> ObjectAnimator a(String str, T t, Property<T, ?> property) {
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(t, c(str));
        ofPropertyValuesHolder.setProperty(property);
        a(str).a((Animator) ofPropertyValuesHolder);
        return ofPropertyValuesHolder;
    }

    public final i a(String str) {
        if (this.f30185a.get(str) != null) {
            return this.f30185a.get(str);
        }
        throw new IllegalArgumentException();
    }

    public final void a(String str, PropertyValuesHolder[] propertyValuesHolderArr) {
        this.f30186b.put(str, propertyValuesHolderArr);
    }

    public final boolean b(String str) {
        return this.f30186b.get(str) != null;
    }

    public final PropertyValuesHolder[] c(String str) {
        if (b(str)) {
            return a(this.f30186b.get(str));
        }
        throw new IllegalArgumentException();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        return this.f30185a.equals(((h) obj).f30185a);
    }

    public final int hashCode() {
        return this.f30185a.hashCode();
    }

    public final String toString() {
        return '\n' + getClass().getName() + '{' + Integer.toHexString(System.identityHashCode(this)) + " timings: " + this.f30185a + "}\n";
    }
}
