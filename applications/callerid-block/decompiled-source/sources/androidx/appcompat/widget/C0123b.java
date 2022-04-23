package androidx.appcompat.widget;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.drawable.Drawable;
/* renamed from: androidx.appcompat.widget.b */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/b.class */
class C0123b extends Drawable {

    /* renamed from: a */
    final ActionBarContainer f582a;

    public C0123b(ActionBarContainer actionBarContainer) {
        this.f582a = actionBarContainer;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        ActionBarContainer actionBarContainer = this.f582a;
        if (actionBarContainer.f350i) {
            Drawable drawable = actionBarContainer.f349h;
            if (drawable != null) {
                drawable.draw(canvas);
                return;
            }
            return;
        }
        Drawable drawable2 = actionBarContainer.f347f;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
        ActionBarContainer actionBarContainer2 = this.f582a;
        Drawable drawable3 = actionBarContainer2.f348g;
        if (drawable3 != null && actionBarContainer2.f351j) {
            drawable3.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        Drawable drawable;
        ActionBarContainer actionBarContainer = this.f582a;
        if (actionBarContainer.f350i) {
            drawable = actionBarContainer.f349h;
            if (drawable == null) {
                return;
            }
        } else {
            drawable = actionBarContainer.f347f;
            if (drawable == null) {
                return;
            }
        }
        drawable.getOutline(outline);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }
}
