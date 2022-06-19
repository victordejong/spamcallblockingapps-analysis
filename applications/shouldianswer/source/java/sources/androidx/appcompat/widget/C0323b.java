package androidx.appcompat.widget;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.drawable.Drawable;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.widget.b */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/b.class */
public class C0323b extends Drawable {

    /* renamed from: a */
    final ActionBarContainer f1329a;

    public C0323b(ActionBarContainer actionBarContainer) {
        this.f1329a = actionBarContainer;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f1329a.f808d) {
            if (this.f1329a.f807c == null) {
                return;
            }
            this.f1329a.f807c.draw(canvas);
            return;
        }
        if (this.f1329a.f805a != null) {
            this.f1329a.f805a.draw(canvas);
        }
        if (this.f1329a.f806b == null || !this.f1329a.f809e) {
            return;
        }
        this.f1329a.f806b.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        if (this.f1329a.f808d) {
            if (this.f1329a.f807c == null) {
                return;
            }
            this.f1329a.f807c.getOutline(outline);
        } else if (this.f1329a.f805a == null) {
        } else {
            this.f1329a.f805a.getOutline(outline);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }
}
