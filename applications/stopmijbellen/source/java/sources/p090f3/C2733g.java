package p090f3;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.TypedArray;
import android.support.p012v4.media.C0082b;
import android.util.Log;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import java.util.ArrayList;
import java.util.List;
import p226s.C4263g;
/* renamed from: f3.g */
/* loaded from: classes-dex2jar.jar:f3/g.class */
public class C2733g {

    /* renamed from: a */
    public final C4263g<String, C2734h> f9384a = new C4263g<>();

    /* renamed from: b */
    public final C4263g<String, PropertyValuesHolder[]> f9385b = new C4263g<>();

    /* renamed from: a */
    public static C2733g m3194a(Context context, TypedArray typedArray, int i) {
        int resourceId;
        if (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0) {
            return null;
        }
        return m3193b(context, resourceId);
    }

    /* renamed from: b */
    public static C2733g m3193b(Context context, int i) {
        try {
            Animator loadAnimator = AnimatorInflater.loadAnimator(context, i);
            if (loadAnimator instanceof AnimatorSet) {
                return m3192c(((AnimatorSet) loadAnimator).getChildAnimations());
            }
            if (loadAnimator == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(loadAnimator);
            return m3192c(arrayList);
        } catch (Exception e) {
            StringBuilder m8752j = C0082b.m8752j("Can't load animation resource ID #0x");
            m8752j.append(Integer.toHexString(i));
            Log.w("MotionSpec", m8752j.toString(), e);
            return null;
        }
    }

    /* renamed from: c */
    public static C2733g m3192c(List<Animator> list) {
        TimeInterpolator timeInterpolator;
        C2733g c2733g = new C2733g();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Animator animator = list.get(i);
            if (!(animator instanceof ObjectAnimator)) {
                throw new IllegalArgumentException("Animator must be an ObjectAnimator: " + animator);
            }
            ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            c2733g.f9385b.put(objectAnimator.getPropertyName(), objectAnimator.getValues());
            String propertyName = objectAnimator.getPropertyName();
            long startDelay = objectAnimator.getStartDelay();
            long duration = objectAnimator.getDuration();
            TimeInterpolator interpolator = objectAnimator.getInterpolator();
            if ((interpolator instanceof AccelerateDecelerateInterpolator) || interpolator == null) {
                timeInterpolator = C2727a.f9373b;
            } else if (interpolator instanceof AccelerateInterpolator) {
                timeInterpolator = C2727a.f9374c;
            } else {
                timeInterpolator = interpolator;
                if (interpolator instanceof DecelerateInterpolator) {
                    timeInterpolator = C2727a.f9375d;
                }
            }
            C2734h c2734h = new C2734h(startDelay, duration, timeInterpolator);
            c2734h.f9389d = objectAnimator.getRepeatCount();
            c2734h.f9390e = objectAnimator.getRepeatMode();
            c2733g.f9384a.put(propertyName, c2734h);
        }
        return c2733g;
    }

    /* renamed from: d */
    public C2734h m3191d(String str) {
        if (this.f9384a.getOrDefault(str, null) != null) {
            return this.f9384a.getOrDefault(str, null);
        }
        throw new IllegalArgumentException();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2733g) {
            return this.f9384a.equals(((C2733g) obj).f9384a);
        }
        return false;
    }

    public int hashCode() {
        return this.f9384a.hashCode();
    }

    public String toString() {
        return '\n' + C2733g.class.getName() + '{' + Integer.toHexString(System.identityHashCode(this)) + " timings: " + this.f9384a + "}\n";
    }
}
