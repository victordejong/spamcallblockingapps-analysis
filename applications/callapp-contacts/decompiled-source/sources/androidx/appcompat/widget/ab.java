package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.appcompat.a.a.a;
import androidx.core.content.res.f;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ab.class */
public final class ab {

    /* renamed from: a  reason: collision with root package name */
    public final TypedArray f1044a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f1045b;

    /* renamed from: c  reason: collision with root package name */
    private TypedValue f1046c;

    private ab(Context context, TypedArray typedArray) {
        this.f1045b = context;
        this.f1044a = typedArray;
    }

    public static ab a(Context context, int i, int[] iArr) {
        return new ab(context, context.obtainStyledAttributes(i, iArr));
    }

    public static ab a(Context context, AttributeSet attributeSet, int[] iArr) {
        return new ab(context, context.obtainStyledAttributes(attributeSet, iArr));
    }

    public static ab a(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2) {
        return new ab(context, context.obtainStyledAttributes(attributeSet, iArr, i, i2));
    }

    public final int a(int i, int i2) {
        return this.f1044a.getInt(i, i2);
    }

    public final Typeface a(int i, int i2, f.a aVar) {
        int resourceId = this.f1044a.getResourceId(i, 0);
        if (resourceId == 0) {
            return null;
        }
        if (this.f1046c == null) {
            this.f1046c = new TypedValue();
        }
        return f.a(this.f1045b, resourceId, this.f1046c, i2, aVar);
    }

    public final Drawable a(int i) {
        int resourceId;
        return (!this.f1044a.hasValue(i) || (resourceId = this.f1044a.getResourceId(i, 0)) == 0) ? this.f1044a.getDrawable(i) : a.b(this.f1045b, resourceId);
    }

    public final boolean a(int i, boolean z) {
        return this.f1044a.getBoolean(i, z);
    }

    public final int b(int i, int i2) {
        return this.f1044a.getColor(i, i2);
    }

    public final Drawable b(int i) {
        int resourceId;
        if (!this.f1044a.hasValue(i) || (resourceId = this.f1044a.getResourceId(i, 0)) == 0) {
            return null;
        }
        return f.b().b(this.f1045b, resourceId);
    }

    public final int c(int i, int i2) {
        return this.f1044a.getInteger(i, i2);
    }

    public final CharSequence c(int i) {
        return this.f1044a.getText(i);
    }

    public final int d(int i, int i2) {
        return this.f1044a.getDimensionPixelOffset(i, i2);
    }

    public final String d(int i) {
        return this.f1044a.getString(i);
    }

    public final int e(int i, int i2) {
        return this.f1044a.getDimensionPixelSize(i, i2);
    }

    public final ColorStateList e(int i) {
        int resourceId;
        ColorStateList a2;
        return (!this.f1044a.hasValue(i) || (resourceId = this.f1044a.getResourceId(i, 0)) == 0 || (a2 = a.a(this.f1045b, resourceId)) == null) ? this.f1044a.getColorStateList(i) : a2;
    }

    public final float f(int i) {
        return this.f1044a.getDimension(i, -1.0f);
    }

    public final int f(int i, int i2) {
        return this.f1044a.getLayoutDimension(i, i2);
    }

    public final int g(int i, int i2) {
        return this.f1044a.getResourceId(i, i2);
    }

    public final boolean g(int i) {
        return this.f1044a.hasValue(i);
    }
}
