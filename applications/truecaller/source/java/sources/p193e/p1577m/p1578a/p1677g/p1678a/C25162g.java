package p193e.p1577m.p1578a.p1677g.p1678a;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.Property;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import java.util.ArrayList;
import java.util.List;
import p1727n3.p1788g.C26187h;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.m.a.g.a.g */
/* loaded from: classes3-dex2jar.jar:e/m/a/g/a/g.class */
public class C25162g {

    /* renamed from: a */
    public final C26187h<String, C25163h> f70410a = new C26187h<>();

    /* renamed from: b */
    public final C26187h<String, PropertyValuesHolder[]> f70411b = new C26187h<>();

    /* renamed from: a */
    public static C25162g m4149a(Context context, TypedArray typedArray, int i) {
        int resourceId;
        if (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0) {
            return null;
        }
        return m4148b(context, resourceId);
    }

    /* renamed from: b */
    public static C25162g m4148b(Context context, int i) {
        try {
            Animator loadAnimator = AnimatorInflater.loadAnimator(context, i);
            if (loadAnimator instanceof AnimatorSet) {
                return m4147c(((AnimatorSet) loadAnimator).getChildAnimations());
            }
            if (loadAnimator == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(loadAnimator);
            return m4147c(arrayList);
        } catch (Exception e) {
            Integer.toHexString(i);
            return null;
        }
    }

    /* renamed from: c */
    public static C25162g m4147c(List<Animator> list) {
        TimeInterpolator timeInterpolator;
        C25162g c25162g = new C25162g();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Animator animator = list.get(i);
            if (!(animator instanceof ObjectAnimator)) {
                throw new IllegalArgumentException("Animator must be an ObjectAnimator: " + animator);
            }
            ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            c25162g.f70411b.put(objectAnimator.getPropertyName(), objectAnimator.getValues());
            String propertyName = objectAnimator.getPropertyName();
            long startDelay = objectAnimator.getStartDelay();
            long duration = objectAnimator.getDuration();
            TimeInterpolator interpolator = objectAnimator.getInterpolator();
            if ((interpolator instanceof AccelerateDecelerateInterpolator) || interpolator == null) {
                timeInterpolator = C25156a.f70398b;
            } else if (interpolator instanceof AccelerateInterpolator) {
                timeInterpolator = C25156a.f70399c;
            } else {
                timeInterpolator = interpolator;
                if (interpolator instanceof DecelerateInterpolator) {
                    timeInterpolator = C25156a.f70400d;
                }
            }
            C25163h c25163h = new C25163h(startDelay, duration, timeInterpolator);
            c25163h.f70415d = objectAnimator.getRepeatCount();
            c25163h.f70416e = objectAnimator.getRepeatMode();
            c25162g.f70410a.put(propertyName, c25163h);
        }
        return c25162g;
    }

    /* renamed from: d */
    public <T> ObjectAnimator m4146d(String str, T t, Property<T, ?> property) {
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(t, m4145e(str));
        ofPropertyValuesHolder.setProperty(property);
        m4144f(str).m4142a(ofPropertyValuesHolder);
        return ofPropertyValuesHolder;
    }

    /* renamed from: e */
    public PropertyValuesHolder[] m4145e(String str) {
        if (m4143g(str)) {
            PropertyValuesHolder[] orDefault = this.f70411b.getOrDefault(str, null);
            PropertyValuesHolder[] propertyValuesHolderArr = new PropertyValuesHolder[orDefault.length];
            for (int i = 0; i < orDefault.length; i++) {
                propertyValuesHolderArr[i] = orDefault[i].clone();
            }
            return propertyValuesHolderArr;
        }
        throw new IllegalArgumentException();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C25162g) {
            return this.f70410a.equals(((C25162g) obj).f70410a);
        }
        return false;
    }

    /* renamed from: f */
    public C25163h m4144f(String str) {
        if (this.f70410a.getOrDefault(str, null) != null) {
            return this.f70410a.getOrDefault(str, null);
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: g */
    public boolean m4143g(String str) {
        return this.f70411b.getOrDefault(str, null) != null;
    }

    public int hashCode() {
        return this.f70410a.hashCode();
    }

    public String toString() {
        StringBuilder m8558w = C22128a.m8558w('\n');
        m8558w.append(C25162g.class.getName());
        m8558w.append('{');
        m8558w.append(Integer.toHexString(System.identityHashCode(this)));
        m8558w.append(" timings: ");
        m8558w.append(this.f70410a);
        m8558w.append("}\n");
        return m8558w.toString();
    }
}
