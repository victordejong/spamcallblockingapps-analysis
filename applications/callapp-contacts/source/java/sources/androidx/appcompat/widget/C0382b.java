package androidx.appcompat.widget;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.drawable.Drawable;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.widget.b */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/b.class */
public final class C0382b extends Drawable {

    /* renamed from: a */
    final ActionBarContainer f1539a;

    public C0382b(ActionBarContainer actionBarContainer) {
        this.f1539a = actionBarContainer;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        if (this.f1539a.f1000e) {
            if (this.f1539a.f999d == null) {
                return;
            }
            this.f1539a.f999d.draw(canvas);
            return;
        }
        if (this.f1539a.f997b != null) {
            this.f1539a.f997b.draw(canvas);
        }
        if (this.f1539a.f998c == null || !this.f1539a.f1001f) {
            return;
        }
        this.f1539a.f998c.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        if (this.f1539a.f1000e) {
            if (this.f1539a.f999d == null) {
                return;
            }
            this.f1539a.f999d.getOutline(outline);
        } else if (this.f1539a.f997b == null) {
        } else {
            this.f1539a.f997b.getOutline(outline);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
    }
}
