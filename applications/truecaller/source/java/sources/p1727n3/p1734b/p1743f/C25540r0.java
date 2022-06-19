package p1727n3.p1734b.p1743f;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import p1727n3.p1734b.p1736b.p1737a.C25440a;
import p1727n3.p1807k.p1809b.p1811d.C26488h;
/* renamed from: n3.b.f.r0 */
/* loaded from: classes-dex2jar.jar:n3/b/f/r0.class */
public class C25540r0 {

    /* renamed from: a */
    public final Context f71465a;

    /* renamed from: b */
    public final TypedArray f71466b;

    /* renamed from: c */
    public TypedValue f71467c;

    public C25540r0(Context context, TypedArray typedArray) {
        this.f71465a = context;
        this.f71466b = typedArray;
    }

    /* renamed from: p */
    public static C25540r0 m3307p(Context context, AttributeSet attributeSet, int[] iArr) {
        return new C25540r0(context, context.obtainStyledAttributes(attributeSet, iArr));
    }

    /* renamed from: q */
    public static C25540r0 m3306q(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2) {
        return new C25540r0(context, context.obtainStyledAttributes(attributeSet, iArr, i, i2));
    }

    /* renamed from: a */
    public boolean m3322a(int i, boolean z) {
        return this.f71466b.getBoolean(i, z);
    }

    /* renamed from: b */
    public int m3321b(int i, int i2) {
        return this.f71466b.getColor(i, i2);
    }

    /* renamed from: c */
    public ColorStateList m3320c(int i) {
        int resourceId;
        if (this.f71466b.hasValue(i) && (resourceId = this.f71466b.getResourceId(i, 0)) != 0) {
            Context context = this.f71465a;
            ThreadLocal<TypedValue> threadLocal = C25440a.f71017a;
            ColorStateList colorStateList = context.getColorStateList(resourceId);
            if (colorStateList != null) {
                return colorStateList;
            }
        }
        return this.f71466b.getColorStateList(i);
    }

    /* renamed from: d */
    public float m3319d(int i, float f) {
        return this.f71466b.getDimension(i, f);
    }

    /* renamed from: e */
    public int m3318e(int i, int i2) {
        return this.f71466b.getDimensionPixelOffset(i, i2);
    }

    /* renamed from: f */
    public int m3317f(int i, int i2) {
        return this.f71466b.getDimensionPixelSize(i, i2);
    }

    /* renamed from: g */
    public Drawable m3316g(int i) {
        int resourceId;
        return (!this.f71466b.hasValue(i) || (resourceId = this.f71466b.getResourceId(i, 0)) == 0) ? this.f71466b.getDrawable(i) : C25440a.m3540a(this.f71465a, resourceId);
    }

    /* renamed from: h */
    public Drawable m3315h(int i) {
        int resourceId;
        Drawable m3354g;
        if (!this.f71466b.hasValue(i) || (resourceId = this.f71466b.getResourceId(i, 0)) == 0) {
            return null;
        }
        C25502e m3380a = C25502e.m3380a();
        Context context = this.f71465a;
        synchronized (m3380a) {
            m3354g = m3380a.f71365a.m3354g(context, resourceId, true);
        }
        return m3354g;
    }

    /* renamed from: i */
    public Typeface m3314i(int i, int i2, C26488h.AbstractC26489a abstractC26489a) {
        int resourceId = this.f71466b.getResourceId(i, 0);
        if (resourceId == 0) {
            return null;
        }
        if (this.f71467c == null) {
            this.f71467c = new TypedValue();
        }
        Context context = this.f71465a;
        TypedValue typedValue = this.f71467c;
        ThreadLocal<TypedValue> threadLocal = C26488h.f74265a;
        return context.isRestricted() ? null : C26488h.m1764b(context, resourceId, typedValue, i2, abstractC26489a, null, true, false);
    }

    /* renamed from: j */
    public int m3313j(int i, int i2) {
        return this.f71466b.getInt(i, i2);
    }

    /* renamed from: k */
    public int m3312k(int i, int i2) {
        return this.f71466b.getLayoutDimension(i, i2);
    }

    /* renamed from: l */
    public int m3311l(int i, int i2) {
        return this.f71466b.getResourceId(i, i2);
    }

    /* renamed from: m */
    public String m3310m(int i) {
        return this.f71466b.getString(i);
    }

    /* renamed from: n */
    public CharSequence m3309n(int i) {
        return this.f71466b.getText(i);
    }

    /* renamed from: o */
    public boolean m3308o(int i) {
        return this.f71466b.hasValue(i);
    }
}
