package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.appcompat.p006a.p007a.C0062a;
import androidx.core.p015a.p016a.C0420f;
/* renamed from: androidx.appcompat.widget.as */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/as.class */
public class C0311as {

    /* renamed from: a */
    private final Context f1281a;

    /* renamed from: b */
    private final TypedArray f1282b;

    /* renamed from: c */
    private TypedValue f1283c;

    private C0311as(Context context, TypedArray typedArray) {
        this.f1281a = context;
        this.f1282b = typedArray;
    }

    /* renamed from: a */
    public static C0311as m7158a(Context context, int i, int[] iArr) {
        return new C0311as(context, context.obtainStyledAttributes(i, iArr));
    }

    /* renamed from: a */
    public static C0311as m7157a(Context context, AttributeSet attributeSet, int[] iArr) {
        return new C0311as(context, context.obtainStyledAttributes(attributeSet, iArr));
    }

    /* renamed from: a */
    public static C0311as m7156a(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2) {
        return new C0311as(context, context.obtainStyledAttributes(attributeSet, iArr, i, i2));
    }

    /* renamed from: a */
    public float m7162a(int i, float f) {
        return this.f1282b.getFloat(i, f);
    }

    /* renamed from: a */
    public int m7161a(int i, int i2) {
        return this.f1282b.getInt(i, i2);
    }

    /* renamed from: a */
    public Typeface m7160a(int i, int i2, C0420f.AbstractC0421a abstractC0421a) {
        int resourceId = this.f1282b.getResourceId(i, 0);
        if (resourceId == 0) {
            return null;
        }
        if (this.f1283c == null) {
            this.f1283c = new TypedValue();
        }
        return C0420f.m6701a(this.f1281a, resourceId, this.f1283c, i2, abstractC0421a);
    }

    /* renamed from: a */
    public Drawable m7163a(int i) {
        int resourceId;
        return (!this.f1282b.hasValue(i) || (resourceId = this.f1282b.getResourceId(i, 0)) == 0) ? this.f1282b.getDrawable(i) : C0062a.m7983b(this.f1281a, resourceId);
    }

    /* renamed from: a */
    public void m7164a() {
        this.f1282b.recycle();
    }

    /* renamed from: a */
    public boolean m7159a(int i, boolean z) {
        return this.f1282b.getBoolean(i, z);
    }

    /* renamed from: b */
    public float m7154b(int i, float f) {
        return this.f1282b.getDimension(i, f);
    }

    /* renamed from: b */
    public int m7153b(int i, int i2) {
        return this.f1282b.getColor(i, i2);
    }

    /* renamed from: b */
    public Drawable m7155b(int i) {
        int resourceId;
        if (!this.f1282b.hasValue(i) || (resourceId = this.f1282b.getResourceId(i, 0)) == 0) {
            return null;
        }
        return C0335i.m7068b().m7070a(this.f1281a, resourceId, true);
    }

    /* renamed from: c */
    public int m7151c(int i, int i2) {
        return this.f1282b.getInteger(i, i2);
    }

    /* renamed from: c */
    public CharSequence m7152c(int i) {
        return this.f1282b.getText(i);
    }

    /* renamed from: d */
    public int m7149d(int i, int i2) {
        return this.f1282b.getDimensionPixelOffset(i, i2);
    }

    /* renamed from: d */
    public String m7150d(int i) {
        return this.f1282b.getString(i);
    }

    /* renamed from: e */
    public int m7147e(int i, int i2) {
        return this.f1282b.getDimensionPixelSize(i, i2);
    }

    /* renamed from: e */
    public ColorStateList m7148e(int i) {
        int resourceId;
        ColorStateList m7985a;
        return (!this.f1282b.hasValue(i) || (resourceId = this.f1282b.getResourceId(i, 0)) == 0 || (m7985a = C0062a.m7985a(this.f1281a, resourceId)) == null) ? this.f1282b.getColorStateList(i) : m7985a;
    }

    /* renamed from: f */
    public int m7145f(int i, int i2) {
        return this.f1282b.getLayoutDimension(i, i2);
    }

    /* renamed from: f */
    public CharSequence[] m7146f(int i) {
        return this.f1282b.getTextArray(i);
    }

    /* renamed from: g */
    public int m7143g(int i, int i2) {
        return this.f1282b.getResourceId(i, i2);
    }

    /* renamed from: g */
    public boolean m7144g(int i) {
        return this.f1282b.hasValue(i);
    }
}
