package p000;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import org.xmlpull.v1.XmlPullParser;
/* renamed from: cc0 */
/* loaded from: classes-dex2jar.jar:cc0.class */
public abstract class cc0 extends Drawable {

    /* renamed from: a */
    public ColorFilter f2344a;

    @Override // android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return 255;
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        return this.f2344a;
    }

    @Override // android.graphics.drawable.Drawable
    public void getHotspotBounds(Rect rect) {
        rect.set(getBounds());
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f2344a = colorFilter;
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspot(float f, float f2) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspotBounds(int i, int i2, int i3, int i4) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setTint(int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
    }
}
