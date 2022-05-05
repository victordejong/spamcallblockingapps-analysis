package androidx.appcompat.widget;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarBackgroundDrawable.class */
class ActionBarBackgroundDrawable extends Drawable {

    /* renamed from: a */
    final ActionBarContainer f756a;

    public ActionBarBackgroundDrawable(ActionBarContainer actionBarContainer) {
        this.f756a = actionBarContainer;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        ActionBarContainer actionBarContainer = this.f756a;
        if (actionBarContainer.f764m) {
            Drawable drawable = actionBarContainer.f763l;
            if (drawable != null) {
                drawable.draw(canvas);
                return;
            }
            return;
        }
        Drawable drawable2 = actionBarContainer.f761j;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
        ActionBarContainer actionBarContainer2 = this.f756a;
        Drawable drawable3 = actionBarContainer2.f762k;
        if (drawable3 != null && actionBarContainer2.f765n) {
            drawable3.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    @RequiresApi
    public void getOutline(@NonNull Outline outline) {
        ActionBarContainer actionBarContainer = this.f756a;
        if (actionBarContainer.f764m) {
            Drawable drawable = actionBarContainer.f763l;
            if (drawable != null) {
                drawable.getOutline(outline);
                return;
            }
            return;
        }
        Drawable drawable2 = actionBarContainer.f761j;
        if (drawable2 != null) {
            drawable2.getOutline(outline);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }
}
