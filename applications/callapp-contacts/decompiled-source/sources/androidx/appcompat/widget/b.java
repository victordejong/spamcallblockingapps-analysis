package androidx.appcompat.widget;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.drawable.Drawable;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/b.class */
final class b extends Drawable {

    /* renamed from: a  reason: collision with root package name */
    final ActionBarContainer f1069a;

    public b(ActionBarContainer actionBarContainer) {
        this.f1069a = actionBarContainer;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        if (!this.f1069a.e) {
            if (this.f1069a.f845b != null) {
                this.f1069a.f845b.draw(canvas);
            }
            if (this.f1069a.f846c != null && this.f1069a.f) {
                this.f1069a.f846c.draw(canvas);
            }
        } else if (this.f1069a.f847d != null) {
            this.f1069a.f847d.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        if (this.f1069a.e) {
            if (this.f1069a.f847d != null) {
                this.f1069a.f847d.getOutline(outline);
            }
        } else if (this.f1069a.f845b != null) {
            this.f1069a.f845b.getOutline(outline);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
    }
}
