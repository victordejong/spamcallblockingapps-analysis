package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.appcompat.p008a.p009a.C0094a;
import androidx.core.p017a.p018a.C0449f;
/* renamed from: androidx.appcompat.widget.ap */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ap.class */
public class C0317ap {

    /* renamed from: a */
    private final Context f1338a;

    /* renamed from: b */
    private final TypedArray f1339b;

    /* renamed from: c */
    private TypedValue f1340c;

    private C0317ap(Context context, TypedArray typedArray) {
        this.f1338a = context;
        this.f1339b = typedArray;
    }

    /* renamed from: a */
    public static C0317ap m21435a(Context context, int i, int[] iArr) {
        return new C0317ap(context, context.obtainStyledAttributes(i, iArr));
    }

    /* renamed from: a */
    public static C0317ap m21434a(Context context, AttributeSet attributeSet, int[] iArr) {
        return new C0317ap(context, context.obtainStyledAttributes(attributeSet, iArr));
    }

    /* renamed from: a */
    public static C0317ap m21433a(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2) {
        return new C0317ap(context, context.obtainStyledAttributes(attributeSet, iArr, i, i2));
    }

    /* renamed from: a */
    public float m21439a(int i, float f) {
        return this.f1339b.getFloat(i, f);
    }

    /* renamed from: a */
    public int m21438a(int i, int i2) {
        return this.f1339b.getInt(i, i2);
    }

    /* renamed from: a */
    public Typeface m21437a(int i, int i2, C0449f.AbstractC0450a abstractC0450a) {
        Typeface m20847a;
        int resourceId = this.f1339b.getResourceId(i, 0);
        if (resourceId == 0) {
            m20847a = null;
        } else {
            if (this.f1340c == null) {
                this.f1340c = new TypedValue();
            }
            m20847a = C0449f.m20847a(this.f1338a, resourceId, this.f1340c, i2, abstractC0450a);
        }
        return m20847a;
    }

    /* renamed from: a */
    public Drawable m21440a(int i) {
        int resourceId;
        return (!this.f1339b.hasValue(i) || (resourceId = this.f1339b.getResourceId(i, 0)) == 0) ? this.f1339b.getDrawable(i) : C0094a.m22275b(this.f1338a, resourceId);
    }

    /* renamed from: a */
    public void m21441a() {
        this.f1339b.recycle();
    }

    /* renamed from: a */
    public boolean m21436a(int i, boolean z) {
        return this.f1339b.getBoolean(i, z);
    }

    /* renamed from: b */
    public float m21431b(int i, float f) {
        return this.f1339b.getDimension(i, f);
    }

    /* renamed from: b */
    public int m21430b(int i, int i2) {
        return this.f1339b.getColor(i, i2);
    }

    /* renamed from: b */
    public Drawable m21432b(int i) {
        int resourceId;
        return (!this.f1339b.hasValue(i) || (resourceId = this.f1339b.getResourceId(i, 0)) == 0) ? null : C0350i.m21307b().m21309a(this.f1338a, resourceId, true);
    }

    /* renamed from: c */
    public int m21428c(int i, int i2) {
        return this.f1339b.getInteger(i, i2);
    }

    /* renamed from: c */
    public CharSequence m21429c(int i) {
        return this.f1339b.getText(i);
    }

    /* renamed from: d */
    public int m21426d(int i, int i2) {
        return this.f1339b.getDimensionPixelOffset(i, i2);
    }

    /* renamed from: d */
    public String m21427d(int i) {
        return this.f1339b.getString(i);
    }

    /* renamed from: e */
    public int m21424e(int i, int i2) {
        return this.f1339b.getDimensionPixelSize(i, i2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0023, code lost:
        if (r7 != null) goto L8;
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.content.res.ColorStateList m21425e(int r5) {
        /*
            r4 = this;
            r0 = r4
            android.content.res.TypedArray r0 = r0.f1339b
            r1 = r5
            boolean r0 = r0.hasValue(r1)
            if (r0 == 0) goto L28
            r0 = r4
            android.content.res.TypedArray r0 = r0.f1339b
            r1 = r5
            r2 = 0
            int r0 = r0.getResourceId(r1, r2)
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L28
            r0 = r4
            android.content.Context r0 = r0.f1338a
            r1 = r6
            android.content.res.ColorStateList r0 = androidx.appcompat.p008a.p009a.C0094a.m22277a(r0, r1)
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L28
        L26:
            r0 = r7
            return r0
        L28:
            r0 = r4
            android.content.res.TypedArray r0 = r0.f1339b
            r1 = r5
            android.content.res.ColorStateList r0 = r0.getColorStateList(r1)
            r7 = r0
            goto L26
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0317ap.m21425e(int):android.content.res.ColorStateList");
    }

    /* renamed from: f */
    public int m21422f(int i, int i2) {
        return this.f1339b.getLayoutDimension(i, i2);
    }

    /* renamed from: f */
    public CharSequence[] m21423f(int i) {
        return this.f1339b.getTextArray(i);
    }

    /* renamed from: g */
    public int m21420g(int i, int i2) {
        return this.f1339b.getResourceId(i, i2);
    }

    /* renamed from: g */
    public boolean m21421g(int i) {
        return this.f1339b.hasValue(i);
    }
}
