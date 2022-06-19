package p1727n3.p1734b.p1743f;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.drawable.Drawable;
import androidx.appcompat.widget.ActionBarContainer;
/* renamed from: n3.b.f.b */
/* loaded from: classes-dex2jar.jar:n3/b/f/b.class */
public class C25492b extends Drawable {

    /* renamed from: a */
    public final ActionBarContainer f71312a;

    public C25492b(ActionBarContainer actionBarContainer) {
        this.f71312a = actionBarContainer;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        ActionBarContainer actionBarContainer = this.f71312a;
        if (actionBarContainer.f205h) {
            Drawable drawable = actionBarContainer.f204g;
            if (drawable == null) {
                return;
            }
            drawable.draw(canvas);
            return;
        }
        Drawable drawable2 = actionBarContainer.f202e;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
        ActionBarContainer actionBarContainer2 = this.f71312a;
        Drawable drawable3 = actionBarContainer2.f203f;
        if (drawable3 == null || !actionBarContainer2.f206i) {
            return;
        }
        drawable3.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        ActionBarContainer actionBarContainer = this.f71312a;
        if (actionBarContainer.f205h) {
            Drawable drawable = actionBarContainer.f204g;
            if (drawable == null) {
                return;
            }
            drawable.getOutline(outline);
            return;
        }
        Drawable drawable2 = actionBarContainer.f202e;
        if (drawable2 == null) {
            return;
        }
        drawable2.getOutline(outline);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }
}
