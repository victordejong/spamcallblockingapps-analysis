package p078c.p084c.p085a.p096b.p097m;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.Log;
import android.util.Property;
import java.util.ArrayList;
import java.util.List;
import p020b.p036e.C1502g;
/* renamed from: c.c.a.b.m.h */
/* loaded from: classes2-dex2jar.jar:c/c/a/b/m/h.class */
public class C1904h {

    /* renamed from: a */
    private final C1502g<String, C1905i> f6826a = new C1502g<>();

    /* renamed from: b */
    private final C1502g<String, PropertyValuesHolder[]> f6827b = new C1502g<>();

    /* renamed from: a */
    private static void m28740a(C1904h c1904h, Animator animator) {
        if (animator instanceof ObjectAnimator) {
            ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            c1904h.m28729l(objectAnimator.getPropertyName(), objectAnimator.getValues());
            c1904h.m28728m(objectAnimator.getPropertyName(), C1905i.m28726b(objectAnimator));
            return;
        }
        throw new IllegalArgumentException("Animator must be an ObjectAnimator: " + animator);
    }

    /* renamed from: b */
    private PropertyValuesHolder[] m28739b(PropertyValuesHolder[] propertyValuesHolderArr) {
        PropertyValuesHolder[] propertyValuesHolderArr2 = new PropertyValuesHolder[propertyValuesHolderArr.length];
        for (int i = 0; i < propertyValuesHolderArr.length; i++) {
            propertyValuesHolderArr2[i] = propertyValuesHolderArr[i].clone();
        }
        return propertyValuesHolderArr2;
    }

    /* renamed from: c */
    public static C1904h m28738c(Context context, TypedArray typedArray, int i) {
        int resourceId;
        if (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0) {
            return null;
        }
        return m28737d(context, resourceId);
    }

    /* renamed from: d */
    public static C1904h m28737d(Context context, int i) {
        try {
            Animator loadAnimator = AnimatorInflater.loadAnimator(context, i);
            if (loadAnimator instanceof AnimatorSet) {
                return m28736e(((AnimatorSet) loadAnimator).getChildAnimations());
            }
            if (loadAnimator == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(loadAnimator);
            return m28736e(arrayList);
        } catch (Exception e) {
            Log.w("MotionSpec", "Can't load animation resource ID #0x" + Integer.toHexString(i), e);
            return null;
        }
    }

    /* renamed from: e */
    private static C1904h m28736e(List<Animator> list) {
        C1904h c1904h = new C1904h();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            m28740a(c1904h, list.get(i));
        }
        return c1904h;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C1904h) {
            return this.f6826a.equals(((C1904h) obj).f6826a);
        }
        return false;
    }

    /* renamed from: f */
    public <T> ObjectAnimator m28735f(String str, T t, Property<T, ?> property) {
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(t, m28734g(str));
        ofPropertyValuesHolder.setProperty(property);
        m28733h(str).m28727a(ofPropertyValuesHolder);
        return ofPropertyValuesHolder;
    }

    /* renamed from: g */
    public PropertyValuesHolder[] m28734g(String str) {
        if (m28731j(str)) {
            return m28739b(this.f6827b.get(str));
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: h */
    public C1905i m28733h(String str) {
        if (m28730k(str)) {
            return this.f6826a.get(str);
        }
        throw new IllegalArgumentException();
    }

    public int hashCode() {
        return this.f6826a.hashCode();
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* renamed from: i */
    public long m28732i() {
        int size = this.f6826a.size();
        char c = 0;
        for (int i = 0; i < size; i++) {
            C1905i m29909m = this.f6826a.m29909m(i);
            c = Math.max((long) c, m29909m.m28725c() + m29909m.m28724d());
        }
        return c;
    }

    /* renamed from: j */
    public boolean m28731j(String str) {
        return this.f6827b.get(str) != null;
    }

    /* renamed from: k */
    public boolean m28730k(String str) {
        return this.f6826a.get(str) != null;
    }

    /* renamed from: l */
    public void m28729l(String str, PropertyValuesHolder[] propertyValuesHolderArr) {
        this.f6827b.put(str, propertyValuesHolderArr);
    }

    /* renamed from: m */
    public void m28728m(String str, C1905i c1905i) {
        this.f6826a.put(str, c1905i);
    }

    public String toString() {
        return '\n' + C1904h.class.getName() + '{' + Integer.toHexString(System.identityHashCode(this)) + " timings: " + this.f6826a + "}\n";
    }
}
