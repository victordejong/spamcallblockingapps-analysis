package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.core.content.p003c.C0275f;
import d.a.k.a.a;
/* renamed from: androidx.appcompat.widget.d0 */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/d0.class */
public class C0127d0 {

    /* renamed from: a */
    private final Context f593a;

    /* renamed from: b */
    private final TypedArray f594b;

    /* renamed from: c */
    private TypedValue f595c;

    private C0127d0(Context context, TypedArray typedArray) {
        this.f593a = context;
        this.f594b = typedArray;
    }

    /* renamed from: t */
    public static C0127d0 m14620t(Context context, int i, int[] iArr) {
        return new C0127d0(context, context.obtainStyledAttributes(i, iArr));
    }

    /* renamed from: u */
    public static C0127d0 m14619u(Context context, AttributeSet attributeSet, int[] iArr) {
        return new C0127d0(context, context.obtainStyledAttributes(attributeSet, iArr));
    }

    /* renamed from: v */
    public static C0127d0 m14618v(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2) {
        return new C0127d0(context, context.obtainStyledAttributes(attributeSet, iArr, i, i2));
    }

    /* renamed from: a */
    public boolean m14639a(int i, boolean z) {
        return this.f594b.getBoolean(i, z);
    }

    /* renamed from: b */
    public int m14638b(int i, int i2) {
        return this.f594b.getColor(i, i2);
    }

    /* renamed from: c */
    public ColorStateList m14637c(int i) {
        int resourceId;
        ColorStateList c;
        return (!this.f594b.hasValue(i) || (resourceId = this.f594b.getResourceId(i, 0)) == 0 || (c = a.c(this.f593a, resourceId)) == null) ? this.f594b.getColorStateList(i) : c;
    }

    /* renamed from: d */
    public float m14636d(int i, float f) {
        return this.f594b.getDimension(i, f);
    }

    /* renamed from: e */
    public int m14635e(int i, int i2) {
        return this.f594b.getDimensionPixelOffset(i, i2);
    }

    /* renamed from: f */
    public int m14634f(int i, int i2) {
        return this.f594b.getDimensionPixelSize(i, i2);
    }

    /* renamed from: g */
    public Drawable m14633g(int i) {
        int resourceId;
        return (!this.f594b.hasValue(i) || (resourceId = this.f594b.getResourceId(i, 0)) == 0) ? this.f594b.getDrawable(i) : a.d(this.f593a, resourceId);
    }

    /* renamed from: h */
    public Drawable m14632h(int i) {
        int resourceId;
        if (!this.f594b.hasValue(i) || (resourceId = this.f594b.getResourceId(i, 0)) == 0) {
            return null;
        }
        return C0129f.m14607b().m14605d(this.f593a, resourceId, true);
    }

    /* renamed from: i */
    public float m14631i(int i, float f) {
        return this.f594b.getFloat(i, f);
    }

    /* renamed from: j */
    public Typeface m14630j(int i, int i2, C0275f.AbstractC0276a abstractC0276a) {
        int resourceId = this.f594b.getResourceId(i, 0);
        if (resourceId == 0) {
            return null;
        }
        if (this.f595c == null) {
            this.f595c = new TypedValue();
        }
        return C0275f.m13501c(this.f593a, resourceId, this.f595c, i2, abstractC0276a);
    }

    /* renamed from: k */
    public int m14629k(int i, int i2) {
        return this.f594b.getInt(i, i2);
    }

    /* renamed from: l */
    public int m14628l(int i, int i2) {
        return this.f594b.getInteger(i, i2);
    }

    /* renamed from: m */
    public int m14627m(int i, int i2) {
        return this.f594b.getLayoutDimension(i, i2);
    }

    /* renamed from: n */
    public int m14626n(int i, int i2) {
        return this.f594b.getResourceId(i, i2);
    }

    /* renamed from: o */
    public String m14625o(int i) {
        return this.f594b.getString(i);
    }

    /* renamed from: p */
    public CharSequence m14624p(int i) {
        return this.f594b.getText(i);
    }

    /* renamed from: q */
    public CharSequence[] m14623q(int i) {
        return this.f594b.getTextArray(i);
    }

    /* renamed from: r */
    public TypedArray m14622r() {
        return this.f594b;
    }

    /* renamed from: s */
    public boolean m14621s(int i) {
        return this.f594b.hasValue(i);
    }

    /* renamed from: w */
    public void m14617w() {
        this.f594b.recycle();
    }
}
