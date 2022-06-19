package p000;

import android.util.Property;
/* renamed from: ac0 */
/* loaded from: classes-dex2jar.jar:ac0.class */
public abstract class ac0<T> extends Property<T, Float> {
    public ac0(String str) {
        super(Float.class, str);
    }

    /* renamed from: a */
    public final void set(T t, Float f) {
        m7239b(t, f.floatValue());
    }

    /* renamed from: b */
    public abstract void m7239b(T t, float f);
}
