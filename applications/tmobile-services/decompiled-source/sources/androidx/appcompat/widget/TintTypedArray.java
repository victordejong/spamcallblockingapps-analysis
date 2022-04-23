package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleableRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.content.res.ResourcesCompat;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/TintTypedArray.class */
public class TintTypedArray {

    /* renamed from: a */
    private final Context f1356a;

    /* renamed from: b */
    private final TypedArray f1357b;

    /* renamed from: c */
    private TypedValue f1358c;

    private TintTypedArray(Context context, TypedArray typedArray) {
        this.f1356a = context;
        this.f1357b = typedArray;
    }

    /* renamed from: t */
    public static TintTypedArray m21246t(Context context, int i, int[] iArr) {
        return new TintTypedArray(context, context.obtainStyledAttributes(i, iArr));
    }

    /* renamed from: u */
    public static TintTypedArray m21245u(Context context, AttributeSet attributeSet, int[] iArr) {
        return new TintTypedArray(context, context.obtainStyledAttributes(attributeSet, iArr));
    }

    /* renamed from: v */
    public static TintTypedArray m21244v(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2) {
        return new TintTypedArray(context, context.obtainStyledAttributes(attributeSet, iArr, i, i2));
    }

    /* renamed from: a */
    public boolean m21265a(int i, boolean z) {
        return this.f1357b.getBoolean(i, z);
    }

    /* renamed from: b */
    public int m21264b(int i, int i2) {
        return this.f1357b.getColor(i, i2);
    }

    /* renamed from: c */
    public ColorStateList m21263c(int i) {
        int resourceId;
        ColorStateList c;
        return (!this.f1357b.hasValue(i) || (resourceId = this.f1357b.getResourceId(i, 0)) == 0 || (c = AppCompatResources.m22070c(this.f1356a, resourceId)) == null) ? this.f1357b.getColorStateList(i) : c;
    }

    /* renamed from: d */
    public float m21262d(int i, float f) {
        return this.f1357b.getDimension(i, f);
    }

    /* renamed from: e */
    public int m21261e(int i, int i2) {
        return this.f1357b.getDimensionPixelOffset(i, i2);
    }

    /* renamed from: f */
    public int m21260f(int i, int i2) {
        return this.f1357b.getDimensionPixelSize(i, i2);
    }

    /* renamed from: g */
    public Drawable m21259g(int i) {
        int resourceId;
        return (!this.f1357b.hasValue(i) || (resourceId = this.f1357b.getResourceId(i, 0)) == 0) ? this.f1357b.getDrawable(i) : AppCompatResources.m22069d(this.f1356a, resourceId);
    }

    /* renamed from: h */
    public Drawable m21258h(int i) {
        int resourceId;
        if (!this.f1357b.hasValue(i) || (resourceId = this.f1357b.getResourceId(i, 0)) == 0) {
            return null;
        }
        return AppCompatDrawableManager.m21637b().m21635d(this.f1356a, resourceId, true);
    }

    /* renamed from: i */
    public float m21257i(int i, float f) {
        return this.f1357b.getFloat(i, f);
    }

    @Nullable
    /* renamed from: j */
    public Typeface m21256j(@StyleableRes int i, int i2, @Nullable ResourcesCompat.FontCallback fontCallback) {
        int resourceId = this.f1357b.getResourceId(i, 0);
        if (resourceId == 0) {
            return null;
        }
        if (this.f1358c == null) {
            this.f1358c = new TypedValue();
        }
        return ResourcesCompat.m19611c(this.f1356a, resourceId, this.f1358c, i2, fontCallback);
    }

    /* renamed from: k */
    public int m21255k(int i, int i2) {
        return this.f1357b.getInt(i, i2);
    }

    /* renamed from: l */
    public int m21254l(int i, int i2) {
        return this.f1357b.getInteger(i, i2);
    }

    /* renamed from: m */
    public int m21253m(int i, int i2) {
        return this.f1357b.getLayoutDimension(i, i2);
    }

    /* renamed from: n */
    public int m21252n(int i, int i2) {
        return this.f1357b.getResourceId(i, i2);
    }

    /* renamed from: o */
    public String m21251o(int i) {
        return this.f1357b.getString(i);
    }

    /* renamed from: p */
    public CharSequence m21250p(int i) {
        return this.f1357b.getText(i);
    }

    /* renamed from: q */
    public CharSequence[] m21249q(int i) {
        return this.f1357b.getTextArray(i);
    }

    /* renamed from: r */
    public TypedArray m21248r() {
        return this.f1357b;
    }

    /* renamed from: s */
    public boolean m21247s(int i) {
        return this.f1357b.hasValue(i);
    }

    /* renamed from: w */
    public void m21243w() {
        this.f1357b.recycle();
    }
}
