package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.appcompat.p017a.p018a.C0153a;
import androidx.core.content.res.C0804f;
/* renamed from: androidx.appcompat.widget.ab */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ab.class */
public final class C0370ab {

    /* renamed from: a */
    public final TypedArray f1491a;

    /* renamed from: b */
    private final Context f1492b;

    /* renamed from: c */
    private TypedValue f1493c;

    private C0370ab(Context context, TypedArray typedArray) {
        this.f1492b = context;
        this.f1491a = typedArray;
    }

    /* renamed from: a */
    public static C0370ab m45806a(Context context, int i, int[] iArr) {
        return new C0370ab(context, context.obtainStyledAttributes(i, iArr));
    }

    /* renamed from: a */
    public static C0370ab m45805a(Context context, AttributeSet attributeSet, int[] iArr) {
        return new C0370ab(context, context.obtainStyledAttributes(attributeSet, iArr));
    }

    /* renamed from: a */
    public static C0370ab m45804a(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2) {
        return new C0370ab(context, context.obtainStyledAttributes(attributeSet, iArr, i, i2));
    }

    /* renamed from: a */
    public final int m45809a(int i, int i2) {
        return this.f1491a.getInt(i, i2);
    }

    /* renamed from: a */
    public final Typeface m45808a(int i, int i2, C0804f.AbstractC0805a abstractC0805a) {
        int resourceId = this.f1491a.getResourceId(i, 0);
        if (resourceId == 0) {
            return null;
        }
        if (this.f1493c == null) {
            this.f1493c = new TypedValue();
        }
        return C0804f.m44467a(this.f1492b, resourceId, this.f1493c, i2, abstractC0805a);
    }

    /* renamed from: a */
    public final Drawable m45810a(int i) {
        int resourceId;
        return (!this.f1491a.hasValue(i) || (resourceId = this.f1491a.getResourceId(i, 0)) == 0) ? this.f1491a.getDrawable(i) : C0153a.m46374b(this.f1492b, resourceId);
    }

    /* renamed from: a */
    public final boolean m45807a(int i, boolean z) {
        return this.f1491a.getBoolean(i, z);
    }

    /* renamed from: b */
    public final int m45802b(int i, int i2) {
        return this.f1491a.getColor(i, i2);
    }

    /* renamed from: b */
    public final Drawable m45803b(int i) {
        int resourceId;
        if (!this.f1491a.hasValue(i) || (resourceId = this.f1491a.getResourceId(i, 0)) == 0) {
            return null;
        }
        return C0392f.m45727b().m45726b(this.f1492b, resourceId);
    }

    /* renamed from: c */
    public final int m45800c(int i, int i2) {
        return this.f1491a.getInteger(i, i2);
    }

    /* renamed from: c */
    public final CharSequence m45801c(int i) {
        return this.f1491a.getText(i);
    }

    /* renamed from: d */
    public final int m45798d(int i, int i2) {
        return this.f1491a.getDimensionPixelOffset(i, i2);
    }

    /* renamed from: d */
    public final String m45799d(int i) {
        return this.f1491a.getString(i);
    }

    /* renamed from: e */
    public final int m45796e(int i, int i2) {
        return this.f1491a.getDimensionPixelSize(i, i2);
    }

    /* renamed from: e */
    public final ColorStateList m45797e(int i) {
        int resourceId;
        ColorStateList m46375a;
        return (!this.f1491a.hasValue(i) || (resourceId = this.f1491a.getResourceId(i, 0)) == 0 || (m46375a = C0153a.m46375a(this.f1492b, resourceId)) == null) ? this.f1491a.getColorStateList(i) : m46375a;
    }

    /* renamed from: f */
    public final float m45795f(int i) {
        return this.f1491a.getDimension(i, -1.0f);
    }

    /* renamed from: f */
    public final int m45794f(int i, int i2) {
        return this.f1491a.getLayoutDimension(i, i2);
    }

    /* renamed from: g */
    public final int m45792g(int i, int i2) {
        return this.f1491a.getResourceId(i, i2);
    }

    /* renamed from: g */
    public final boolean m45793g(int i) {
        return this.f1491a.hasValue(i);
    }
}
