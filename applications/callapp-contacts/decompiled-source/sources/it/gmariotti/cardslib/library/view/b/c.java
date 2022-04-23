package it.gmariotti.cardslib.library.view.b;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageButton;
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/b/c.class */
public class c extends b {
    public c(Context context) {
        super(context);
    }

    @Override // it.gmariotti.cardslib.library.view.b.b, it.gmariotti.cardslib.library.view.b.a
    public final void a(View view, Drawable drawable) {
        if (view != null) {
            view.setBackground(drawable);
        }
    }

    @Override // it.gmariotti.cardslib.library.view.b.b, it.gmariotti.cardslib.library.view.b.a
    public void a(ImageButton imageButton, int i) {
        a(imageButton, this.f36465a.getResources().getDrawable(i));
    }
}
