package androidx.appcompat.widget;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.drawable.Drawable;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.widget.b */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/b.class */
public class C0329b extends Drawable {

    /* renamed from: a */
    final ActionBarContainer f1386a;

    public C0329b(ActionBarContainer actionBarContainer) {
        this.f1386a = actionBarContainer;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f1386a.f889d) {
            if (this.f1386a.f888c == null) {
                return;
            }
            this.f1386a.f888c.draw(canvas);
            return;
        }
        if (this.f1386a.f886a != null) {
            this.f1386a.f886a.draw(canvas);
        }
        if (this.f1386a.f887b == null || !this.f1386a.f890e) {
            return;
        }
        this.f1386a.f887b.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        if (this.f1386a.f889d) {
            if (this.f1386a.f888c == null) {
                return;
            }
            this.f1386a.f888c.getOutline(outline);
        } else if (this.f1386a.f886a == null) {
        } else {
            this.f1386a.f886a.getOutline(outline);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }
}
