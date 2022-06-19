package pl.droidsonroids.gif;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.widget.TextView;
import java.io.IOException;
import pl.droidsonroids.gif.C9698e;
/* loaded from: classes2-dex2jar.jar:pl/droidsonroids/gif/GifTextView.class */
public class GifTextView extends TextView {

    /* renamed from: d */
    private C9698e.C9700b f40926d;

    public GifTextView(Context context) {
        super(context);
    }

    public GifTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m85c(attributeSet, 0, 0);
    }

    public GifTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m85c(attributeSet, i, 0);
    }

    /* renamed from: a */
    private void m87a() {
        if (this.f40926d.f40971b < 0) {
            return;
        }
        for (Drawable drawable : getCompoundDrawables()) {
            C9698e.m48a(this.f40926d.f40971b, drawable);
        }
        for (Drawable drawable2 : getCompoundDrawablesRelative()) {
            C9698e.m48a(this.f40926d.f40971b, drawable2);
        }
        C9698e.m48a(this.f40926d.f40971b, getBackground());
    }

    /* renamed from: b */
    private Drawable m86b(int i) {
        if (i == 0) {
            return null;
        }
        Resources resources = getResources();
        String resourceTypeName = resources.getResourceTypeName(i);
        if (!isInEditMode() && C9698e.f40967a.contains(resourceTypeName)) {
            try {
                return new C9692c(resources, i);
            } catch (Resources.NotFoundException | IOException e) {
            }
        }
        return Build.VERSION.SDK_INT >= 21 ? resources.getDrawable(i, getContext().getTheme()) : resources.getDrawable(i);
    }

    /* renamed from: c */
    private void m85c(AttributeSet attributeSet, int i, int i2) {
        Drawable drawable;
        Drawable drawable2;
        if (attributeSet != null) {
            Drawable m86b = m86b(attributeSet.getAttributeResourceValue("http://schemas.android.com/apk/res/android", "drawableLeft", 0));
            Drawable m86b2 = m86b(attributeSet.getAttributeResourceValue("http://schemas.android.com/apk/res/android", "drawableTop", 0));
            Drawable m86b3 = m86b(attributeSet.getAttributeResourceValue("http://schemas.android.com/apk/res/android", "drawableRight", 0));
            Drawable m86b4 = m86b(attributeSet.getAttributeResourceValue("http://schemas.android.com/apk/res/android", "drawableBottom", 0));
            Drawable m86b5 = m86b(attributeSet.getAttributeResourceValue("http://schemas.android.com/apk/res/android", "drawableStart", 0));
            Drawable m86b6 = m86b(attributeSet.getAttributeResourceValue("http://schemas.android.com/apk/res/android", "drawableEnd", 0));
            if (getLayoutDirection() == 0) {
                Drawable drawable3 = m86b5 == null ? m86b : m86b5;
                drawable2 = drawable3;
                drawable = m86b6;
                if (m86b6 == null) {
                    drawable = m86b3;
                    drawable2 = drawable3;
                }
            } else {
                if (m86b5 == null) {
                    m86b5 = m86b3;
                }
                Drawable drawable4 = m86b6;
                if (m86b6 == null) {
                    drawable4 = m86b;
                }
                drawable2 = m86b5;
                drawable = drawable4;
            }
            setCompoundDrawablesRelativeWithIntrinsicBounds(drawable2, m86b2, drawable, m86b4);
            setBackground(m86b(attributeSet.getAttributeResourceValue("http://schemas.android.com/apk/res/android", "background", 0)));
            this.f40926d = new C9698e.C9700b(this, attributeSet, i, i2);
            m87a();
        }
        this.f40926d = new C9698e.C9700b();
    }

    /* renamed from: d */
    private static void m84d(Drawable[] drawableArr, boolean z) {
        for (Drawable drawable : drawableArr) {
            if (drawable != null) {
                drawable.setVisible(z, false);
            }
        }
    }

    private void setCompoundDrawablesVisible(boolean z) {
        m84d(getCompoundDrawables(), z);
        m84d(getCompoundDrawablesRelative(), z);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        setCompoundDrawablesVisible(true);
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setCompoundDrawablesVisible(false);
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof GifViewSavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        GifViewSavedState gifViewSavedState = (GifViewSavedState) parcelable;
        super.onRestoreInstanceState(gifViewSavedState.getSuperState());
        Drawable[] compoundDrawables = getCompoundDrawables();
        gifViewSavedState.m71a(compoundDrawables[0], 0);
        gifViewSavedState.m71a(compoundDrawables[1], 1);
        gifViewSavedState.m71a(compoundDrawables[2], 2);
        gifViewSavedState.m71a(compoundDrawables[3], 3);
        Drawable[] compoundDrawablesRelative = getCompoundDrawablesRelative();
        gifViewSavedState.m71a(compoundDrawablesRelative[0], 4);
        gifViewSavedState.m71a(compoundDrawablesRelative[2], 5);
        gifViewSavedState.m71a(getBackground(), 6);
    }

    @Override // android.widget.TextView, android.view.View
    public Parcelable onSaveInstanceState() {
        Drawable[] drawableArr = new Drawable[7];
        if (this.f40926d.f40970a) {
            Drawable[] compoundDrawables = getCompoundDrawables();
            System.arraycopy(compoundDrawables, 0, drawableArr, 0, compoundDrawables.length);
            Drawable[] compoundDrawablesRelative = getCompoundDrawablesRelative();
            drawableArr[4] = compoundDrawablesRelative[0];
            drawableArr[5] = compoundDrawablesRelative[2];
            drawableArr[6] = getBackground();
        }
        return new GifViewSavedState(super.onSaveInstanceState(), drawableArr);
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        setBackground(m86b(i));
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        setCompoundDrawablesRelativeWithIntrinsicBounds(m86b(i), m86b(i2), m86b(i3), m86b(i4));
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        setCompoundDrawablesWithIntrinsicBounds(m86b(i), m86b(i2), m86b(i3), m86b(i4));
    }

    public void setFreezesAnimation(boolean z) {
        this.f40926d.f40970a = z;
    }
}
