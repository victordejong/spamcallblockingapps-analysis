package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.core.content.p007d.C0605f;
import p020b.p021a.p022k.p023a.C1433a;
/* renamed from: androidx.appcompat.widget.e0 */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/e0.class */
public class C0286e0 {

    /* renamed from: a */
    private final Context f1253a;

    /* renamed from: b */
    private final TypedArray f1254b;

    /* renamed from: c */
    private TypedValue f1255c;

    private C0286e0(Context context, TypedArray typedArray) {
        this.f1253a = context;
        this.f1254b = typedArray;
    }

    /* renamed from: t */
    public static C0286e0 m34948t(Context context, int i, int[] iArr) {
        return new C0286e0(context, context.obtainStyledAttributes(i, iArr));
    }

    /* renamed from: u */
    public static C0286e0 m34947u(Context context, AttributeSet attributeSet, int[] iArr) {
        return new C0286e0(context, context.obtainStyledAttributes(attributeSet, iArr));
    }

    /* renamed from: v */
    public static C0286e0 m34946v(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2) {
        return new C0286e0(context, context.obtainStyledAttributes(attributeSet, iArr, i, i2));
    }

    /* renamed from: a */
    public boolean m34967a(int i, boolean z) {
        return this.f1254b.getBoolean(i, z);
    }

    /* renamed from: b */
    public int m34966b(int i, int i2) {
        return this.f1254b.getColor(i, i2);
    }

    /* renamed from: c */
    public ColorStateList m34965c(int i) {
        int resourceId;
        ColorStateList m30127c;
        return (!this.f1254b.hasValue(i) || (resourceId = this.f1254b.getResourceId(i, 0)) == 0 || (m30127c = C1433a.m30127c(this.f1253a, resourceId)) == null) ? this.f1254b.getColorStateList(i) : m30127c;
    }

    /* renamed from: d */
    public float m34964d(int i, float f) {
        return this.f1254b.getDimension(i, f);
    }

    /* renamed from: e */
    public int m34963e(int i, int i2) {
        return this.f1254b.getDimensionPixelOffset(i, i2);
    }

    /* renamed from: f */
    public int m34962f(int i, int i2) {
        return this.f1254b.getDimensionPixelSize(i, i2);
    }

    /* renamed from: g */
    public Drawable m34961g(int i) {
        int resourceId;
        return (!this.f1254b.hasValue(i) || (resourceId = this.f1254b.getResourceId(i, 0)) == 0) ? this.f1254b.getDrawable(i) : C1433a.m30126d(this.f1253a, resourceId);
    }

    /* renamed from: h */
    public Drawable m34960h(int i) {
        int resourceId;
        if (!this.f1254b.hasValue(i) || (resourceId = this.f1254b.getResourceId(i, 0)) == 0) {
            return null;
        }
        return C0287f.m34943b().m34941d(this.f1253a, resourceId, true);
    }

    /* renamed from: i */
    public float m34959i(int i, float f) {
        return this.f1254b.getFloat(i, f);
    }

    /* renamed from: j */
    public Typeface m34958j(int i, int i2, C0605f.AbstractC0608c abstractC0608c) {
        int resourceId = this.f1254b.getResourceId(i, 0);
        if (resourceId == 0) {
            return null;
        }
        if (this.f1255c == null) {
            this.f1255c = new TypedValue();
        }
        return C0605f.m33272f(this.f1253a, resourceId, this.f1255c, i2, abstractC0608c);
    }

    /* renamed from: k */
    public int m34957k(int i, int i2) {
        return this.f1254b.getInt(i, i2);
    }

    /* renamed from: l */
    public int m34956l(int i, int i2) {
        return this.f1254b.getInteger(i, i2);
    }

    /* renamed from: m */
    public int m34955m(int i, int i2) {
        return this.f1254b.getLayoutDimension(i, i2);
    }

    /* renamed from: n */
    public int m34954n(int i, int i2) {
        return this.f1254b.getResourceId(i, i2);
    }

    /* renamed from: o */
    public String m34953o(int i) {
        return this.f1254b.getString(i);
    }

    /* renamed from: p */
    public CharSequence m34952p(int i) {
        return this.f1254b.getText(i);
    }

    /* renamed from: q */
    public CharSequence[] m34951q(int i) {
        return this.f1254b.getTextArray(i);
    }

    /* renamed from: r */
    public TypedArray m34950r() {
        return this.f1254b;
    }

    /* renamed from: s */
    public boolean m34949s(int i) {
        return this.f1254b.hasValue(i);
    }

    /* renamed from: w */
    public void m34945w() {
        this.f1254b.recycle();
    }
}
