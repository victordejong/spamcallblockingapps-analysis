package com.google.android.material.p142a;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.Log;
import androidx.p013b.C0386g;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.material.a.h */
/* loaded from: classes-dex2jar.jar:com/google/android/material/a/h.class */
public class C4512h {

    /* renamed from: a */
    private final C0386g<String, C4513i> f19582a = new C0386g<>();

    /* renamed from: b */
    private final C0386g<String, PropertyValuesHolder[]> f19583b = new C0386g<>();

    /* renamed from: a */
    public static C4512h m3844a(Context context, int i) {
        C4512h c4512h;
        try {
            Animator loadAnimator = AnimatorInflater.loadAnimator(context, i);
            if (loadAnimator instanceof AnimatorSet) {
                c4512h = m3838a(((AnimatorSet) loadAnimator).getChildAnimations());
            } else if (loadAnimator != null) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(loadAnimator);
                c4512h = m3838a(arrayList);
            } else {
                c4512h = null;
            }
        } catch (Exception e) {
            Log.w("MotionSpec", "Can't load animation resource ID #0x" + Integer.toHexString(i), e);
            c4512h = null;
        }
        return c4512h;
    }

    /* renamed from: a */
    public static C4512h m3843a(Context context, TypedArray typedArray, int i) {
        int resourceId;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0) ? null : m3844a(context, resourceId);
    }

    /* renamed from: a */
    private static C4512h m3838a(List<Animator> list) {
        C4512h c4512h = new C4512h();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            m3842a(c4512h, list.get(i));
        }
        return c4512h;
    }

    /* renamed from: a */
    private static void m3842a(C4512h c4512h, Animator animator) {
        if (animator instanceof ObjectAnimator) {
            ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            c4512h.m3839a(objectAnimator.getPropertyName(), objectAnimator.getValues());
            c4512h.m3840a(objectAnimator.getPropertyName(), C4513i.m3834a((ValueAnimator) objectAnimator));
            return;
        }
        throw new IllegalArgumentException("Animator must be an ObjectAnimator: " + animator);
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* renamed from: a */
    public long m3845a() {
        char c = 0;
        int size = this.f19582a.size();
        for (int i = 0; i < size; i++) {
            C4513i m21083c = this.f19582a.m21083c(i);
            c = Math.max((long) c, m21083c.m3836a() + m21083c.m3833b());
        }
        return c;
    }

    /* renamed from: a */
    public void m3840a(String str, C4513i c4513i) {
        this.f19582a.put(str, c4513i);
    }

    /* renamed from: a */
    public void m3839a(String str, PropertyValuesHolder[] propertyValuesHolderArr) {
        this.f19583b.put(str, propertyValuesHolderArr);
    }

    /* renamed from: a */
    public boolean m3841a(String str) {
        return this.f19582a.get(str) != null;
    }

    /* renamed from: b */
    public C4513i m3837b(String str) {
        if (!m3841a(str)) {
            throw new IllegalArgumentException();
        }
        return this.f19582a.get(str);
    }

    public boolean equals(Object obj) {
        return this == obj ? true : !(obj instanceof C4512h) ? false : this.f19582a.equals(((C4512h) obj).f19582a);
    }

    public int hashCode() {
        return this.f19582a.hashCode();
    }

    public String toString() {
        return '\n' + getClass().getName() + '{' + Integer.toHexString(System.identityHashCode(this)) + " timings: " + this.f19582a + "}\n";
    }
}
