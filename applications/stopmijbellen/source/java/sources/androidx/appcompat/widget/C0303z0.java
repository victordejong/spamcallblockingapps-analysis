package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import p076e0.C2511f;
import p097g.C2788a;
/* renamed from: androidx.appcompat.widget.z0 */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/z0.class */
public class C0303z0 {

    /* renamed from: a */
    public final Context f1163a;

    /* renamed from: b */
    public final TypedArray f1164b;

    /* renamed from: c */
    public TypedValue f1165c;

    public C0303z0(Context context, TypedArray typedArray) {
        this.f1163a = context;
        this.f1164b = typedArray;
    }

    /* renamed from: p */
    public static C0303z0 m8384p(Context context, AttributeSet attributeSet, int[] iArr) {
        return new C0303z0(context, context.obtainStyledAttributes(attributeSet, iArr));
    }

    /* renamed from: q */
    public static C0303z0 m8383q(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2) {
        return new C0303z0(context, context.obtainStyledAttributes(attributeSet, iArr, i, i2));
    }

    /* renamed from: a */
    public boolean m8399a(int i, boolean z) {
        return this.f1164b.getBoolean(i, z);
    }

    /* renamed from: b */
    public int m8398b(int i, int i2) {
        return this.f1164b.getColor(i, i2);
    }

    /* renamed from: c */
    public ColorStateList m8397c(int i) {
        int resourceId;
        ColorStateList m3016a;
        return (!this.f1164b.hasValue(i) || (resourceId = this.f1164b.getResourceId(i, 0)) == 0 || (m3016a = C2788a.m3016a(this.f1163a, resourceId)) == null) ? this.f1164b.getColorStateList(i) : m3016a;
    }

    /* renamed from: d */
    public float m8396d(int i, float f) {
        return this.f1164b.getDimension(i, f);
    }

    /* renamed from: e */
    public int m8395e(int i, int i2) {
        return this.f1164b.getDimensionPixelOffset(i, i2);
    }

    /* renamed from: f */
    public int m8394f(int i, int i2) {
        return this.f1164b.getDimensionPixelSize(i, i2);
    }

    /* renamed from: g */
    public Drawable m8393g(int i) {
        int resourceId;
        return (!this.f1164b.hasValue(i) || (resourceId = this.f1164b.getResourceId(i, 0)) == 0) ? this.f1164b.getDrawable(i) : C2788a.m3015b(this.f1163a, resourceId);
    }

    /* renamed from: h */
    public Drawable m8392h(int i) {
        int resourceId;
        Drawable m8443g;
        if (!this.f1164b.hasValue(i) || (resourceId = this.f1164b.getResourceId(i, 0)) == 0) {
            return null;
        }
        C0242j m8486a = C0242j.m8486a();
        Context context = this.f1163a;
        synchronized (m8486a) {
            m8443g = m8486a.f987a.m8443g(context, resourceId, true);
        }
        return m8443g;
    }

    /* renamed from: i */
    public Typeface m8391i(int i, int i2, C2511f.AbstractC2514c abstractC2514c) {
        int resourceId = this.f1164b.getResourceId(i, 0);
        if (resourceId == 0) {
            return null;
        }
        if (this.f1165c == null) {
            this.f1165c = new TypedValue();
        }
        Context context = this.f1163a;
        TypedValue typedValue = this.f1165c;
        ThreadLocal<TypedValue> threadLocal = C2511f.f8775a;
        return context.isRestricted() ? null : C2511f.m3494b(context, resourceId, typedValue, i2, abstractC2514c, null, true, false);
    }

    /* renamed from: j */
    public int m8390j(int i, int i2) {
        return this.f1164b.getInt(i, i2);
    }

    /* renamed from: k */
    public int m8389k(int i, int i2) {
        return this.f1164b.getLayoutDimension(i, i2);
    }

    /* renamed from: l */
    public int m8388l(int i, int i2) {
        return this.f1164b.getResourceId(i, i2);
    }

    /* renamed from: m */
    public String m8387m(int i) {
        return this.f1164b.getString(i);
    }

    /* renamed from: n */
    public CharSequence m8386n(int i) {
        return this.f1164b.getText(i);
    }

    /* renamed from: o */
    public boolean m8385o(int i) {
        return this.f1164b.hasValue(i);
    }
}
