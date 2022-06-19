package androidx.appcompat.widget;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.drawable.Drawable;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.widget.b */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/b.class */
public class C0279b extends Drawable {

    /* renamed from: a */
    final ActionBarContainer f1231a;

    public C0279b(ActionBarContainer actionBarContainer) {
        this.f1231a = actionBarContainer;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        ActionBarContainer actionBarContainer = this.f1231a;
        if (actionBarContainer.f751k) {
            Drawable drawable = actionBarContainer.f750j;
            if (drawable == null) {
                return;
            }
            drawable.draw(canvas);
            return;
        }
        Drawable drawable2 = actionBarContainer.f748h;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
        ActionBarContainer actionBarContainer2 = this.f1231a;
        Drawable drawable3 = actionBarContainer2.f749i;
        if (drawable3 == null || !actionBarContainer2.f752l) {
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
        ActionBarContainer actionBarContainer = this.f1231a;
        if (actionBarContainer.f751k) {
            Drawable drawable = actionBarContainer.f750j;
            if (drawable == null) {
                return;
            }
            drawable.getOutline(outline);
            return;
        }
        Drawable drawable2 = actionBarContainer.f748h;
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
